�
 TCAVALIDATEFM 0�  TPF0TcaValidateFmcaValidateFmLeft�Top�Width+HeightxCaptionCertificate Validation Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PixelsPerInch`
TextHeight 	TwwDBGrid	wwDBGrid1LeftTop@Width�HeightjSelected.StringsCallSign	15	Call SignCertNum	9	Cert NumVCAR1_Call	11	VCAR #1VCAR2_Call	15	VCAR #2VCAR3_Call	15	VCAR #3 
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourcecertDsTabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtons
OnDblClickBitBtn2ClickIndicatorColoricBlack  TDBNavigatorDBNavigator1Left� TopWidth� Height
DataSourcecertDsVisibleButtonsnbFirstnbPriornbNextnbLast	nbRefresh TabOrder  TBitBtnBitBtn1Left(Top0WidthKHeightCaption&CloseTabOrderOnClickBitBtn1Click  TBitBtnBitBtn2Left� Top0WidthKHeightCaptionValidateTabOrderOnClickBitBtn2Click  TwwDataSourcecertDsDataSetcertTblLeft Top�   TwwTablecertTblActive	DatabaseName
TrustedQSL	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameCertNumDataTypeftFloat	Precision RequiredSize  NameCertDataTypeftMemo	Precision RequiredSize�  Name
VCAR1_CallDataTypeftString	Precision RequiredSize Name	VCAR1_SigDataTypeftString	Precision RequiredSize�  NameVCAR1_PKNumDataTypeftString	Precision RequiredSize Name
VCAR2_CallDataTypeftString	Precision RequiredSize Name	VCAR2_SigDataTypeftString	Precision RequiredSize�  NameVCAR2_PKNumDataTypeftString	Precision RequiredSize Name
VCAR3_CallDataTypeftString	Precision RequiredSize Name	VCAR3_SigDataTypeftString	Precision RequiredSize�  NameVCAR3_PKNumDataTypeftString	Precision RequiredSize  	IndexDefsOptions	ixPrimaryixUnique FieldsPid NamecallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexNamecallIdxReadOnly		StoreDefs		TableNamecerts.dbSyncSQLByRangeNarrowSearchValidateWithMask	Left TopX TStringFieldcertTblCallSignDisplayLabel	Call SignDisplayWidth	FieldNameCallSignSize  TFloatFieldcertTblCertNumDisplayLabelCert NumDisplayWidth		FieldNameCertNum  TStringFieldcertTblVCAR1_CallDisplayLabelVCAR #1DisplayWidth	FieldName
VCAR1_CallSize  TStringFieldcertTblVCAR2_CallDisplayLabelVCAR #2DisplayWidth	FieldName
VCAR2_CallSize  TStringFieldcertTblVCAR3_CallDisplayLabelVCAR #3DisplayWidth	FieldName
VCAR3_CallSize  TAutoIncField
certTblPid	FieldNamePidVisible  
TMemoFieldcertTblCert	FieldNameCertVisibleBlobTypeftMemoSize�   TStringFieldcertTblVCAR1_Sig	FieldName	VCAR1_SigVisibleSize�   TStringFieldcertTblVCAR1_PKNum	FieldNameVCAR1_PKNumVisibleSize  TStringFieldcertTblVCAR2_Sig	FieldName	VCAR2_SigVisibleSize�   TStringFieldcertTblVCAR2_PKNum	FieldNameVCAR2_PKNumVisibleSize  TStringFieldcertTblVCAR3_Sig	FieldName	VCAR3_SigVisibleSize�   TStringFieldcertTblVCAR3_PKNum	FieldNameVCAR3_PKNumVisibleSize   TwwQuerytQryDatabaseName
TrustedQSLSQL.Stringsselect * from certs ValidateWithMask	LeftTop0 TIntegerFieldtQryPid	FieldNamePidOrigin"certs.DB".Pid  TStringFieldtQryCallSign	FieldNameCallSignOrigin"certs.DB".CallSignSize  TFloatFieldtQryCertNum	FieldNameCertNumOrigin"certs.DB".CertNum  
TMemoFieldtQryCert	FieldNameCertOrigin"certs.DB".CertBlobTypeftMemoSize�   TStringFieldtQryVCAR1_Call	FieldName
VCAR1_CallOrigin"certs.DB".VCAR1_CallSize  TStringFieldtQryVCAR1_Sig	FieldName	VCAR1_SigOrigin"certs.DB".VCAR1_SigSize�   TStringFieldtQryVCAR1_PKNum	FieldNameVCAR1_PKNumOrigin"certs.DB".VCAR1_PKNumSize  TStringFieldtQryVCAR2_Call	FieldName
VCAR2_CallOrigin"certs.DB".VCAR2_CallSize  TStringFieldtQryVCAR2_Sig	FieldName	VCAR2_SigOrigin"certs.DB".VCAR2_SigSize�   TStringFieldtQryVCAR2_PKNum	FieldNameVCAR2_PKNumOrigin"certs.DB".VCAR2_PKNumSize  TStringFieldtQryVCAR3_Call	FieldName
VCAR3_CallOrigin"certs.DB".VCAR3_CallSize  TStringFieldtQryVCAR3_Sig	FieldName	VCAR3_SigOrigin"certs.DB".VCAR3_SigSize�   TStringFieldtQryVCAR3_PKNum	FieldNameVCAR3_PKNumOrigin"certs.DB".VCAR3_PKNumSize    