@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CPL

syntax Element
        = 
        ()
 ;
syntax CPL
        = 
        ANY subActions+ ANY outgoing ANY incoming
 ;
syntax NodeContainer
        = 
        ()
 ;
syntax SubAction
        = 
        id: ANY
 ;
syntax Outgoing
        = 
        ANY contents
 ;
syntax Incoming
        = 
        ANY contents
 ;
syntax NotPresent
        = 
        ANY contents
 ;
syntax Otherwise
        = 
        ANY contents
 ;
syntax SwitchedAddress
        = 
        ANY is ANY contains ANY subDomainOf
 ;
syntax SwitchedString
        = 
        ANY is ANY contains
 ;
syntax SwitchedLanguage
        = 
        matches: ANY
 ;
syntax SwitchedTime
        = 
        ANY dtstart ANY dtend ANY duration ANY freq ANY until ANY count ANY interval ANY bySecond ANY byMinute ANY byHour ANY byDay ANY byMonthDay ANY byYearDay ANY byWeekNo ANY byMonth ANY wkst ANY bySetPos
 ;
syntax SwitchedPriority
        = 
        ANY less ANY greater ANY equal
 ;
syntax Busy
        = 
        ANY contents
 ;
syntax NoAnswer
        = 
        ANY contents
 ;
syntax Redirection
        = 
        ANY contents
 ;
syntax Failure
        = 
        ANY contents
 ;
syntax Default
        = 
        ANY contents
 ;
syntax Node
        = 
        ()
 ;
syntax Switch
        = 
        ()
 ;
syntax AddressSwitch
        = 
        ANY field ANY subField ANY addresses+
 ;
syntax StringSwitch
        = 
        ANY field ANY strings+
 ;
syntax LanguageSwitch
        = 
        ANY languages+
 ;
syntax TimeSwitch
        = 
        ANY tzid ANY tzurl ANY times+
 ;
syntax PrioritySwitch
        = 
        ANY priorities+
 ;
syntax Location
        = 
        ANY url ANY priority ANY clear
 ;
syntax SubCall
        = 
        ref: ANY
 ;
syntax Action
        = 
        ()
 ;
syntax SignallingAction
        = 
        ()
 ;
syntax Proxy
        = 
        ANY timeout ANY recurse ANY ordering ANY busy ANY noAnswer ANY redirection ANY failure ANY default
 ;
syntax Redirect
        = 
        permanent: ANY
 ;
syntax Reject
        = 
        ANY status ANY reason
 ;
