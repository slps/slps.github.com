@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bugzilla

syntax ErrorType
        = et_null: ()
        | et_NotFound: ()
        | et_NotPermitted: ()
        | et_InvalidBugId: ()
 ;
syntax SeverityType
        = st_null: ()
        | st_blocker: ()
        | st_critical: ()
        | st_major: ()
        | st_normal: ()
        | st_minor: ()
        | st_trivial: ()
        | st_enhancement: ()
 ;
syntax StatusType
        = st_null: ()
        | st_UNCONFIRMED: ()
        | st_NEW: ()
        | st_ASSIGNED: ()
        | st_REOPENED: ()
        | st_RESOLVED: ()
        | st_VERIFIED: ()
        | st_CLOSED: ()
 ;
syntax OperatingSystemType
        = ost_null: ()
        | ost_all: ()
        | ost_Windows 3.1: ()
        | ost_Windows 95: ()
        | ost_Windows 98: ()
        | ost_Windows ME: ()
        | ost_Windows 2000: ()
        | ost_Windows NT: ()
        | ost_Windows XP: ()
        | ost_Windows Vista: ()
        | ost_Windows Server 2003: ()
        | ost_MacSystem 7: ()
        | ost_MacSystem 7.5: ()
        | ost_MacSystem 7.6.1: ()
        | ost_MacSystem 8.0: ()
        | ost_MacSystem 8.5: ()
        | ost_MacSystem 8.6: ()
        | ost_MacSystem 9.x: ()
        | ost_Mac OS X 10.0: ()
        | ost_Mac OS X 10.1: ()
        | ost_Mac OS X 10.2: ()
        | ost_Mac OS X 10.3: ()
        | ost_Linux: ()
        | ost_BDS/OS: ()
        | ost_FreeBSD: ()
        | ost_NetBSD: ()
        | ost_OpenBSD: ()
        | ost_AIX: ()
        | ost_BeOS: ()
        | ost_HP-UX: ()
        | ost_IRIX: ()
        | ost_Neutrino: ()
        | ost_OpenVMS: ()
        | ost_OS/2: ()
        | ost_OSF/1: ()
        | ost_Solaris: ()
        | ost_SunOS: ()
        | ost_other: ()
 ;
syntax PriorityType
        = pt_null: ()
        | pt_P1: ()
        | pt_P2: ()
        | pt_P3: ()
        | pt_P4: ()
        | pt_P5: ()
 ;
syntax ReportedPlatformType
        = rpt_null: ()
        | rpt_all: ()
        | rpt_DEC: ()
        | rpt_HP: ()
        | rpt_Macintosh: ()
        | rpt_PC: ()
        | rpt_SGI: ()
        | rpt_Sun: ()
        | rpt_other: ()
 ;
syntax ResolutionType
        = rt_null: ()
        | rt_FIXED: ()
        | rt_INVALID: ()
        | rt_WONTFIX: ()
        | rt_LATER: ()
        | rt_REMIND: ()
        | rt_DUPLICATE: ()
        | rt_WORKSFORME: ()
        | rt_MOVED: ()
 ;
syntax BugzillaRoot
        = 
        ANY version ANY urlbase ANY maintainer ANY exporter ANY bugs+
 ;
syntax Bug
        = 
        ANY bug_bugzillaRoot ANY error ANY bug_id ANY exporter ANY urlbase ANY bug_status ANY resolution ANY product ANY priority ANY version ANY rep_platform ANY assigned_to ANY delta_ts ANY component ANY reporter ANY target_milestone ANY bug_severity ANY creation_ts ANY qa_contact ANY status_whiteboard ANY op_sys ANY bug_file_loc ANY short_desc ANY keywords+ ANY dependson+ ANY blocks+ ANY cc+ ANY long_desc+ ANY attachment+
 ;
syntax StringElt
        = 
        ()
 ;
syntax Keywords
        = 
        ANY value
 ;
syntax Dependson
        = 
        ANY value
 ;
syntax Blocks
        = 
        ANY value
 ;
syntax Cc
        = 
        ANY value
 ;
syntax LongDesc
        = 
        ANY isPrivate ANY who ANY bug_when ANY thetext
 ;
syntax Attachment
        = 
        ANY isObsolete ANY isPatch ANY isPrivate ANY id ANY date ANY desc ANY type ANY data
 ;
