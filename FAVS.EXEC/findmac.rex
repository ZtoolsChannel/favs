/**************************** Rexx ***********************************/
/* Edit Macro used by FIND exec.  Searches for findstr passed as a   */
/* parameter and returns findrc and findcnt.                         */
/*********************************************************************/
Address ISREDIT "MACRO (FINDSTR)"
Address ISREDIT "F "findstr
findrc = rc

If findrc <= 4 Then
  Do
    Address ISREDIT "(FINDCNT) = FIND_COUNTS"
    findcnt = findcnt + 0
  End
Else
  findcnt = 0
Address ISPEXEC "VPUT (FINDRC,FINDCNT) SHARED"

If findrc = 4 Then
  Address ISREDIT "CANCEL "
/**********************************************************************/
/* Send questions, suggestions and/or bug reports to:                 */
/*                         Dan Dirkse                                 */
/*                   ztools.channel@gmail.com                         */
/**********************************************************************/
/*                                                                    */
/*             (C) Copyright The Z Tools Company, 2025                */
/*                                                                    */
/**********************************************************************/
/* This program is free software: you can redistribute it and/or      */
/* modify it under the terms of the GNU General Public License as     */
/* published by the Free Software Foundation, either version 3 of     */
/* the License, or (at your option) any later version.                */
/*                                                                    */
/* This program is distributed in the hope that it will be useful,    */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of     */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the       */
/* GNU General Public License for more details.                       */
/*                                                                    */
/* You should have received a copy of the GNU General Public License  */
/* along with this program. If not, see https://www.gnu.org/licenses/ */
/**********************************************************************/
