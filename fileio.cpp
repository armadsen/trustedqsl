/* 
    TrustedQSL/LoTW client and PKI Library
    Copyright (C) 2001  Darryl Wagoner WA1GON wa1gon@arrl.net and
                     ARRL

    This library is free software; you can redistribute it and/or
    modify it under the terms of the Open License packaged with
    the source.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

    You should have received a copy of the Open License see 
    http://www.trustedQSL.org/ or contact wa1gon@arrl.net.

*/

#include <stdio.h>
#include <sys/types.h>
#ifdef __BCPLUSPLUS__
#include <io.h>
#else
#include <unistd.h>
#endif
#include <fcntl.h>

#include <sys/stat.h>
#include <openssl/sha.h>
#include <openssl/dsa.h>
#include <openssl/bio.h>
#include <openssl/bn.h>
#include <string.h>

#include "tqsl.h"
#include "sign.h"

static char cvsID[] = "$Id$";

#ifndef __CYGWIN__
extern int errno;
#endif

unsigned
ntoh (unsigned long x)
{
#if BYTE_ORDER == LITTLE_ENDIAN
  x = (x << 24) | ((x & 0xff00) << 8) | ((x & 0xff0000) >> 8) | (x >> 24);
#endif

  return x;
}

unsigned long
hton (unsigned long x)

{
#if BYTE_ORDER == LITTLE_ENDIAN
  x = (x << 24) | ((x & 0xff00) << 8) | ((x & 0xff0000) >> 8) | (x >> 24);
#endif

  return x;
}

// read public key file which has a type 1 format
// return NULL on error
//
TqslPublicKey *readPubKey(char *fname,char *typ)
{

  char		buf[500];
  TqslPublicKey	*retbuf;
  int		rc;
  int		fd;

#ifndef __BCPLUSPLUS__
  cvsID = cvsID;  // avoid warnigns
#endif

  fd = open(fname,O_RDONLY);
  if (fd < 0)
    return(NULL);

  rc = read(fd,buf,500);
  close(fd);  // we are done with it.
  if (rc <= 0)
    {
      return(NULL);
    }
  
  switch (buf[0])
    {
    case '1':
      retbuf = new TqslPublicKey;
      memcpy(retbuf,buf,sizeof(TqslPublicKey));

      return(retbuf);
    }
  return(NULL);
}
  
// write a binary signature file.  Maybe not be used any
// more.  returns negitive number on error or number of
// bytes written

int writeSign(char *fname,unsigned char *sig,int len)
{

  int	fd;
  fd = open(fname,O_WRONLY|O_CREAT|O_TRUNC,0644);
  if (fd < 0)
    return(-1);

  int rc;
  rc = write(fd,sig,len);
  close(fd);

  if (rc != len)
    return(-2);
  return(rc);
}

// writes an hex encode ascii signature file.
// return number of bytes writing or negitive on error
//
int writeSignHex(char *fname, unsigned char *sig,int len)
{
  
  int	fd;

  fd = open(fname,O_WRONLY|O_CREAT|O_TRUNC,0644);
  if (fd < 0)
    return(-1);

  char *t;
  t = tqslBin2Hex(sig,len);
  write(fd,t,len*2);
  close(fd);
  free(t);
  return(len*2);
}

// reads an hex encode ascii file stores results in sig.
// sig must be large enough to contain the the binary
// signature.  It should be around 42 bytes.
// Returns the number of bytes in sig or -1 for error.

int readSignHex(char *fname,unsigned char *sig,int len)
{
  char	newName[200];
  char  txtSign[200];
  int	fd;

  sprintf(newName,"%s.asig",fname);
  fd = open(newName,O_RDONLY);
  if (fd < 0)
    return(-1);

  int rc;
  rc = read(fd,txtSign,len);
  close(fd);
  tqslHex2Bin(txtSign,sig,rc);
  return(rc/2);
}
//
// read binary signature.  returns -1 or error.
//
int readSign(char *fname,unsigned char *sig,int len)
{
  char	newName[500];
  int	fd;

  sprintf(newName,"%s.sig",fname);
  fd = open(newName,O_RDONLY);
  if (fd < 0)
    return(-1);

  int rc;
  rc = read(fd,sig,len);
  close(fd);
  return(rc);
}

// return the number of bytes in a file.

int getFileSize(char *fname)
{
  struct stat sbuf;
  int rc;

  rc = stat(fname,&sbuf);
  if (rc < 0) 
    return(-1);
  return(sbuf.st_size);
}

#if 0
// read a cert from a file.
int readCert(char *fname,TqslCert *cert)
{
  int rc;

  fileSize = getFileSize(fname);
  memset(cert,' ',sizeof(cert));
 
  int fd;
  fd = open(fname,O_RDONLY);
  if (fd < 0)
    return(-1);

  rc = read(fd,cert,sizeof(TqslCert));
  close(fd);
  return(rc);
}
#endif

//
// sha1 hash a file
//
int sha1File(char *fname,unsigned char *hash)
{

  struct stat sbuf;
  int rc;
  unsigned char *hbuf;

  rc = stat(fname,&sbuf);
  if (rc < 0)
    return(0);
  
  int fd;

  fd = open(fname,O_RDONLY);
  if (fd < 0)
    return(0);


  hbuf = new unsigned char [sbuf.st_size+1];
  rc = read(fd,hbuf,sbuf.st_size);
  if (rc != sbuf.st_size)
    {
      delete hbuf;
      return(0);
    }

  hbuf[sbuf.st_size] = '\0';
  SHA1(hbuf,sbuf.st_size,hash);
  
  return(1);
}

// store and read DSA info.  not currently used.
// from one of the kind folk on the openssl mailing list.
//
int storeDSA(DSA *dsa)
{

  unsigned char		buf[1024];
  unsigned char		*ptr;
  unsigned int		DER_size;
  unsigned int		DER_to_file;
  FILE			*f;
  int			CounterRet;
  unsigned long		h_ret;

  dsa = DSA_generate_parameters(1024, NULL, 0, &CounterRet, &h_ret,
				NULL, NULL);
  if (dsa == NULL)
    return ERROR;

  if (DSA_generate_key(dsa) != 1)
    return ERROR;

  // Store the private key (in DER encoding binary) in the specified file.
  ptr = buf;
  DER_size = i2d_DSAPrivateKey(dsa, &ptr);
  if (DER_size == 0)
    {
      DSA_free(dsa);
      return ERROR;
    }
  f = fopen("privatekey","wb");
  if (f == NULL)
    {
      return ERROR;
    }
  DER_to_file = hton(DER_size);
  fwrite(&DER_to_file,sizeof(int),1,f);
  fwrite(buf,sizeof(char),DER_size,f);
  fclose(f);
  return(0);
}
//******************* LOAD **********************
int loadDSA(DSA *dsa)
{
  unsigned char		buf[1024];
  unsigned char		*ptr;
  unsigned int		DER_size;
  FILE			*f;

  ptr = buf;
  f = fopen("privatekey","rb");
  if (f == NULL)
    return ERROR;
  fread(&DER_size,sizeof(int),1,f);
  DER_size = ntoh(DER_size);
  fread(buf,sizeof(char),DER_size,f);
  fclose(f);
  if (d2i_DSAPrivateKey(&dsa, &ptr, DER_size) == NULL)
    return ERROR;
  return(0);
}

// Read a big number from a hex encoded file and store it in
// bn
// returns -1 on error.

int readBig(const char *fname,BIGNUM **bn)
{
  FILE *fkey;
  char p[5000];
  char *t;
  int rc;

  fkey = fopen(fname,"r");
  rc = -1;
  if (fkey)
    {
      t = fgets(p,4999,fkey);
      if (t != NULL)
	{
	  //strip out eol
	  t = strchr(p,'\n');
	  if (t != NULL)
	    *t = '\0';
	  t = strchr(p,'\r');
	  if (t != NULL)
	    *t = '\0';	
	  

	  rc = BN_hex2bn(bn,p);
	  if (rc == 0)
	    {
	      printf("BN_hex2bn: %d\n",rc);
	      fclose(fkey);
	      return(-1);
	    }
	  
	}

      fclose(fkey);
      return(rc);
    }
#ifdef __CYGWIN__
  return(-1);
#else
  return(errno);
#endif
}




