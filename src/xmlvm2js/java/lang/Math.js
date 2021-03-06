/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

qx.Class.define("java_lang_Math", {
  extend: java_lang_Object,
  statics:
  {
  	$random: function() {
  		return Math.random();
  	},
  	$abs___float: function(f) {
  		return f < 0 ? f * -1.0 : f;
  	},
  	$abs___int: function(i) {
  		return i < 0 ? i * -1 : i;
  	},
  	$cos___double: function(d) {
  		return Math.cos(d);
  	},
  	$floor___double: function(d) {
  		return Math.floor(d);
  	}
  }
});
