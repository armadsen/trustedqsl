/***************************************************************************
                          extwizard.cpp  -  description
                             -------------------
    begin                : Thu Aug 7 2003
    copyright            : (C) 2003 by ARRL
    author               : Jon Bloom
    email                : jbloom@arrl.org
    revision             : $Id$
 ***************************************************************************/

#ifdef HAVE_CONFIG_H
#include "sysconfig.h"
#endif

#include "extwizard.h"

#define EW_HELP_BUT wxID_HIGHEST+300

BEGIN_EVENT_TABLE(ExtWizard, wxWizard)
	EVT_WIZARD_PAGE_CHANGED(-1, ExtWizard::OnPageChanged)
END_EVENT_TABLE()

void
ExtWizard::OnPageChanged(wxWizardEvent&) {
	GetCurrentPage()->refresh();
	GetCurrentPage()->SetFocus();
	wxWindow *but = FindWindow(wxID_FORWARD);
	if (but == NULL)
		return;
	but->Enable(!GetCurrentPage()->validate());
}

void
ExtWizard::ReportSize(const wxSize& size) {
	if (size.GetWidth() > _minsize.GetWidth())
		_minsize.SetWidth(size.GetWidth());
	if (size.GetHeight() > _minsize.GetHeight())
		_minsize.SetHeight(size.GetHeight());
}

ExtWizard::ExtWizard(wxWindow *parent, wxHtmlHelpController *help, const wxString& title) :
	wxWizard(parent, -1, title), _help(help) {

	CenterOnParent();
}

BEGIN_EVENT_TABLE(ExtWizard_Page, wxWizardPageSimple)
	EVT_BUTTON(EW_HELP_BUT, ExtWizard_Page::OnHelp)
END_EVENT_TABLE()

void
ExtWizard_Page::check_valid(wxEvent&) {
	wxWindow *but = GetParent()->FindWindow(wxID_FORWARD);
	if (but != NULL)
		but->Enable(validate() == NULL);
}

void
ExtWizard_Page::AdjustPage(wxBoxSizer *sizer, const wxString& helpfile) {
	_helpfile = helpfile;

	if (_helpfile != "" && _parent->HaveHelp()) {
		// Space filler
		sizer->Add(new wxStaticText(this, -1, ""), 1, 0, 10);
		sizer->Add(new wxButton(this, EW_HELP_BUT, "Help"), 0, wxALL, 10);
	}

	SetAutoLayout(TRUE);
	SetSizer(sizer);
	sizer->Fit(this);
	sizer->SetSizeHints(this);
	_parent->ReportSize(sizer->CalcMin());
}

