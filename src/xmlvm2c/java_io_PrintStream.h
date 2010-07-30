/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#ifndef __PRINTSTREAM_H__
#define __PRINTSTREAM_H__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include <stdio.h>

typedef int java_io_PrintStream;

inline JAVA_OBJECT __NEW_java_io_PrintStream()
{
	return JAVA_NULL;
}

inline void java_io_PrintStream_println___java_lang_String(JAVA_OBJECT me, java_lang_String* s)
{
	printf("%s\n", s->str);
}

/*
void println___int(int i) {
    std::cout << i << std::endl;
}

void println___float(float f) {
    std::cout << f << std::endl;
}
};
*/

#endif

