/***************************************************************************
                          dxcc.cpp  -  description
                             -------------------
    begin                : Tue Jun 18 2002
    copyright            : (C) 2002 by ARRL
    author               : Jon Bloom
    email                : jbloom@arrl.org
    revision             : $Id$
 ***************************************************************************/

#include <stdlib.h>
#include <string.h>

#include "dxcc.h"
#include "tqsllib.h"
#include "tqsltrace.h"

#include "winstrdefs.h"
#include "wxutil.h"

bool DXCC::_init = false;

static int num_entities = 0;

static struct _dxcc_entity {
	int number;
	const char *name;
	const char *zonemap;
} *entity_list = 0, *deleted_entity_list = 0;

static int
_ent_cmp(const void *a, const void *b) {
	return strcasecmp(((struct _dxcc_entity *)a)->name, ((struct _dxcc_entity *)b)->name);
}

bool
DXCC::init() {
	tqslTrace("DXCC::init", NULL);
	if (!_init) {
		// TRANSLATORS: This is part of an deleted DXCC entity name
		wxString del = wxGetTranslation(_("DELETED"));
		char cdel[128];
		strncpy(cdel, del.ToUTF8(), sizeof cdel);
		cdel[sizeof cdel - 1] = '\0';
		if (tqsl_getNumDXCCEntity(&num_entities))
			return false;
		entity_list = new struct _dxcc_entity[num_entities];
		deleted_entity_list = new struct _dxcc_entity[num_entities];
		int activeEntities = 0;
		int deletedEntities = 0;
		for (int i = 0; i < num_entities; i++) {
			const char *entityName;
			const char *zonemap;
			int entityNum;
			tqsl_getDXCCEntity(i, &entityNum, &entityName);
			tqsl_getDXCCZoneMap(entityNum, &zonemap);
			char testName[TQSL_CRQ_COUNTRY_MAX+1];
			strncpy(testName, entityName, sizeof testName);
			char *p = strstr(testName, "DELETED");
			if (p == NULL) {
				entity_list[activeEntities].number = entityNum;
				entity_list[activeEntities].name = entityName;
				entity_list[activeEntities++].zonemap = zonemap;
			} else {
				char fixedName[TQSL_CRQ_COUNTRY_MAX+1];
				*p = '\0';
				strncpy(fixedName, testName, sizeof fixedName);
				strncat(fixedName, cdel, sizeof fixedName - strlen(fixedName));
				p += strlen("DELETED");		// Go past the DELETED string
				strncat(fixedName, p, sizeof fixedName - strlen(fixedName));
				deleted_entity_list[deletedEntities].number = entityNum;
				deleted_entity_list[deletedEntities].name = strdup(fixedName);
				deleted_entity_list[deletedEntities++].zonemap = zonemap;
			}
		}
		qsort(entity_list, activeEntities, sizeof(struct _dxcc_entity), &_ent_cmp);
		qsort(deleted_entity_list, deletedEntities, sizeof(struct _dxcc_entity), &_ent_cmp);
		for (int j = 0; activeEntities < num_entities; ) {
			entity_list[activeEntities++] = deleted_entity_list[j++];
		}
	}
	_init = true;
	return _init;
}

bool
DXCC::getFirst() {
	tqslTrace("DXCC::getFirst", NULL);
	if (!init())
		return false;
	_index = -1;
	return getNext();
}

bool
DXCC::getNext() {
	int newidx = _index+1;
	if (newidx < 0 || newidx >= num_entities) {
		tqslTrace("DXCC::getNext", "index error, newidx=%d, n=%d", newidx, num_entities);
		return false;
	}
	_index = newidx;
	_number = entity_list[newidx].number;
	_name = entity_list[newidx].name;
	_zonemap = entity_list[newidx].zonemap;
	return true;
}

bool
DXCC::getByEntity(int e) {
	tqslTrace("DXCC::getByEntity", "e=%d", e);
	_number = 0;
	_name = "<NONE>";
	_zonemap = "";
	if (!init())
		return false;
	for (int i = 0; i < num_entities; i++) {
		if (entity_list[i].number == e) {
			_index = i;
			_number = entity_list[i].number;
			_name = entity_list[i].name;
			_zonemap = entity_list[i].zonemap;
			return true;
		}
	}
	return false;
}


