# A Few of My Favorite Things examples
The components in this package are related to the session
**ISPF Master Class - A Few of My Favorite Things**
given by me at SHARE and GSE-UK conferences.

Please provide me with any suggestions and/or corrections.

Dan Dirkse
ztools.channel@gmail.com


The following files make up the package and should be maintained with
the GNU GENERAL PUBLIC LICENSE contained in the @LICENSE.TXT file.

@LICENSE.TXT - GNU GENERAL PUBLIC LICENSE<br />
@README.TXT  - This file<br />
BATEDIT.REX  - Exec to call the editor in batch<br />
BATJCL.JCL   - JCL to call BATEDIT<br />
CHANGEIT.REX - Example initial edit macro used by BATEDIT<br />
COMPDSN.REX  - Edit macro to compare data sets (called by COMPJCL)<br />
COMPJCL.REX  - Edit macro to compare JCL member to the 'system' library<br />
DEDUDLP.PAN  - Alternate 3.4 panel with point-and-shoot selection list<br />
DIRLIST.REX  - Exec to display a directory list<br />
DSL2CMD.REX  - Edit macro to convert DSLIST SAVE output to a command<br />
EE.REX       - Exec to edit an ISPF Library<br />
EJ.REX       - Exec to edit a data set<br />
ES.REX       - Exec to edit a concatenation of (up to 16) data sets<br />
FIND.REX     - Exec to perform a find against sequential data set from 3.4<br />
FINDMAC.REX  - Edit macro to perform the find by the FIND.REX exec from 3.4<br />
INLINE.REX   - Edit macro to copy text from DSN on cursor line as a SYSIN DD *<br />
ISPFBAT.JCL  - JCL Procedure example to run ISPF in batch (used by BATJCL)<br />
LCPROC.REX   - Exec used to process line commands for a directory list<br />
LMCENTER.REX - Line command edit macro to center data line(s)<br />
LMDDISP.REX  - Exec to display a data set list<br />
LMDLIST1.REX - Exec to query a data set list<br />
LMDLIST2.REX - Exec to query a single GDG generation<br />
LMDLIST3.REX - Exec to query a data set list and do a SAVE<br />
LMDO.REX     - Line command edit macro to wrap Do-End around data line(s)<br />
LMMLIST1.REX - Exec to query a member list<br />
LMMLIST2.REX - Exec to query a member list and do a SAVE<br />
LMSPY.REX    - Line command edit macro to add an ISREMSPY line after data line<br />
MARKDIFF.REX - Edit macro to show differences between to lines in the data<br />
MEMLIST.REX  - Exec to display an enhanced member list w/3.1 functions<br />
MEM2SEL.REX  - Edit macro to convert member list SAVE output to IEBCOPY<br />
NXCOPY.REX   - Edit macro to copy source data after/before each NX data line<br />
RESC.REX     - Edit macro to reset after a COMPARE command<br />
S.REX        - Exec to handle the S line command on enhanced member lists<br />
SETSTART.REX - Exec to set the ZSTART Profile variable to start multiple screens<br />
SRCHFOR.JCL  - JCL to call SrchFor in batch with command examples<br />
STEPS.REX    - Edit macro to show only JCL EXEC statements<br />
SUPERC.JCL   - JCL to call SuperC in batch with command examples<br />

Note: Due to character set changes while downloading/uploading the LMDO macro
      you may need to manually update the SEEK statement's picture string.
      The character between the single quotes needs to be a not sign (hex 5F).
