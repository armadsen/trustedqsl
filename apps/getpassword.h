/***************************************************************************
                          getpassword.cpp  -  description
                             -------------------
    begin                : Tue Aug 5 2003
    copyright            : (C) 2003 by ARRL
    author               : Jon Bloom
    email                : jbloom@arrl.org
    revision             : $Id$
 ***************************************************************************/

#ifdef HAVE_CONFIG_H
#include "sysconfig.h"
#endif

#include "getpassword.h"

using namespace std;

#define GPW_ID_LOW 6400

#define GPW_ID_PW1 GPW_ID_LOW
#define GPW_ID_PW2 GPW_ID_LOW+1
#define GPW_ID_OK GPW_ID_LOW+2
#define GPW_ID_CAN GPW_ID_LOW+3
#define GPW_ID_HELP GPW_ID_LOW+4

BEGIN_EVENT_TABLE(GetPasswordDialog, wxDialog)
	EVT_BUTTON(GPW_ID_OK, GetPasswordDialog::OnOk)
	EVT_BUTTON(GPW_ID_CAN, GetPasswordDialog::OnCancel)
	EVT_BUTTON(GPW_ID_HELP, GetPasswordDialog::OnHelp)
END_EVENT_TABLE()

GetPasswordDialog::GetPasswordDialog(wxWindow *parent, const wxString& title,
	const wxString& message, wxHtmlHelpController *help, wxString helpfile)
	: wxDialog(parent, -1, title), _help(help), _helpfile(helpfile) {

	wxBoxSizer *sizer = new wxBoxSizer(wxVERTICAL);
	sizer->Add(new wxStaticText(this, -1, message), 1, wxALL|wxEXPAND, 10);
	_pw = new wxTextCtrl(this, GPW_ID_PW1, "", wxDefaultPosition, wxDefaultSize, wxTE_PASSWORD);
	sizer->Add(_pw, 0, wxLEFT|wxRIGHT|wxEXPAND, 10);

	wxBoxSizer *butsizer = new wxBoxSizer(wxHORIZONTAL);
	butsizer->Add(new wxButton(this, GPW_ID_OK, "Ok"), 0, 0, 0);
	butsizer->Add(new wxButton(this, GPW_ID_CAN, "Cancel"), 0, wxLEFT, 20);
	if (_help && _helpfile != "")
		butsizer->Add(new wxButton(this, GPW_ID_HELP, "Help"), 0, wxLEFT, 20);

	sizer->Add(butsizer, 0, wxALL|wxALIGN_CENTER, 10);

	SetAutoLayout(TRUE);
	SetSizer(sizer);

	sizer->Fit(this);
	sizer->SetSizeHints(this);
	CentreOnParent();
}

bool
GetPasswordDialog::TransferDataFromWindow() {
	_password = _pw->GetValue();
	return true;
}

void
GetPasswordDialog::OnOk(wxCommandEvent&) {
	EndModal(wxID_OK);
}

void
GetPasswordDialog::OnCancel(wxCommandEvent&) {
	EndModal(wxID_CANCEL);
}

void
GetPasswordDialog::OnHelp(wxCommandEvent&) {
	if (_help && _helpfile != "")
		_help->Display(_helpfile);
}

BEGIN_EVENT_TABLE(GetNewPasswordDialog, wxDialog)
	EVT_TEXT(GPW_ID_PW1, GetNewPasswordDialog::PWChange)
	EVT_TEXT(GPW_ID_PW2, GetNewPasswordDialog::PWChange)
	EVT_BUTTON(GPW_ID_OK, GetNewPasswordDialog::OnOk)
	EVT_BUTTON(GPW_ID_CAN, GetNewPasswordDialog::OnCancel)
	EVT_BUTTON(GPW_ID_HELP, GetNewPasswordDialog::OnHelp)
END_EVENT_TABLE()

GetNewPasswordDialog::GetNewPasswordDialog(wxWindow *parent, const wxString& title,
	const wxString& message, bool blankok, wxHtmlHelpController *help, wxString helpfile)
	: wxDialog(parent, -1, title), _blankok(blankok), _help(help), _helpfile(helpfile) {

	wxBoxSizer *sizer = new wxBoxSizer(wxVERTICAL);
	sizer->Add(new wxStaticText(this, -1, message), 1, wxALL|wxEXPAND, 10);
	sizer->Add(new wxStaticText(this, -1, "New password:"), 0, wxLEFT|wxRIGHT, 10);
	_pw1 = new wxTextCtrl(this, GPW_ID_PW1, "", wxDefaultPosition, wxDefaultSize, wxTE_PASSWORD);
	sizer->Add(_pw1, 0, wxLEFT|wxRIGHT|wxEXPAND, 10);
	sizer->Add(new wxStaticText(this, -1, "Enter again to confirm:"), 0, wxLEFT|wxRIGHT, 10);
	_pw2 = new wxTextCtrl(this, GPW_ID_PW2, "", wxDefaultPosition, wxDefaultSize, wxTE_PASSWORD);
	sizer->Add(_pw2, 0, wxLEFT|wxRIGHT|wxEXPAND, 10);
	_pwstatus = new wxStaticText(this, -1, "");
	sizer->Add(_pwstatus, 0, wxALL|wxEXPAND, 10);

	wxBoxSizer *butsizer = new wxBoxSizer(wxHORIZONTAL);
	_okbut = new wxButton(this, GPW_ID_OK, "Ok");
	_okbut->Enable(_blankok);
	butsizer->Add(_okbut, 0, 0, 0);
	butsizer->Add(new wxButton(this, GPW_ID_CAN, "Cancel"), 0, wxLEFT, 20);
	if (_help && _helpfile != "")
		butsizer->Add(new wxButton(this, GPW_ID_HELP, "Help"), 0, wxLEFT, 20);

	sizer->Add(butsizer, 0, wxALL|wxALIGN_CENTER, 10);

	SetAutoLayout(TRUE);
	SetSizer(sizer);

	sizer->Fit(this);
	sizer->SetSizeHints(this);
	CentreOnParent();
}

void
GetNewPasswordDialog::PWChange(wxCommandEvent&) {
	_password = "";
	wxString pw1 = _pw1->GetValue();
	wxString pw2 = _pw2->GetValue();

	if (pw1 != pw2) {
		_pwstatus->SetLabel("Password entries do not match");
		_okbut->Enable(false);
		return;
	}
	if (!_blankok && pw1 == "") {
		_pwstatus->SetLabel("");
		_okbut->Enable(false);
		return;
	}
	_password = pw1;
	if (pw1 != "")
		_pwstatus->SetLabel("Password confirmed");
	_okbut->Enable(true);
}

void
GetNewPasswordDialog::OnOk(wxCommandEvent&) {
	EndModal(wxID_OK);
}

void
GetNewPasswordDialog::OnCancel(wxCommandEvent&) {
	EndModal(wxID_CANCEL);
}

void
GetNewPasswordDialog::OnHelp(wxCommandEvent&) {
	if (_help && _helpfile != "")
		_help->Display(_helpfile);
}
