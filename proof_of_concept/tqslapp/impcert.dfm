�
 TIMPORTCERTFM 0I  TPF0TimportCertFmimportCertFmLeft�Top� Width~Height� CaptionImport CertificatesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PixelsPerInch`
TextHeight TLabelLabel1Left TopWidth� HeightCaptionImport Certificate File nameFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TSpeedButtonSpeedButton1Left8Top&WidthHeight
Glyph.Data
^  Z  BMZ      v   (               �                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� p           x���������� ���������� x�      ��� �������� x𰸸������ ���������� x������� ���  ���� x𿿿�   �� ��������� x𿿿����� ��������� x𿿰   ��� �  ������ x���������� ���������� p           ��������� OnClickSpeedButton1Click  TEditfnameEdLeft Top(WidthHeightTabOrder   TBitBtnBitBtn1Left� Top� WidthKHeightTabOrderKindbkClose  TBitBtnBitBtn2Left]Top� WidthKHeightTabOrderOnClickBitBtn2ClickKindbkOK  TOpenDialogopenDlg
DefaultExttqcFilterTrustedQSL Certs|*.tqc
InitialDirc:\LeftTopX  TTable
forcertTblActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameCertNumDataTypeftFloat	Precision RequiredSize  NameCertCADataTypeftString	Precision RequiredSize NameCertTypeDataTypeftString	Precision RequiredSize NameCertDataTypeftMemo	Precision RequiredSize�  NameIssueDataTypeftDate	Precision RequiredSize  NameExpiresDataTypeftDate	Precision RequiredSize   	StoreDefs		TableNameforcerts.DBLeftPTopH TAutoIncFieldforcertTblPid	FieldNamePid  TStringFieldforcertTblCallSign	FieldNameCallSignSize  TFloatFieldforcertTblCertNum	FieldNameCertNum  TStringFieldforcertTblCertCA	FieldNameCertCA  TStringFieldforcertTblCertType	FieldNameCertTypeSize  
TMemoFieldforcertTblCert	FieldNameCertBlobTypeftMemoSize�   
TDateFieldforcertTblIssue	FieldNameIssue  
TDateFieldforcertTblExpires	FieldNameExpires   TTable	caCertTblActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameCertNumDataTypeftFloat	Precision RequiredSize  NameCertCADataTypeftString	Precision RequiredSize NameCertTypeDataTypeftString	Precision RequiredSize NameCertDataTypeftMemo	Precision RequiredSize�  NameIssueDataTypeftDate	Precision RequiredSize  NameExpiresDataTypeftDate	Precision RequiredSize  NameTrustedDataType	ftBoolean	Precision RequiredSize   	StoreDefs		TableName
cacerts.DBLeft� TopP TAutoIncFieldcaCertTblPid	FieldNamePid  TStringFieldcaCertTblCallSign	FieldNameCallSignSize  TFloatFieldcaCertTblCertNum	FieldNameCertNum  TStringFieldcaCertTblCertCA	FieldNameCertCA  TStringFieldcaCertTblCertType	FieldNameCertTypeSize  
TMemoFieldcaCertTblCert	FieldNameCertBlobTypeftMemoSize�   
TDateFieldcaCertTblIssue	FieldNameIssue  
TDateFieldcaCertTblExpires	FieldNameExpires  TBooleanFieldcaCertTblTrusted	FieldNameTrusted    