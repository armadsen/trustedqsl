�
 TGENCERTFM 0G4  TPF0
TgenCertFm	genCertFmLeft�TopsWidthAHeight�CaptionCreate a signed certificateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PositionpoScreenCenterOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1Left� TopWidthYHeightCaptionAmeteurs Call 2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel2LeftxTopWidthYHeightCaptionAmeteurs Call 3Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel4LeftTopWidthYHeightCaptionAmateurs Call 1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel5LeftToppWidth� HeightCaptionPrivate key to sign certificateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel6Left� ToppWidthiHeightCaptionPublic Key to SignFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel7Left� Top� Width>HeightCaption
Issue DateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel8Left@Top� WidthCHeightCaptionExpire DateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel3LeftTop@WidthFHeightCaptionPass phraseFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel10LeftxTop@WidthFHeightCaptionPass phraseFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel11Left� Top@WidthFHeightCaptionPass phraseFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel12LeftTop� WidthFHeightCaptionPass phraseFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEdit
caRepPass1LeftTopPWidth� HeightPasswordChar*TabOrderTextkb1etc  TEdit
caRepPass2Left� TopPWidth� HeightPasswordChar*TabOrderTextkb1etc  TEdit
caRepPass3LeftxTopPWidth� HeightPasswordChar*TabOrderTextkb1etc  	TCheckBoxselfCBLeft�Top� Width� HeightCaptionSelf Signed CertificateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TBitBtnOkbtnLeft� Top8WidthKHeightTabOrderKindbkOK  TBitBtncloseBtnLeft� Top8WidthYHeightTabOrderKindbkClose  TwwDBLookupCombo	privKeyCBLeftTop� Width� HeightDropDownAlignmenttaLeftJustifySelected.StringsCallSign	12	Call Sign	FKeyNum	10	Public Key #	F LookupTableprivTblLookupFieldCallSignOptions
loColLinesloTitles StylecsDropDownListTabOrderAutoDropDown
ShowButton	AllowClearKey  TwwDBLookupCombopubKeyCBLeft� Top� Width� HeightDropDownAlignmenttaLeftJustifySelected.StringsCallSign	12	Call Sign	FPubkeyNum	5	Public Key #	F LookupTable	pubKeyTblLookupFieldCallSignOptions
loColLinesloTitles StylecsDropDownListTabOrderAutoDropDown
ShowButton	AllowClearKey  TBitBtnsignBtnLefthTop8WidthKHeightCaptionSignTabOrderOnClicksignBtnClick  TDateTimePickerIssueDtLeft� Top� WidthYHeightCalAlignmentdtaLeftDate @��2Jp�@Time @��2Jp�@
DateFormatdfShortDateMode
dmComboBoxKinddtkDate
ParseInputTabOrder
  TDateTimePickerexpireDtLeft@Top� WidthYHeightCalAlignmentdtaLeftDate @��2Jp�@Time @��2Jp�@
DateFormatdfShortDateMode
dmComboBoxKinddtkDate
ParseInputTabOrderOnEnterexpireDtEnter  TMemocertMmLeftTop� Width�HeightYLines.Strings  ReadOnly	TabOrder  TwwDBLookupCombo	am1CallCBLeftTop(Width� HeightDropDownAlignmenttaLeftJustifySelected.StringsCallSign	12	Call Sign	FKeyNum	10	Public Key #	F LookupTableamTbl1LookupFieldCallSignOptions
loColLinesloTitles StylecsDropDownListTabOrder AutoDropDown
ShowButton	AllowClearKey  TwwDBLookupCombo	am2CallCBLeft� Top(Width� HeightDropDownAlignmenttaLeftJustifySelected.StringsCallSign	12	Call Sign	FKeyNum	10	Public Key #	F LookupTableamTbl2LookupFieldCallSignOptions
loColLinesloTitles StylecsDropDownListTabOrderAutoDropDown
ShowButton	AllowClearKey  TwwDBLookupCombo	am3CallCBLeftxTop(Width� HeightDropDownAlignmenttaLeftJustifySelected.StringsCallSign	12	Call Sign	FKeyNum	10	Public Key #	F LookupTableamTbl3LookupFieldCallSignOptions
loColLinesloTitles StylecsDropDownListTabOrderAutoDropDown
ShowButton	AllowClearKey  TEditcaPassEdLeftTop� Width� HeightPasswordChar*TabOrder	Textkb1etc  TwwTableprivTblActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameKeyNumDataType	ftInteger	Precision RequiredSize  NameKeyDataTypeftString	Precision RequiredSize2 NameChkHashDataTypeftString	Precision RequiredSize2  	IndexDefsOptions	ixPrimaryixUnique FieldsPid Name
prvCallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexName
prvCallIdx	StoreDefs		TableNameprivkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	Left�Top  TAutoIncField
privTblPid	FieldNamePid  TStringFieldprivTblCallSign	FieldNameCallSignSize  TIntegerFieldprivTblKeyNum	FieldNameKeyNum  TStringField
privTblKey	FieldNameKeySize2  TStringFieldprivTblChkHash	FieldNameChkHashSize2   TwwDataSourceprivDsDataSetprivTblLeft�Top�   TwwDataSourcepubKeyDsDataSet	pubKeyTblLeft Top�   TwwTable	pubKeyTblActive	DatabaseNameadb	FieldDefsNameKidDataType	ftAutoInc	Precision RequiredSize  Name	PublicKeyDataTypeftString	Precision RequiredSize�  NameCallSignDataTypeftString	Precision RequiredSize Name	PubkeyNumDataTypeftString	Precision RequiredSize NameSignedDataType	ftBoolean	Precision RequiredSize   	IndexDefsOptions	ixPrimaryixUnique FieldsKid Name
pubCallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexName
pubCallIdx	StoreDefs		TableName
pubkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	Left� Top�  TAutoIncFieldpubKeyTblKid	FieldNameKid  TStringFieldpubKeyTblPublicKey	FieldName	PublicKeySize�   TStringFieldpubKeyTblCallSign	FieldNameCallSignSize  TStringFieldpubKeyTblPubkeyNum	FieldName	PubkeyNumSize  TBooleanFieldpubKeyTblSigned	FieldNameSigned   TwwTableprivLkActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameKeyNumDataType	ftInteger	Precision RequiredSize  NameKeyDataTypeftString	Precision RequiredSize2 NameChkHashDataTypeftString	Precision RequiredSize2  	IndexDefsOptions	ixPrimaryixUnique FieldsPid Name
prvCallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexName
prvCallIdx	StoreDefs		TableNameprivkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	LeftPTop(  TwwTablepubKeyLkActive	FilterSigned = FalseFiltered	DatabaseNameadb	FieldDefsNameKidDataType	ftAutoInc	Precision RequiredSize  Name	PublicKeyDataTypeftString	Precision RequiredSize�  NameCallSignDataTypeftString	Precision RequiredSize Name	PubkeyNumDataTypeftString	Precision RequiredSize NameSignedDataType	ftBoolean	Precision RequiredSize   	IndexDefsOptions	ixPrimaryixUnique FieldsKid Name
pubCallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexName
pubCallIdx	StoreDefs		TableName
pubkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	LeftPTop�  TStringFieldpubKeyLkCallSignDisplayLabel	Call SignDisplayWidth	FieldNameCallSignSize  TStringFieldpubKeyLkPubkeyNumDisplayLabelPublic Key #DisplayWidth	FieldName	PubkeyNumSize  TAutoIncFieldpubKeyLkKid	FieldNameKidVisible  TStringFieldpubKeyLkPublicKey	FieldName	PublicKeyVisibleSize�   TBooleanFieldpubKeyLkSigned	FieldNameSignedVisible   TwwTableCertTblActive	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameCertNumDataTypeftFloat	Precision RequiredSize  NameCertDataTypeftMemo	Precision RequiredSize�  Name
VCAR1_CallDataTypeftString	Precision RequiredSize Name	VCAR1_SigDataTypeftString	Precision RequiredSize�  NameVCAR1_PKNumDataTypeftString	Precision RequiredSize Name
VCAR2_CallDataTypeftString	Precision RequiredSize Name	VCAR2_SigDataTypeftString	Precision RequiredSize�  NameVCAR2_PKNumDataTypeftString	Precision RequiredSize Name
VCAR3_CallDataTypeftString	Precision RequiredSize Name	VCAR3_SigDataTypeftString	Precision RequiredSize�  NameVCAR3_PKNumDataTypeftString	Precision RequiredSize  	StoreDefs		TableNamecerts.DBSyncSQLByRangeNarrowSearchValidateWithMask	Left� Top�  TAutoIncField
CertTblPid	FieldNamePid  TStringFieldCertTblCallSign	FieldNameCallSignSize  TFloatFieldCertTblCertNum	FieldNameCertNum  
TMemoFieldCertTblCert	FieldNameCertBlobTypeftMemoSize�   TStringFieldCertTblVCAR1_Sig	FieldName	VCAR1_SigSize�   TStringFieldCertTblVCAR1_PKNum	FieldNameVCAR1_PKNumSize  TStringFieldCertTblVCAR2_Sig	FieldName	VCAR2_SigSize�   TStringFieldCertTblVCAR2_PKNum	FieldNameVCAR2_PKNumSize  TStringFieldCertTblVCAR3_Sig	FieldName	VCAR3_SigSize�   TStringFieldCertTblVCAR3_PKNum	FieldNameVCAR3_PKNumSize  TStringFieldCertTblVCAR1_Call	FieldName
VCAR1_CallSize  TStringFieldCertTblVCAR2_Call	FieldName
VCAR2_CallSize  TStringFieldCertTblVCAR3_Call	FieldName
VCAR3_CallSize   TwwQuery
certNumQryDatabaseNameadbSQL.Strings&select max(CertNum) certMax from certs ValidateWithMask	Left�Top�  TFloatFieldcertNumQrycertMax	FieldNamecertMaxOrigin"certs.DB".CertNum   TwwTableamTbl1Active	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameKeyNumDataType	ftInteger	Precision RequiredSize  NameKeyDataTypeftString	Precision RequiredSize2 NameChkHashDataTypeftString	Precision RequiredSize2  	IndexDefsOptions	ixPrimaryixUnique FieldsPid Name
prvCallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexName
prvCallIdx	StoreDefs		TableNameprivkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	Left Top�  TAutoIncField	amTbl1Pid	FieldNamePid  TStringFieldamTbl1CallSign	FieldNameCallSignSize  TIntegerFieldamTbl1KeyNum	FieldNameKeyNum  TStringField	amTbl1Key	FieldNameKeySize2  TStringFieldamTbl1ChkHash	FieldNameChkHashSize2   TwwTableamTbl2Active	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameKeyNumDataType	ftInteger	Precision RequiredSize  NameKeyDataTypeftString	Precision RequiredSize2 NameChkHashDataTypeftString	Precision RequiredSize2  	IndexDefsOptions	ixPrimaryixUnique FieldsPid Name
prvCallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexName
prvCallIdx	StoreDefs		TableNameprivkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	LeftPTop�  TAutoIncField	amTbl2Pid	FieldNamePid  TStringFieldamTbl2CallSign	FieldNameCallSignSize  TIntegerFieldamTbl2KeyNum	FieldNameKeyNum  TStringField	amTbl2Key	FieldNameKeySize2  TStringFieldamTbl2ChkHash	FieldNameChkHashSize2   TwwTableamTbl3Active	DatabaseNameadb	FieldDefsNamePidDataType	ftAutoInc	Precision RequiredSize  NameCallSignDataTypeftString	Precision RequiredSize NameKeyNumDataType	ftInteger	Precision RequiredSize  NameKeyDataTypeftString	Precision RequiredSize2 NameChkHashDataTypeftString	Precision RequiredSize2  	IndexDefsOptions	ixPrimaryixUnique FieldsPid Name
prvCallIdxOptionsixCaseInsensitive FieldsCallSign  	IndexName
prvCallIdx	StoreDefs		TableNameprivkeys.DBSyncSQLByRangeNarrowSearchValidateWithMask	Left� Top�  TAutoIncField	amTbl3Pid	FieldNamePid  TStringFieldamTbl3CallSign	FieldNameCallSignSize  TIntegerFieldamTbl3KeyNum	FieldNameKeyNum  TStringField	amTbl3Key	FieldNameKeySize2  TStringFieldamTbl3ChkHash	FieldNameChkHashSize2    