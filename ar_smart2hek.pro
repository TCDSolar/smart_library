;Take a SMART AR detection data structure (array), and convert into a HEK event structure (array)function ar_smart2hek, arstrarr, chain=chainstrarr, hekparam=hekeventmeta, fparam=fparam, params=inparam, dxdy=indxdy, xcyc=inxcyc, map=inmap ;, arstrarr, propstrarr, detstrarrif n_elements(inparam) eq 0 then param=ar_loadparam(fparam=fparam,meta=parammeta) else begin	param=inparam	paramtags=tag_names(param)	parammeta=[[paramtags],[strarr(n_elements(paramtags))]]endelseif n_elements(indxdy) eq 0 then begin	if n_elements(inmap) ne 0 then begin		map=inmap		dxdy=[map.dx,map.dy] 	endif else dxdy=[param.mdi_dx,param.mdi_dy] endif else dxdy=indxdyif data_type(hekeventmeta) ne 8 then $	hekeventmeta=ar_loadparam(fparam='ar_hek_param.txt');Do a test XML?testhek='false'nar=n_elements(arstrarr) hekstrarr=replicate(struct4event('ar'),nar)for i=0l,nar-1l do begin	arstr=arstrarr[i];	propstr=propstrarr[i];	detstr=detstrarr[i]	chainstr=chainstrarr[i]chainxy=ar_chainlist2xy(chainstr.BOUND_CHAINCODE);--------------------------------------------------------->;INPUTS;ARSTR;   SSZN            STRING    '0000001';   DATAFILE        STRING    'fd_M_96m_01d.1218.0000.fits';   ARID            INT              1;   DATE            STRING    '2-May-1996 23:28:04.861';   HGPOS           STRING    '-39.55054,-6.76069';   HCPOS           STRING    '-609.77055,-62.65432';   PXPOS           STRING    '203.71601,480.74146';   PXSCL_HPC2STG   DOUBLE           0.0000000;   DEG2DC          DOUBLE           40.026300;   NPSL            INT              1;   BMAX            FLOAT           1638.00;   AREA            FLOAT           8797.80;   AREAFRAC        DOUBLE          0.71740000;   AREATHRESH      FLOAT           1514.40;   FLUX            FLOAT       1.02050e+22;   FLUXFRAC        DOUBLE          0.44610000;   BIPOLESEP       DOUBLE           30.269100;   PSLLENGTH       DOUBLE           24.172300;   PSLCURVATURE    DOUBLE           0.0000000;   RVALUE          FLOAT           8879.90;   WLSG            FLOAT           9006.00;   POSSTATUS       INT              7;   MAGSTATUS       INT              0;   DETSTATUS       INT              7;   SSZSTATUS       INT              1;CHAINSTR;   BOUND_CCNSTEPS  LONG              1958;   BOUND_CCSTARTC1 LONG               158;   BOUND_CCSTARTC2 LONG              1413;   BOUND_CHAINCODE STRING    '158,1413,160,1413,162,1413,164,1413,166,1413,168,1413,170,1413,172,1413,174,1413,176,1413,178,1413,180,1413,182,14'...;   CHAINCODETYPE   STRING    'ordered list';--------------------------------------------------------->;MATCH TO HEK TAGS;PARENT;   REQUIRED        STRUCT    -> <Anonymous> Array[1];   OPTIONAL        STRUCT    -> <Anonymous> Array[1];   SPECFILE        STRING    '/archive/ssw/vobs/ontology/data/VOEvent_Spec.txt';   REFERENCE_NAMES STRING    Array[20];   REFERENCE_LINKS STRING    Array[20];   REFERENCE_TYPES STRING    Array[20];   DESCRIPTION     STRING    '';   CITATIONS       STRUCT    -> <Anonymous> Array[20];REQUIRED;   EVENT_TYPE      STRING    'AR: ActiveRegion';   KB_ARCHIVDATE   STRING    'Reserved for KB archivist: KB entry date';   KB_ARCHIVID     STRING    'Reserved for KB archivist: KB entry identifier';   KB_ARCHIVIST    STRING    'Reserved for KB archivist: KB entry made by';   KB_ARCHIVURL    STRING    'Reserved for KB archivist: URL to suppl. info.';   EVENT_COORDSYS  STRING    'UTC-HPC-TOPO';   EVENT_COORDUNIT STRING    'blank';   EVENT_ENDTIME   STRING    '1492-10-12 00:00:00';   EVENT_STARTTIME STRING    '1492-10-12 00:00:00';   EVENT_COORD1    FLOAT               Inf;   EVENT_COORD2    FLOAT               Inf;   EVENT_C1ERROR   FLOAT               Inf;   EVENT_C2ERROR   FLOAT               Inf;   FRM_CONTACT     STRING    'blank';   FRM_DATERUN     STRING    'blank';   FRM_HUMANFLAG   STRING    'blank';   FRM_IDENTIFIER  STRING    'blank';   FRM_INSTITUTE   STRING    'blank';   FRM_NAME        STRING    'blank';   FRM_PARAMSET    STRING    'blank';   FRM_URL         STRING    'blank';   OBS_OBSERVATORY STRING    'blank';   OBS_CHANNELID   STRING    'blank';   OBS_INSTRUMENT  STRING    'blank';   OBS_MEANWAVEL   FLOAT               Inf;   OBS_WAVELUNIT   STRING    'blank';   BOUNDBOX_C1LL   FLOAT               Inf;   BOUNDBOX_C2LL   FLOAT               Inf;   BOUNDBOX_C1UR   FLOAT               Inf;   BOUNDBOX_C2UR   FLOAT               Inf;OPTIONAL;   EVENT_PROBABILITY;                   FLOAT               Inf;   EVENT_IMPORTANCE;                   FLOAT               Inf;   EVENT_EXPIRES   STRING    '1492-10-12 00:00:00';   EVENT_COORD3    FLOAT               Inf;   EVENT_MAPURL    STRING    'blank';   EVENT_MASKURL   STRING    'blank';   EVENT_CLIPPEDSPATIAL;                   STRING    'blank';   EVENT_CLIPPEDTEMPORAL;                   STRING    'blank';   EVENT_TESTFLAG  STRING    'blank';   EVENT_DESCRIPTION;                   STRING    'blank';   FRM_VERSIONNUMBER;                   FLOAT               Inf;   FRM_SPECIFICID  STRING    'blank';   OBS_TITLE       STRING    'blank';   BOUND_CCNSTEPS  LONG           -999999;   BOUND_CCSTARTC1 FLOAT               Inf;   BOUND_CCSTARTC2 FLOAT               Inf;   BOUND_CHAINCODE STRING    'blank';   CHAINCODETYPE   STRING    'blank';   RASTERSCAN      STRING    'blank';   RASTERSCANTYPE  STRING    'blank';   AR_MCINTOSHCLS  STRING    'blank';   AR_MTWILSONCLS  STRING    'blank';   AR_ZURICHCLS    STRING    'blank';   AR_PENUMBRACLS  STRING    'blank';   AR_COMPACTNESSCLS;                   STRING    'blank';   AR_NOAACLASS    STRING    'blank';   AR_NOAANUM      LONG           -999999;   AR_NUMSPOTS     INT          -9999;   AR_POLARITY     INT          -9999                                  ;   AR_SPOTAREARAW  FLOAT               Inf                             ;   AR_SPOTAREARAWUNCERT                                                ;                   FLOAT               Inf                             ;   AR_SPOTAREARAWUNIT                                                  ;                   STRING    'blank'                                   ;   AR_SPOTAREAREPR FLOAT               Inf                             ;   AR_SPOTAREAREPRUNCERT                                               ;                   FLOAT               Inf                             ;   AR_SPOTAREAREPRUNIT                                                 ;                   STRING    'blank'                                   ;   SHARP_NOAA_ARS  STRING    'blank'                                   ;   INTENSMIN       FLOAT               Inf                             ;   INTENSMAX       FLOAT               Inf                             ;   INTENSMEAN      FLOAT               Inf                             ;   INTENSMEDIAN    FLOAT               Inf                             ;   INTENSVAR       FLOAT               Inf                             ;   INTENSSKEW      FLOAT               Inf                             ;   INTENSKURT      FLOAT               Inf                             ;   INTENSTOTAL     FLOAT               Inf                             ;   INTENSUNIT      STRING    'blank'                                   ;   AREA_ATDISKCENTER                                                   ;                   FLOAT               Inf                             ;   AREA_ATDISKCENTERUNCERT                                             ;                   FLOAT               Inf                             ;   AREA_RAW        FLOAT               Inf                             ;   AREA_UNCERT     FLOAT               Inf                             ;   AREA_UNIT       STRING    'blank'                                   ;   EVENT_NPIXELS   LONG           -999999                              ;   EVENT_PIXELUNIT STRING    'blank'                                   ;   MAXMAGFIELDSTRENGTH                                                 ;                   FLOAT               Inf                             ;   MAXMAGFIELDSTRENGTHUNIT                                             ;                   STRING    'blank'                                   ;   OBS_DATAPREPURL STRING    'blank'                                   ;   OBS_FIRSTPROCESSINGDATE                                             ;                   STRING    'blank'                                   ;   OBS_LASTPROCESSINGDATE                                              ;                   STRING    'blank'                                   ;   OBS_LEVELNUM    FLOAT               Inf                             ;   OBS_INCLUDESNRT STRING    'blank'                                   ;   UNSIGNEDFLUX    FLOAT               Inf                             ;   MAGFLUXUNIT     STRING    'blank'                                   ;   MEANINCLINATIONGAMMA                                                ;                   FLOAT               Inf                             ;   MEANGRADIENTTOTAL                                                   ;                   FLOAT               Inf                             ;   MEANGRADIENTVERT                                                    ;                   FLOAT               Inf                             ;   MEANGRADIENTHORZ                                                    ;                   FLOAT               Inf                             ;   GRADIENTUNIT    STRING    'blank'                                   ;   MEANVERTCURRENTDENSITY                                              ;                   FLOAT               Inf                             ;   CURRENTDENSITYUNIT                                                  ;                   STRING    'blank'                                   ;   UNSIGNEDVERTCURRENT                                                 ;                   FLOAT               Inf                             ;   CURRENTUNIT     STRING    'blank'                                   ;   MEANTWISTALPHA  FLOAT               Inf                             ;   TWISTUNIT       STRING    'blank'                                   ;   MEANCURRENTHELICITY                                                 ;                   FLOAT               Inf                             ;   UNSIGNEDCURRENTHELICITY                                             ;                   FLOAT               Inf                             ;   ABSNETCURRENTHELICITY                                               ;                   FLOAT               Inf                             ;   CURRENTHELICITYUNIT                                                 ;                   STRING    'blank'                                   ;   SAVNCPP         FLOAT               Inf                             ;   MEANPHOTOENERGYDENSITY                                              ;                   FLOAT               Inf                             ;   MEANENERGYDENSITYUNIT                                               ;                   STRING    'blank'                                   ;   TOTALPHOTOENERGYDENSITY                                             ;                   FLOAT               Inf                             ;   TOTALENERGYDENSITYUNIT                                              ;                   STRING    'blank'                                   ;   TOTALPHOTOENERGY                                                    ;                   FLOAT               Inf                             ;   TOTALPHOTOENERGYUNIT                                                ;                   STRING    'blank'                                   ;   MEANSHEARANGLE  FLOAT               Inf                             ;   HIGHSHEARAREAPERCENT                                                ;                   FLOAT               Inf                             ;   HIGHSHEARAREA   FLOAT               Inf                             ;   HIGHSHEARAREAUNIT                                                   ;                   STRING    'blank'                                   ;   R_VALUE         FLOAT               Inf                             ;   GWILL           FLOAT               Inf                             ;   GWILLUNIT       STRING    'blank'                                   ;   AR_AXISLENGTH   FLOAT               Inf                             ;   AR_LENGTHUNIT   STRING    'blank'                                   ;   AR_SUMPOSSIGNEDFLUX                                                 ;                   FLOAT               Inf                             ;   AR_SUMNEGSIGNEDFLUX                                                 ;                   FLOAT               Inf                             ;   AR_NEUTRALLENGTH                                                    ;                   FLOAT               Inf                             ;   AR_PILCURVATURE FLOAT               Inf;--------------------------------------------------------->;   DESCRIPTION     STRING    'An active region core. This detection should include a polarity separation line and strong magnetic fields on eith'...;   EVENT_COORDUNIT STRING    'UTC-HPC-TOPO';   FRM_CONTACT     STRING    'pohuigin at gmail dot com, peter.gallagher at tcd dot ie';   FRM_HUMANFLAG   STRING    'false';   FRM_IDENTIFIER  STRING    'phiggins';   FRM_INSTITUTE   STRING    'Trinity College Dublin, Ireland';   FRM_NAME        STRING    'SolarMonitor Active Region Tracker (SMART)';   FRM_URL         STRING    'http://pohuigin.wordpress.com/smart-v2-ar-cores';   OBS_OBSERVATORY STRING    'SOHO';   OBS_CHANNELID   STRING    'V band';   OBS_INSTRUMENT  STRING    'MDI';   OBS_MEANWAVEL   FLOAT           6767.80;   OBS_WAVELUNIT   STRING    'Angstroms';Pull out some info about the ARtime=arstr.datetim=anytim(arstr.date)ftime=time2file(time)fdate=strmid(ftime,0,8);Initialise HEK structurehekstr=struct4event('ar')opt=hekstr.optionalreq=hekstr.required;PARENT------------------------------->hekstr.DESCRIPTION=hekeventmeta.descriptionREFERENCE_NAMES=hekstr.REFERENCE_NAMESREFERENCE_LINKS=hekstr.REFERENCE_LINKSREFERENCE_TYPES=hekstr.REFERENCE_TYPESREFERENCE_NAMES[0]='SolarMonitor'REFERENCE_LINKS[0]='http://solarmonitor.org/index.php?date='+fdateREFERENCE_TYPES[0]='html'hekstr.REFERENCE_NAMES=REFERENCE_NAMEShekstr.REFERENCE_LINKS=REFERENCE_LINKShekstr.REFERENCE_TYPES=REFERENCE_TYPES;REQUIRED----------------------------->req.KB_ARCHIVID='ivo://helio-informatics.org/AR_SolarMonitorActiveRegionTracker(SMART)_'+time2file(arstr.date)+'_'+string(arstr.sszn,form='(I09)')req.EVENT_COORDUNIT=hekeventmeta.EVENT_COORDUNITreq.EVENT_COORDSYS=hekeventmeta.EVENT_COORDSYSreq.EVENT_ENDTIME=anytim(tim+6.*3600.,/ecs)req.EVENT_STARTTIME=anytim(tim,/ecs)req.EVENT_COORD1=(float(str_sep(arstr.HCPOS,',')))[0]req.EVENT_COORD2=(float(str_sep(arstr.HCPOS,',')))[1]req.EVENT_C1ERROR=dxdy[0]req.EVENT_C2ERROR=dxdy[1]req.FRM_CONTACT=hekeventmeta.FRM_CONTACTreq.FRM_DATERUN=anytim(systim(/utc),/ecs)req.FRM_HUMANFLAG=hekeventmeta.FRM_HUMANFLAGreq.FRM_IDENTIFIER=hekeventmeta.FRM_IDENTIFIERreq.FRM_INSTITUTE=hekeventmeta.FRM_INSTITUTEreq.FRM_NAME=hekeventmeta.FRM_NAMEparamset=strjoin(parammeta[[3,4,5,6,7,10,11,12,13,14],0]+'='+strtrim(string([param.(3),param.(4),param.(5),param.(6),param.(7),param.(10),param.(11),param.(12),param.(13),param.(14)],form='(F15.1)'),2),',')req.FRM_PARAMSET=paramsetreq.FRM_URL=hekeventmeta.FRM_URLreq.OBS_OBSERVATORY=hekeventmeta.OBS_OBSERVATORYreq.OBS_CHANNELID=hekeventmeta.OBS_CHANNELIDreq.OBS_INSTRUMENT=hekeventmeta.OBS_INSTRUMENTreq.OBS_MEANWAVEL=hekeventmeta.OBS_MEANWAVELreq.OBS_WAVELUNIT=hekeventmeta.OBS_WAVELUNITreq.BOUNDBOX_C1LL=min(chainxy[0,*])req.BOUNDBOX_C2LL=min(chainxy[1,*])req.BOUNDBOX_C1UR=max(chainxy[0,*])req.BOUNDBOX_C2UR=max(chainxy[1,*]);OPTIONAL----------------------------->;Check for dodgey AR propertiesopt.EVENT_PROBABILITY=1.0if abs(gc_dist([0.,0.],float(str_sep(arstr.HGPOS,',')))) gt 60. then opt.EVENT_PROBABILITY=0.5if abs(gc_dist([0.,0.],float(str_sep(arstr.HGPOS,',')))) gt 70. then opt.EVENT_PROBABILITY=0.25if abs(gc_dist([0.,0.],float(str_sep(arstr.HGPOS,',')))) gt 90. then opt.EVENT_PROBABILITY=0.1if abs(req.BOUNDBOX_C1UR-req.BOUNDBOX_C1LL)/dxdy[0] gt 800 then opt.EVENT_PROBABILITY=0.1if abs(req.BOUNDBOX_C2UR-req.BOUNDBOX_C2LL)/dxdy[1] gt 800 then opt.EVENT_PROBABILITY=0.1;if arstr.magstatus ne 0 then opt.EVENT_PROBABILITY=0.1if arstr.bmax gt 1.5d4 then opt.EVENT_PROBABILITY=0.1;if arstr.status ne 7 then opt.EVENT_PROBABILITY=0.1;   EVENT_EXPIRES   STRING    '1492-10-12 00:00:00';   EVENT_COORD3    FLOAT               Inf;   EVENT_MAPURL    STRING    'blank';   EVENT_MASKURL   STRING    'blank';   EVENT_CLIPPEDSPATIAL;   EVENT_CLIPPEDTEMPORALopt.EVENT_TESTFLAG=testhekopt.FRM_VERSIONNUMBER = 0.1opt.FRM_SPECIFICID = arstr.datafile+'-'+string(arstr.arid,form='(I03)')opt.OBS_TITLE = 'SSZN'+string(arstr.sszn,form='(I09)')opt.BOUND_CCNSTEPS=chainstr.BOUND_CCNSTEPSopt.BOUND_CCSTARTC1=chainstr.BOUND_CCSTARTC1opt.BOUND_CCSTARTC2=chainstr.BOUND_CCSTARTC2opt.BOUND_CHAINCODE=chainstr.BOUND_CHAINCODEopt.CHAINCODETYPE=chainstr.CHAINCODETYPE;   RASTERSCAN      STRING    'blank';   RASTERSCANTYPE  STRING    'blank';   AR_MCINTOSHCLS  STRING    'blank';   AR_MTWILSONCLS  STRING    'blank';   AR_ZURICHCLS    STRING    'blank';   AR_PENUMBRACLS  STRING    'blank';   AR_COMPACTNESSCLS;   AR_NOAACLASS    STRING    'blank';   AR_NOAANUM      LONG           -999999;   AR_NUMSPOTS     INT          -9999;the percentage flux = (fluxpos-fluxneg)/fluxtotopt.AR_POLARITY=fix(round(arstr.FLUXFRAC*100.)) ;   AR_SPOTAREARAW  FLOAT               Inf;   AR_SPOTAREARAWUNCERT;   AR_SPOTAREARAWUNIT;   AR_SPOTAREAREPR FLOAT               Inf;   AR_SPOTAREAREPRUNCERT;   AR_SPOTAREAREPRUNIT                                                                             ;opt.AR_INTENSMIN=propstr.BMAX*ar_pxscale(/cmsq,/mdi);opt.AR_INTENSMAX=propstr.BMIN*ar_pxscale(/cmsq,/mdi);opt.AR_INTENSMEAN=propstr.BMEAN*ar_pxscale(/cmsq,/mdi);   AR_INTENSVAR    FLOAT               Inf                                                         ;   AR_INTENSSKEW   FLOAT               Inf                                                         ;   AR_INTENSKURT   FLOAT               Inf                                                         ;opt.AR_INTENSTOTAL=propstr.TOTFLX;opt.AR_INTENSUNIT='Mx';opt.INTENSMIN=propstr.BMIN;opt.INTENSMAX=propstr.BMAX;opt.INTENSMEAN=propstr.BMEAN;   INTENSMEDIAN    FLOAT               Inf                                                         ;   INTENSVAR       FLOAT               Inf                                                         ;   INTENSSKEW      FLOAT               Inf                                                         ;   INTENSKURT      FLOAT               Inf                                                         ;   INTENSTOTAL     FLOAT               Inf                                                         ;opt.INTENSUNIT='gauss'                                                               opt.AREA_ATDISKCENTER=arstr.AREA;Area uncertainty is the corrected area of the 1px AR boundary at the AR HG centroid positionopt.AREA_ATDISKCENTERUNCERT=(1./cos(gc_dist([0.,0.],float(str_sep(arstr.HGPOS,',')))*!dtor))*ar_pxscale(map,/mmsq,/mdi)*float(chainstr.BOUND_CCNSTEPS);   AREA_RAW        FLOAT               Inf                                                         ;   AREA_UNCERT     FLOAT               Inf                                                         opt.AREA_UNIT='Mm2';opt.EVENT_NPIXELS=arstr.NARPX;opt.EVENT_PIXELUNIT='Mm2';   OBS_DATAPREPURL STRING    'blank'                                                               ;   OBS_FIRSTPROCESSINGDATE                                                                         ;                   STRING    'blank'                                                               ;   OBS_LASTPROCESSINGDATE                                                                          ;                   STRING    'blank'                                                               ;For HMI, its NRT, I guess;opt.OBS_LEVELNUM=param.mdi_level;   OBS_INCLUDESNRT STRING    'blank' opt.MAXMAGFIELDSTRENGTH = arstr.bmaxopt.MAXMAGFIELDSTRENGTHUNIT = 'gauss'opt.UNSIGNEDFLUX = arstr.fluxopt.MAGFLUXUNIT = 'Mx'opt.R_VALUE = arstr.rvalueopt.AR_AXISLENGTH = arstr.BIPOLESEPopt.AR_LENGTHUNIT = 'Mm'opt.AR_SUMPOSSIGNEDFLUX = arstr.flux*(arstr.FLUXFRAC+1.)/2.opt.AR_SUMNEGSIGNEDFLUX = arstr.flux-opt.AR_SUMPOSSIGNEDFLUXopt.AR_NEUTRALLENGTH = arstr.PSLLENGTHopt.AR_PILCURVATURE = arstr.PSLCURVATURE;Input the filled structures into the parent structurehekstr.required=reqhekstr.optional=opthekstrarr[i]=hekstrendforreturn,hekstrarrend