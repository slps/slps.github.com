@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CPL

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Element
        = CPL
        | NodeContainer
        | Node
 ;
syntax CPL
        = 
        SubAction subActions+ Outgoing outgoing Incoming incoming
 ;
syntax NodeContainer
        = SubAction
        | Outgoing
        | Incoming
        | NotPresent
        | Otherwise
        | SwitchedAddress
        | SwitchedString
        | SwitchedLanguage
        | SwitchedTime
        | SwitchedPriority
        | Busy
        | NoAnswer
        | Redirection
        | Failure
        | Default
        | Location
 ;
syntax SubAction
        = 
        id: String
 ;
syntax Outgoing
        = 
        contents: Node
 ;
syntax Incoming
        = 
        contents: Node
 ;
syntax NotPresent
        = 
        contents: Node
 ;
syntax Otherwise
        = 
        contents: Node
 ;
syntax SwitchedAddress
        = 
        String is String contains String subDomainOf
 ;
syntax SwitchedString
        = 
        String is String contains
 ;
syntax SwitchedLanguage
        = 
        matches: String
 ;
syntax SwitchedTime
        = 
        String dtstart String dtend String duration String freq String until String count String interval String bySecond String byMinute String byHour String byDay String byMonthDay String byYearDay String byWeekNo String byMonth String wkst String bySetPos
 ;
syntax SwitchedPriority
        = 
        String less String greater String equal
 ;
syntax Busy
        = 
        contents: Node
 ;
syntax NoAnswer
        = 
        contents: Node
 ;
syntax Redirection
        = 
        contents: Node
 ;
syntax Failure
        = 
        contents: Node
 ;
syntax Default
        = 
        contents: Node
 ;
syntax Node
        = Switch
        | SubCall
        | Action
        | Location
 ;
syntax Switch
        = AddressSwitch
        | StringSwitch
        | LanguageSwitch
        | TimeSwitch
        | PrioritySwitch
 ;
syntax AddressSwitch
        = 
        String field String subField SwitchedAddress addresses+
 ;
syntax StringSwitch
        = 
        String field SwitchedString strings+
 ;
syntax LanguageSwitch
        = 
        SwitchedLanguage languages+
 ;
syntax TimeSwitch
        = 
        String tzid String tzurl SwitchedTime times+
 ;
syntax PrioritySwitch
        = 
        SwitchedPriority priorities+
 ;
syntax Location
        = 
        String url String priority String clear
 ;
syntax SubCall
        = 
        ref: String
 ;
syntax Action
        = 
        SignallingAction
 ;
syntax SignallingAction
        = Proxy
        | Redirect
        | Reject
 ;
syntax Proxy
        = 
        String timeout String recurse String ordering Busy busy NoAnswer noAnswer Redirection redirection Failure failure Default default
 ;
syntax Redirect
        = 
        permanent: String
 ;
syntax Reject
        = 
        String status String reason
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
