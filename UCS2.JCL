//PJOBNAME     JOB 'JOBNAME',MSGCLASS=V,COND=(9,LT),
//             MSGLEVEL=(1,1),CLASS=P
//*------------------------------------------------------------------*<<
//* :DOC: GET FILE VIA FTP FOR MAINFRAME USAGE                       *<<
//*       USE UNICODE UCS-2 FOR DATA RETRIEVAL WITH LITTLE AND NOTYPE*<<
//*       FOR LITTLE-ENDIAN BYTE AND SUPPRESS TYPE COMMAND           *<<
//*------------------------------------------------------------------*<<
//FTPSTEP1     EXEC PGM=FTP,REGION=2M,COND=(1,LT),PARM='&IPADDR'
//NETRC        DD  DUMMY
//SYSPRINT     DD  SYSOUT=*
//SYSOUT       DD  SYSOUT=*
//OUTPUT       DD  SYSOUT=*
//INPUT        DD  DDNAME=SYSIN
//SYSFTPD      DD  DISP=SHR,DSN=TCPIP.TCPPARMS.BCSP(FTPSDATA)
//SYSIN        DD  *
  username password
  ascii
  UCS2 (LITTLE NOTYPE
  LOCSITE RECFM=VB
  LOCSITE LRECL=250
  LOCSITE BLKSIZE=254
  get srcfile 'PFIL.zos.file'
  quit
//*
