#!/bin/sh
for lang in de es fi fr hi_IN it ja pt zh ru pl_PL tr_TR
do
	echo "Working on $lang"
	scp rmurphy@vaxemu:tqsl/apps/lang/$lang/wxstd.mo $lang
done
