@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bugzilla

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
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
        String version String urlbase String maintainer String exporter Bug bugs+
 ;
syntax Bug
        = 
        BugzillaRoot bug_bugzillaRoot ErrorType error String bug_id String exporter String urlbase StatusType bug_status ResolutionType resolution String product PriorityType priority String version ReportedPlatformType rep_platform String assigned_to String delta_ts String component String reporter String target_milestone SeverityType bug_severity String creation_ts String qa_contact String status_whiteboard OperatingSystemType op_sys String bug_file_loc String short_desc Keywords keywords+ Dependson dependson+ Blocks blocks+ Cc cc+ LongDesc long_desc+ Attachment attachment+
 ;
syntax StringElt
        = Keywords
        | Dependson
        | Blocks
        | Cc
 ;
syntax Keywords
        = 
        value: String
 ;
syntax Dependson
        = 
        value: String
 ;
syntax Blocks
        = 
        value: String
 ;
syntax Cc
        = 
        value: String
 ;
syntax LongDesc
        = 
        Boolean isPrivate String who String bug_when String thetext
 ;
syntax Attachment
        = 
        Boolean isObsolete Boolean isPatch Boolean isPrivate String id String date String desc String type String data
 ;
