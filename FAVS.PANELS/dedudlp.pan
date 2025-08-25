)PANEL KEYLIST(ISRSAB,ISR)
)ATTR DEFAULT() FORMAT(MIX)             /* ISRUDLP - ENGLISH - 8.1 */
 0B TYPE(AB)
 0D TYPE(PS)
 04 TYPE(ABSL) GE(ON)
 05 TYPE(PT)
 09 TYPE(FP)
 0A TYPE(NT)
 0C TYPE(NT) SKIP(ON)
 11 TYPE(SAC)
 12 TYPE(CEF) PADC(USER)
 13 TYPE(NEF) PADC(USER)
 14 TYPE(NEF) PADC(USER) PAS(ON)                              /* DAND */
 15 TYPE(CEF) PADC(USER) PAS(ON)                              /* DAND */
 22 TYPE(WASL) SKIP(ON) GE(ON)
 08 TYPE(CH)
 10 TYPE(ET)
 25 TYPE(NEF) CAPS(ON) PADC(USER) PAS(ON)                     /* DAND */
 26 TYPE(NEF) CAPS(ON) PADC(USER)
 27 AREA(SCRL) EXTEND(ON)
 28 TYPE(GRPBOX)
 29 TYPE(SAC) CSRGRP(99) RADIO(ON)
 2A TYPE(CEF) PADC(USER) CKBOX(ON)
)ABC DESC('Menu') MNEM(1)
PDC DESC('Settings') UNAVAIL(ZPM1) MNEM(1) ACC(CTRL+S)
 ACTION RUN(ISRROUTE) PARM('SET')
PDC DESC('View') UNAVAIL(ZPM2) MNEM(1) ACC(CTRL+V)
 ACTION RUN(ISRROUTE) PARM('BR1')
PDC DESC('Edit') UNAVAIL(ZPM3) MNEM(1) ACC(CTRL+E)
 ACTION RUN(ISRROUTE) PARM('ED1')
PDC DESC('ISPF Command Shell') UNAVAIL(ZPM4) MNEM(6) ACC(CTRL+C)
 ACTION RUN(ISRROUTE) PARM('C1')
PDC DESC('Dialog Test...') UNAVAIL(ZPM5) MNEM(8) ACC(CTRL+T)
 ACTION RUN(ISRROUTE) PARM('DAL')
PDC DESC('Other IBM Products...') UNAVAIL(ZPM6) MNEM(1) ACC(CTRL+O)
 ACTION RUN(ISRROUTE) PARM('OIB')
PDC DESC('SCLM') UNAVAIL(ZPM7) MNEM(3) ACC(CTRL+L)
 ACTION RUN(ISRROUTE) PARM('SCL')
PDC DESC('ISPF Workplace') UNAVAIL(ZPM8) MNEM(6) ACC(CTRL+W)
 ACTION RUN(ISRROUTE) PARM('WRK')
PDC DESC('Status Area...') UNAVAIL(ZPMS) MNEM(8) ACC(CTRL+A)
 ACTION RUN(ISRROUTE) PARM('SAM')
PDC DESC('Exit') MNEM(2) PDSEP(ON) ACC(CTRL+X) ACTION RUN(EXIT)
)ABCINIT
.ZVARS=ISR@OPT
)ABC DESC('RefList') MNEM(1)
PDC DESC('Current Personal Data Set List &ZDSCURT.') MNEM(1) ACC(CTRL+ALT+P)
 ACTION RUN(ISRRLIST) PARM('PL1')
PDC DESC('List of Personal Data Set Lists') MNEM(1) PDSEP(ON) ACC(CTRL+SHIFT+P)
 ACTION RUN(ISRRLIST) PARM('PL2')
)ABCINIT
.ZVARS=REFLIST
      VGET (ZCURTB) PROFILE
      IF (&ZCURTB = &Z) &ZDSCURT = &Z
      ELSE &ZDSCURT= '(&ZCURTB.)'
)ABC DESC('RefMode') MNEM(2)
PDC DESC('List Execute') UNAVAIL(REFM1) MNEM(1) ACTION RUN(ISRRLIST) PARM('DEX')
PDC DESC('List Retrieve') UNAVAIL(REFM2) MNEM(2)
 ACTION RUN(ISRRLIST) PARM('DRT')
)ABCINIT
.ZVARS=REFMODE
VGET (ZDLIST) PROFILE
IF (&ZDLIST = 'EXECUTE')
  &refm1 = 1
  &refm2 = 0
  &refmode = 2
ELSE
  &refm1 = 0
  &refm2 = 1
  &refmode = 1
)ABC DESC('Utilities') MNEM(1)
PDC DESC('Library') UNAVAIL(ZUT1) MNEM(1) ACC(ALT+1)
 ACTION RUN(ISRROUTE) PARM('U1')
PDC DESC('Data set') UNAVAIL(ZUT2) MNEM(1) ACC(ALT+2)
 ACTION RUN(ISRROUTE) PARM('U2')
PDC DESC('Move/Copy') UNAVAIL(ZUT3) MNEM(1) ACC(ALT+3)
 ACTION RUN(ISRROUTE) PARM('U3')
PDC DESC('Data Set List') UNAVAIL(ZUT4) MNEM(2) ACC(ALT+4)
 ACTION RUN(ISRROUTE) PARM('U4')
PDC DESC('Reset Statistics') UNAVAIL(ZUT5) MNEM(5) ACC(ALT+5)
 ACTION RUN(ISRROUTE) PARM('U5')
PDC DESC('Hardcopy') UNAVAIL(ZUT6) MNEM(8) ACC(ALT+6)
 ACTION RUN(ISRROUTE) PARM('U6')
PDC DESC('Reserved') UNAVAIL(ZUTDT) MNEM(1) ACTION RUN(ISRROUTE) PARM('UDT')
PDC DESC('Outlist') UNAVAIL(ZUT7) MNEM(1) ACC(ALT+8)
 ACTION RUN(ISRROUTE) PARM('U8')
PDC DESC('Commands...') UNAVAIL(ZUT8) MNEM(1) ACC(ALT+9)
 ACTION RUN(ISRROUTE) PARM('U9')
PDC DESC('Reserved') UNAVAIL(ZUT9) MNEM(6) ACTION RUN(ISRROUTE) PARM('U10')
PDC DESC('Format') UNAVAIL(ZUT10) MNEM(1) ACC(ALT+F1)
 ACTION RUN(ISRROUTE) PARM('U11')
PDC DESC('SuperC') UNAVAIL(ZUT11) MNEM(1) PDSEP(ON) ACC(CTRL+F2)
 ACTION RUN(ISRROUTE) PARM('U12')
PDC DESC('SuperCE') UNAVAIL(ZUT12) MNEM(2) ACC(CTRL+F3)
 ACTION RUN(ISRROUTE) PARM('U13')
PDC DESC('Search-For') UNAVAIL(ZUT13) MNEM(2) ACC(CTRL+F4)
 ACTION RUN(ISRROUTE) PARM('U14')
PDC DESC('Search-ForE') UNAVAIL(ZUT14) MNEM(6) ACC(CTRL+F5)
 ACTION RUN(ISRROUTE) PARM('U15')
PDC DESC('Table Utility') UNAVAIL(ZUT15) MNEM(3) ACC(CTRL+F6)
 ACTION RUN(ISRROUTE) PARM('U16')
PDC DESC('Directory List') UNAVAIL(ZUT16) MNEM(2) ACC(CTRL+F7)
 ACTION RUN(ISRROUTE) PARM('U17')
)ABCINIT
.ZVARS=PDFUTIL
&zutdt = '1'
&zut9 = '1'
)ABC DESC('Help') MNEM(1)
PDC DESC('General') MNEM(1) ACTION RUN(TUTOR) PARM('ISR34000')
PDC DESC('Displaying a Data Set List') MNEM(1)
 ACTION RUN(TUTOR) PARM('ISR34010')
PDC DESC('Printing a Data Set List') MNEM(1) ACTION RUN(TUTOR) PARM('ISR34020')
PDC DESC('Display/Print VTOC Information') MNEM(2)
 ACTION RUN(TUTOR) PARM('ISR34040')
PDC DESC('Appendices') MNEM(1) ACTION RUN(TUTOR) PARM('ISR00004')
PDC DESC('Index') MNEM(2) ACTION RUN(TUTOR) PARM('ISR91000')
)ABCINIT
.ZVARS=EDMHELP
)BODY  CMD(ZCMD)
 Menu RefList RefMode Utilities Help
------------------------------------------------------------------------------
                           	Data Set List Utility                            
Option ===>Z                                                                 
SAREA39                                                                       
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
)AREA SAREA39
 blankDisplay data set list            PPrint data set list           
     VDisplay VTOC information        PVPrint VTOC information        

Enter one or both of the parameters below:                                   
 Dsname Level . . .Z                                             
 Volume serial  . .Z     
  
Select the Dsname Level/Volume serial combination desired:
  
Z . .DEDLV0                                        . .DEDVO0
  
Z . .DEDLV1                                        . .DEDVO1
  
Z . .DEDLV2                                        . .DEDVO2
  
Z . .DEDLV3                                        . .DEDVO3
  
Z . .DEDLV4                                        . .DEDVO4
  
Z . .DEDLV5                                        . .DEDVO5
  
Z . .DEDLV6                                        . .DEDVO6
  
Z . .DEDLV7                                        . .DEDVO7
  
Z . .DEDLV8                                        . .DEDVO8
  
Z . .DEDLV9                                        . .DEDVO9
  
Z . .DEDLVA                                        . .DEDVOA
  
Z . .DEDLVB                                        . .DEDVOB
  
Z . .DEDLVC                                        . .DEDVOC
  
Z . .DEDLVD                                        . .DEDVOD
  
Z . .DEDLVE                                        . .DEDVOE
  
Z . .DEDLVF                                        . .DEDVOF
  
GRPBOX1
 Initial View            &multipmt.                    
 Z1.Volume             ZConfirm Data Set Delete                  
    2.Space              ZConfirm Member Delete                    
    3.Attrib             ZInclude Additional Qualifiers            
    4.Total              ZDisplay Catalog Name                     
                              ZDisplay Total Tracks                     
                              ZPrefix Dsname Level                      
 
When the data set list is displayed, enter either:                           
"/"on the data set list command field for the command prompt pop-up,      
an ISPF line command, the name of a TSO command, CLIST, or REXX exec, or   
"="to execute the previous command.                                       
)INIT
.ZVARS = '(ZCMD ZDLDSNLV ZDLPVL S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 +
           SA SB SC SD SE SF +
           ZUPIVV ZDSLCONV ZMEMCONV ZDSNQALV ZDSPCATV +
           ZDSPTOTV ZDLDSNPV)'
&ZWINTTL = ' '
.HELP = ISR34000
&ZCMD = ' '
.ATTR(ZUPIVV)='CSRGRP(99) RADIO(ON)'
&uref1 = 1
&uref2 = 1
&uref3 = 1
&ZUT4 = 1
IF (.MSG = &Z)
  .CURSOR = ZDLDSNLV                                          /* DAND */
/*.CURSOR = ZCMD      */                                      /* DAND */
&ZCMD = &ZUOPT
&ZUPIV = TRANS (&ZUVIEW 0,VOLUME 1,SPACE 2,ATTRIB 3,TOTAL *,VOLUME)
&ZUPIVV = TRANS (&ZUPIV VOLUME,1 SPACE,2 ATTRIB,3 TOTAL,4)
&S0 = &Z                                                      /* DAND */
&S1 = &Z                                                      /* DAND */
&S2 = &Z                                                      /* DAND */
&S3 = &Z                                                      /* DAND */
&S4 = &Z                                                      /* DAND */
&S5 = &Z                                                      /* DAND */
&S6 = &Z                                                      /* DAND */
&S7 = &Z                                                      /* DAND */
&S8 = &Z                                                      /* DAND */
&S9 = &Z                                                      /* DAND */
&SA = &Z                                                      /* DAND */
&SB = &Z                                                      /* DAND */
&SC = &Z                                                      /* DAND */
&SD = &Z                                                      /* DAND */
&SE = &Z                                                      /* DAND */
&SF = &Z                                                      /* DAND */
VGET (ZMEMCONF) SHARED                         /*                @A2C*/
IF (&ZMEMCONF = &Z)                            /*             OW18431*/
  &ZMEMCONF = 'ON'                             /*             OW18431*/
&ZMEMCONV = TRANS(&ZMEMCONF OFF,' ' *,'/')     /*             OW18431*/
VGET (ZDSLCONF) SHARED                         /* profile      piggyA*/
&ZDSLCONV = TRANS(&ZDSLCONF 'OFF',' ' *,'/')   /*              piggyA*/
VGET (ZDSNQALF) PROFILE                        /* dsname qualifierP3A*/
&ZDSNQALV = TRANS(&ZDSNQALF 'OFF',' ' *,'/')   /* dsname qualifierP3A*/
VGET (ZDSPCATF) PROFILE                        /* display catalog Q5A*/
&ZDSPCATV = TRANS(&ZDSPCATF 'OFF',' ' *,'/')   /* name            Q5A*/
VGET (ZDSPTOTF) PROFILE                        /* display      @HTTVL*/
&ZDSPTOTV = TRANS(&ZDSPTOTF 'ON','/' *,' ')    /* Totals       @HTTVL*/
VGET (ZDLDSNPF) PROFILE                        /* prefix       @JDLST*/
&ZDLDSNPV = TRANS(&ZDLDSNPF 'ON','/' *,' ')    /* dsname level @JDLST*/
.NRET = ON     /* Enable retrieve key                                */
.NRET = DSLIST /* Don't retrieve workstation names. Don't verify     */
&GRPBOX1 = 'Data set list options'
.ATTR(GRPBOX1) = 'WIDTH(77) DEPTH(8)'
IF (&ZGUI = ' ')
  &MULTIPMT='Enter "/" to select option    '
ELSE
  &MULTIPMT='Check box to select option    '
)REINIT
REFRESH(ZDSLCONV ZMEMCONV ZDSNQALV ZDSPCATV ZDSPTOTV ZDLDSNPV ZDLDSNLV)
IF (&ZNXTMSG='ISRT') .CSRPOS = &ZCSRP  /* AUTOTYPE */
                     .CURSOR = &ZCSRV  /* AUTOTYPE */
  IF (&ZCSRV = ZDLDSNLV) &ZDLPVL = &Z      /* AUTOTYPE */
ELSE &ZXZX = &Z                        /* AUTOTYPE */
REFRESH(ZDLPVL)
.CURSOR = ZDLDSNLV
VGET (ZDSPCATF) PROFILE                        /* display catalog Q5A*/
&ZDSPCATV = TRANS(&ZDSPCATF 'OFF',' ' *,'/')   /* name            Q5A*/
VGET (ZDSPTOTF) PROFILE                        /* display      @HTTVL*/
&ZDSPTOTV = TRANS(&ZDSPTOTF 'ON','/' *,' ')    /* Totals       @HTTVL*/
VGET (ZDLDSNPF) PROFILE                        /* prefix       @JDLST*/
&ZDLDSNPV = TRANS(&ZDLDSNPF 'ON','/' *,' ')    /* dsname level @JDLST*/
.NRET = ON     /* Enable retrieve key                                */
.NRET = DSLIST /* Don't retrieve workstation names. Don't verify     */
REFRESH (*)
)PROC
.NRET = OFF                       /* AUTOTYPE */
&ZCSRV = .CURSOR                  /* AUTOTYPE */
&ZCSRP = .CSRPOS                  /* AUTOTYPE */
&ZODSNLN = 46                     /* AUTOTYPE */
&ZODSNMB = '%'                    /* AUTOTYPE */
&ZNAMES='ZCSRV ZCSRP * * * * * * * ZDLDSNLV.&ZODSNLN.&ZODSNMB. ZCMD'
PANEXIT((ZNAMES),LOAD,ISRAUTOT)    /* AUTOTYPE */
IF (&ZNXTMSG='ISRT') EXIT         /* AUTOTYPE */
.NRET = NODSLIST  /* Don't use special DSLIST restrictions any more  */
VGET (ZVERB,ZCURTB)
IF (&ZVERB = NRETRIEV)
   .NRET = DSN
   IF (&ZNRDS = YES)
       .CURSOR = ZDLDSNLV
       &ZRDSN  = &ZNRODSN
       &ZRVOL  = &ZNRVOL                   /* OA10134 */
       &ZVOL = &Z
       VPUT (ZRDSN ZRVOL ZVOL) SHARED      /* OA10134 */
     .MSG = ISRDS014
   ELSE .MSG = ISRDS012
VGET (ZRDSN ZRVOL) SHARED
IF (&S0 ^= ' ')                                               /* DAND */
  &ZDLDSNLV = &DEDLV0                                         /* DAND */
  &ZDLPVL   = &DEDVO0                                         /* DAND */
ELSE                                                          /* DAND */
  IF (&S1 ^= ' ')                                             /* DAND */
    &ZDLDSNLV = &DEDLV1                                       /* DAND */
    &ZDLPVL   = &DEDVO1                                       /* DAND */
  ELSE                                                        /* DAND */
    IF (&S2 ^= ' ')                                           /* DAND */
      &ZDLDSNLV = &DEDLV2                                     /* DAND */
      &ZDLPVL   = &DEDVO2                                     /* DAND */
    ELSE                                                      /* DAND */
      IF (&S3 ^= ' ')                                         /* DAND */
        &ZDLDSNLV = &DEDLV3                                   /* DAND */
        &ZDLPVL   = &DEDVO3                                   /* DAND */
      ELSE                                                    /* DAND */
        IF (&S4 ^= ' ')                                       /* DAND */
          &ZDLDSNLV = &DEDLV4                                 /* DAND */
          &ZDLPVL   = &DEDVO4                                 /* DAND */
        ELSE                                                  /* DAND */
          IF (&S5 ^= ' ')                                     /* DAND */
            &ZDLDSNLV = &DEDLV5                               /* DAND */
            &ZDLPVL   = &DEDVO5                               /* DAND */
          ELSE                                                /* DAND */
            IF (&S6 ^= ' ')                                   /* DAND */
              &ZDLDSNLV = &DEDLV6                             /* DAND */
              &ZDLPVL   = &DEDVO6                             /* DAND */
            ELSE                                              /* DAND */
              IF (&S7 ^= ' ')                                 /* DAND */
                &ZDLDSNLV = &DEDLV7                           /* DAND */
                &ZDLPVL   = &DEDVO7                           /* DAND */
              ELSE                                            /* DAND */
                IF (&S8 ^= ' ')                               /* DAND */
                  &ZDLDSNLV = &DEDLV8                         /* DAND */
                  &ZDLPVL   = &DEDVO8                         /* DAND */
                ELSE                                          /* DAND */
                  IF (&S9 ^= ' ')                             /* DAND */
                    &ZDLDSNLV = &DEDLV9                       /* DAND */
                    &ZDLPVL   = &DEDVO9                       /* DAND */
                  ELSE                                        /* DAND */
                    IF (&SA ^= ' ')                           /* DAND */
                      &ZDLDSNLV = &DEDLVA                     /* DAND */
                      &ZDLPVL   = &DEDVOA                     /* DAND */
                    ELSE                                      /* DAND */
                      IF (&SB ^= ' ')                         /* DAND */
                        &ZDLDSNLV = &DEDLVB                   /* DAND */
                        &ZDLPVL   = &DEDVOB                   /* DAND */
                      ELSE                                    /* DAND */
                        IF (&SC ^= ' ')                       /* DAND */
                          &ZDLDSNLV = &DEDLVC                 /* DAND */
                          &ZDLPVL   = &DEDVOC                 /* DAND */
                        ELSE                                  /* DAND */
                          IF (&SD ^= ' ')                     /* DAND */
                            &ZDLDSNLV = &DEDLVD               /* DAND */
                            &ZDLPVL   = &DEDVOD               /* DAND */
                          ELSE                                /* DAND */
                            IF (&SE ^= ' ')                   /* DAND */
                              &ZDLDSNLV = &DEDLVE             /* DAND */
                              &ZDLPVL   = &DEDVOE             /* DAND */
                            ELSE                              /* DAND */
                              IF (&SF ^= ' ')                 /* DAND */
                                &ZDLDSNLV = &DEDLVF           /* DAND */
                                &ZDLPVL   = &DEDVOF           /* DAND */
IF (&ZRDSN ^= ' ')                         /* REFLIST ds selected ?  */
  &ZFDSN = TRUNC(&ZRDSN,'1')
  IF (&ZFDSN = '''')                       /* ds quoted?             */
    IF (&ZDLDSNPF ^= 'ON')                 /* Prefix ds ^ sel  @JDLST*/
      &ZTDSN = TRUNC(&ZRDSN,'''')          /* remove quotes          */
      &ZRDSN = .TRAIL
      &ZRDSN = TRUNC(&ZRDSN,'''')
      &ZRDSN = TRUNC(&ZRDSN,'(')
    &ZDLDSNLV = &ZRDSN
  ELSE                                     /* ds not quoted          */
    &ZTDSN = TRUNC(&ZRDSN,'.')
    &ZRDSN = TRUNC(&ZRDSN,'(')
    IF (&ZTDSN = &ZPREFIX)                 /* first qual is prefix   */
      &ZDLDSNLV = &ZRDSN
    ELSE
      IF (&ZPREFIX ^= &Z)                  /*                 OW09412*/
        IF (&ZDLDSNPF ^= 'ON')             /* Prefix ds ^ sel  @JDLST*/
          &ZDLDSNLV = '&ZPREFIX..&ZRDSN'   /*                 OW09412*/
        ELSE                               /*                  @JDLST*/
          &ZDLDSNLV = &ZRDSN               /*                  @JDLST*/
      ELSE                                 /*                 OW09412*/
        &ZDLDSNLV = &ZRDSN                 /*                 OW09412*/
  VGET (ZREFVOLM) PROFILE
  IF (&ZREFVOLM = 'ON')
    &ZDLPVL = &ZRVOL
  ELSE                                                     /* OW15849*/
    &ZDLPVL = &Z                                           /* OW15849*/
  &ZRDSN = ' '
  &ZRVOL = ' '
  .CURSOR = ZDLDSNLV
  VPUT (ZRDSN ZRVOL) SHARED
  VGET (ZDLIST) PROFILE
  IF (&ZDLIST ^= 'EXECUTE')
    .MSG = ISRDS003
&ZUNIXT = TRUNC(&ZDLDSNLV,1)
&ZUNIXT = TRANS(&ZUNIXT '/',Y,'.',Y,'~',Y,'*',N)
IF (&ZUNIXT = 'N')
  &ZDLDSNLV = UPPER(ZDLDSNLV)
  &ZMEMCONV = TRANS(&ZMEMCONV,' ',' ' *,'/')
  &ZMEMCONF = TRANS(&ZMEMCONV,' ','OFF' *,'ON')
  VPUT (ZMEMCONF) SHARED                                /*         @A2C*/
  &ZDSLCONV = TRANS(&ZDSLCONV,' ',' ' *,'/')            /*       piggyA*/
  &ZDSLCONF = TRANS(&ZDSLCONV,' ','OFF' *,'ON')         /*       piggyA*/
  VPUT (ZDSLCONF) SHARED                          /* profile     piggyA*/
  &ZDSNQALV = TRANS(&ZDSNQALV,' ',' ' *,'/')            /*         @P3A*/
  &ZDSNQALF = TRANS(&ZDSNQALV,' ','OFF' *,'ON')         /*         @P3A*/
  VPUT (ZDSNQALF) PROFILE                         /* profile pool  @P3A*/
  &ZDSPCATV = TRANS(&ZDSPCATV,' ',' ' *,'/')            /*         @Q5A*/
  &ZDSPCATF = TRANS(&ZDSPCATV,' ','OFF' *,'ON')         /*         @Q5A*/
  VPUT (ZDSPCATF) PROFILE                         /* profile pool  @Q5A*/
  &ZDSPTOTV = TRANS(&ZDSPTOTV,' ',' ' *,'/')            /*       @HTTVL*/
  &ZDSPTOTF = TRANS(&ZDSPTOTV,' ','OFF' *,'ON')         /*       @HTTVL*/
  VPUT (ZDSPTOTF) PROFILE                         /* profile pool@HTTVL*/
  &ZDLDSNPV = TRANS(&ZDLDSNPV,' ',' ' *,'/')      /* prefix      @JDLST*/
  &ZDLDSNPF = TRANS(&ZDLDSNPV,' ','OFF' *,'ON')   /* dsname      @JDLST*/
  VPUT (ZDLDSNPF) PROFILE                         /* level       @JDLST*/
  VER (&ZUPIVV,LIST,1,2,3,4)
  &ZUPIV = TRANS(&ZUPIVV 1,VOLUME 2,SPACE 3,ATTRIB 4,TOTAL ' ',VOLUME)
  IF (&ZCMD ^= ' ')
    VER (&ZCMD,LIST,P,V,PV)
  &ZUOPT = TRUNC (&ZCMD,2)
  IF (&ZUOPT = 'V ','PV')
    VER (&ZDLPVL,NONBLANK)
  IF (&ZUOPT = '  ','P ')
    IF (&ZDLPVL = ' ')
      VER (&ZDLDSNLV,NONBLANK,MSG=ISRU187)
  &ZVIEW = TRUNC (&ZUPIV,1)
  VER (&ZVIEW,NB,LIST,V,S,A,T)
  &ZUPIV = TRANS (&ZVIEW V,VOLUME S,SPACE A,ATTRIB T,TOTAL *,*)
  &ZUVIEW = TRANS (&ZVIEW V,0 S,1 A,2 T,3 *,*)
VPUT (DEDLV0,DEDLV1,DEDLV2,DEDLV3,DEDLV4) PROFILE             /* DAND */
VPUT (DEDLV5,DEDLV6,DEDLV7,DEDLV8,DEDLV9) PROFILE             /* DAND */
VPUT (DEDLVA,DEDLVB,DEDLVC,DEDLVD,DEDLVE,DEDLVF) PROFILE      /* DAND */
VPUT (DEDVO0,DEDVO1,DEDVO2,DEDVO3,DEDVO4) PROFILE             /* DAND */
VPUT (DEDVO5,DEDVO6,DEDVO7,DEDVO8,DEDVO9) PROFILE             /* DAND */
VPUT (DEDVOA,DEDVOB,DEDVOC,DEDVOD,DEDVOE,DEDVOF) PROFILE      /* DAND */
)HELP
FIELD(ZDLDSNLV) PANEL(ISR34005)
FIELD(ZDLPVL) PANEL(ISR34008)
FIELD(ZUPIVV) PANEL(ISR34034)
FIELD(ZDSLCONV) PANEL(ISR34011)
FIELD(ZMEMCONV) PANEL(ISR34032)
FIELD(ZDSNQALV) PANEL(ISR2FLH1)
FIELD(ZDSPCATV) PANEL(ISR00423)
FIELD(ZDSPTOTV) PANEL(ISR34035)
FIELD(ZDLDSNPV) PANEL(ISR34037)
)PNTS
FIELD(ZPS01001) VAR(ZCMD) VAL(' ')
FIELD(ZPS01002) VAR(ZCMD) VAL(P)
FIELD(ZPS01003) VAR(ZCMD) VAL(V)
FIELD(ZPS01004) VAR(ZCMD) VAL(PV)
FIELD(S0)      VAR(S0) VAL(S)                                 /* DAND */
FIELD(DEDLV0)  VAR(S0) VAL(S)                                 /* DAND */
FIELD(DEDVO0)  VAR(S0) VAL(S)                                 /* DAND */
FIELD(S1)      VAR(S1) VAL(S)                                 /* DAND */
FIELD(DEDLV1)  VAR(S1) VAL(S)                                 /* DAND */
FIELD(DEDVO1)  VAR(S1) VAL(S)                                 /* DAND */
FIELD(S2)      VAR(S2) VAL(S)                                 /* DAND */
FIELD(DEDLV2)  VAR(S2) VAL(S)                                 /* DAND */
FIELD(DEDVO2)  VAR(S2) VAL(S)                                 /* DAND */
FIELD(S3)      VAR(S3) VAL(S)                                 /* DAND */
FIELD(DEDLV3)  VAR(S3) VAL(S)                                 /* DAND */
FIELD(DEDVO3)  VAR(S3) VAL(S)                                 /* DAND */
FIELD(S4)      VAR(S4) VAL(S)                                 /* DAND */
FIELD(DEDLV4)  VAR(S4) VAL(S)                                 /* DAND */
FIELD(DEDVO4)  VAR(S4) VAL(S)                                 /* DAND */
FIELD(S5)      VAR(S5) VAL(S)                                 /* DAND */
FIELD(DEDLV5)  VAR(S5) VAL(S)                                 /* DAND */
FIELD(DEDVO5)  VAR(S5) VAL(S)                                 /* DAND */
FIELD(S6)      VAR(S6) VAL(S)                                 /* DAND */
FIELD(DEDLV6)  VAR(S6) VAL(S)                                 /* DAND */
FIELD(DEDVO6)  VAR(S6) VAL(S)                                 /* DAND */
FIELD(S7)      VAR(S7) VAL(S)                                 /* DAND */
FIELD(DEDLV7)  VAR(S7) VAL(S)                                 /* DAND */
FIELD(DEDVO7)  VAR(S7) VAL(S)                                 /* DAND */
FIELD(S8)      VAR(S8) VAL(S)                                 /* DAND */
FIELD(DEDLV8)  VAR(S8) VAL(S)                                 /* DAND */
FIELD(DEDVO8)  VAR(S8) VAL(S)                                 /* DAND */
FIELD(S9)      VAR(S9) VAL(S)                                 /* DAND */
FIELD(DEDLV9)  VAR(S9) VAL(S)                                 /* DAND */
FIELD(DEDVO9)  VAR(S9) VAL(S)                                 /* DAND */
FIELD(SA)      VAR(SA) VAL(S)                                 /* DAND */
FIELD(DEDLVA)  VAR(SA) VAL(S)                                 /* DAND */
FIELD(DEDVOA)  VAR(SA) VAL(S)                                 /* DAND */
FIELD(SB)      VAR(SB) VAL(S)                                 /* DAND */
FIELD(DEDLVB)  VAR(SB) VAL(S)                                 /* DAND */
FIELD(DEDVOB)  VAR(SB) VAL(S)                                 /* DAND */
FIELD(SC)      VAR(SC) VAL(S)                                 /* DAND */
FIELD(DEDLVC)  VAR(SC) VAL(S)                                 /* DAND */
FIELD(DEDVOC)  VAR(SC) VAL(S)                                 /* DAND */
FIELD(SD)      VAR(SD) VAL(S)                                 /* DAND */
FIELD(DEDLVD)  VAR(SD) VAL(S)                                 /* DAND */
FIELD(DEDVOD)  VAR(SD) VAL(S)                                 /* DAND */
FIELD(SE)      VAR(SE) VAL(S)                                 /* DAND */
FIELD(DEDLVE)  VAR(SE) VAL(S)                                 /* DAND */
FIELD(DEDVOE)  VAR(SE) VAL(S)                                 /* DAND */
FIELD(SF)      VAR(SF) VAL(S)                                 /* DAND */
FIELD(DEDLVF)  VAR(SF) VAL(S)                                 /* DAND */
FIELD(DEDVOF)  VAR(SF) VAL(S)                                 /* DAND */
)END
/* 5650-ZOS     COPYRIGHT IBM CORP 1982, 2013 */
/* ISPDTLC Release: 8.1.  Level: PID                                  */
/* z/OS 03.01.00.  Created - Date: 10 Mar 2023, Time: 00:20           */
/* Selection List additions by Dan Dirkse ztools.channel@gmail.com    */
/* To use this panel, change panel ISRUTIL Option 4 to use a          */
/* PARM(DEDUDLP) instead of PARM(ISRUDLP).                            */
