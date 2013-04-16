@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimpleAirlineDomain

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Airport
        = 
        String name Flight departingFlight+ Flight arrivingFlight+
 ;
syntax Flight
        = 
        Time departTime Time duration Integer maxnrPassengers Passenger passenger+ Airline airline Airport origin Airport destination
 ;
syntax Airline
        = 
        String name String nationality Flight flight+
 ;
syntax Passenger
        = 
        String name Integer age Genre gender Boolean needsAssistance Flight flight
 ;
syntax Genre
        = male: ()
        | female: ()
 ;
syntax Time
        = 
        Integer year Integer month Integer day Integer hour Integer minute Integer second
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
