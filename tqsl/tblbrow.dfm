�
 TTBLVIEW 0Z  TPF0TtblViewtblViewLeft7Top� WidthTHeightCaptionTable BrowserFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PositionpoScreenCenterPixelsPerInch`
TextHeight TLabelLabel1Left(Top(WidthfHeightCaptionPrivate Key TableFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel2Left@Top(WidthaHeightCaptionPublic Key TableFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel3Left#Top� Width� HeightCaption-Certificate Authority Self Signed CertifcatesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel4Left@TopHWidth� HeightCaption-Certificate Authority Self Signed CertifcatesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  	TwwDBGrid	wwDBGrid1Left(Top7WidthHeightjSelected.StringsCallSign	12	Call SignKeyNum	10	Key NumberChkHash	13	Check Hash 
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourceprivDSReadOnly	TabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack  TDBNavigatorDBNavigator1Left(TopWidth� Height
DataSourceprivDSVisibleButtonsnbFirstnbPriornbNextnbLastnbDelete	nbRefresh TabOrder  	TwwDBGrid	wwDBGrid2Left@Top7Width� HeightjSelected.StringsCallSign	12	Call SignPubkeyNum	10	PubkeyNumSigned	8	Signed 
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourcepubKeyDSReadOnly	TabOrderTitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack  TDBNavigatorDBNavigator2Left#Top� Width� Height
DataSourceprivDSVisibleButtonsnbFirstnbPriornbNextnbLastnbDeletenbEditnbPost	nbRefresh TabOrder  	TwwDBGrid	wwDBGrid3Left#Top� WidthHeightJSelected.StringsCallSign	12	Call SignCertCA	20	Cert CACertNum	10	Cert Num	FCertType	1	CertTypeExpires	10	ExpiresIssue	10	IssueTrusted	5	Trusted 
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourcecaCertDSTabOrderTitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack  TDBNavigatorDBNavigator3Left@TopWidth� Height
DataSourcepubKeyDSVisibleButtonsnbFirstnbPriornbNextnbLastnbDelete	nbRefresh TabOrder  	TwwDBGrid	wwDBGrid4Left@TopWWidth�HeightjSelected.StringsCallSign	12	Call SignCertNum	10	Cert NumVCAR1_Call	15	VCAR 1 CallVCAR2_Call	15	VCAR 2 CallVCAR3_Call	15	VCAR 3 Call	F 
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourcecertDSReadOnly	TabOrderTitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
TitleLinesTitleButtonsIndicatorColoricBlack  TDBNavigatorDBNavigator4LeftATop.Width� Height
DataSourceprivDSVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbDelete	nbRefresh TabOrder  TBitBtnBitBtn1LeftTop�WidthKHeightTabOrderOnClickBitBtn1ClickKindbkClose  TwwDataSourceprivDSDataSetprivTblLeft`TopP  TwwTableprivTblActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameKeyNumDataType	ftInteger	Precision RequiredSize  NameKeyDataTypeftString	Precision RequiredSize2 NameChkHashDataTypeftString	Precision RequiredSize2  	StoreDefs		TableNameprivkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	Left� TopX  TwwTable	pubKeyTblActive	DatabaseNameadb	FieldDefsNameKidDataType	ftAutoInc	Precision RequiredSize  Name	PublicKeyDataTypeftString	Precision RequiredSize�  NameCallSignDataTypeftString	Precision RequiredSize Name	PubkeyNumDataTypeftString	Precision RequiredSize NameSignedDataType	ftBoolean	Precision RequiredSize   	StoreDefs		TableName
pubkeys.DBControlType.StringsSigned;CheckBox;true;false SyncSQLByRangeNarrowSearchValidateWithMask	Left�Toph  TwwDataSourcepubKeyDSDataSet	pubKeyTblLeft`Toph  TwwTable	caCertTblActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameCertNumDataTypeftFloat	Precision RequiredSize  NameCertCADataTypeftString	Precision RequiredSize NameCertTypeDataTypeftString	Precision RequiredSize NameCertDataTypeftMemo	Precision RequiredSize�  NameIssueDataTypeftDate	Precision RequiredSize  NameExpiresDataTypeftDate	Precision RequiredSize  NameTrustedDataType	ftBoolean	Precision RequiredSize   	StoreDefs		TableName
cacerts.DBControlType.StringsTrusted;CheckBox;true;false SyncSQLByRangeNarrowSearchValidateWithMask	Left�Top  TwwDataSourcecaCertDSDataSet	caCertTblLeftcTop   TwwTablecertTblActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameCertNumDataTypeftFloat	Precision RequiredSize  NameCertDataTypeftMemo	Precision RequiredSize�  Name
VCAR1_CallDataTypeftString	Precision RequiredSize Name	VCAR1_SigDataTypeftString	Precision RequiredSize�  NameVCAR1_PKNumDataTypeftString	Precision RequiredSize Name
VCAR2_CallDataTypeftString	Precision RequiredSize Name	VCAR2_SigDataTypeftString	Precision RequiredSize�  NameVCAR2_PKNumDataTypeftString	Precision RequiredSize Name
VCAR3_CallDataTypeftString	Precision RequiredSize Name	VCAR3_SigDataTypeftString	Precision RequiredSize�  NameVCAR3_PKNumDataTypeftString	Precision RequiredSize  	StoreDefs		TableNamecerts.dbSyncSQLByRangeNarrowSearchValidateWithMask	Left�Top�  TwwDataSourcecertDSDataSetcertTblLeftHTopx   