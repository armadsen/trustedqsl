for lang in de es fi fr hi_IN it ja pl_PL pt ru sv_SE tr_TR zh
do
	msgfmt $lang/tqslapp.po -o $lang/tqslapp.mo
done
