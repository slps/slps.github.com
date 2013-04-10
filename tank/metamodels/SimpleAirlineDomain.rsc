@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimpleAirlineDomain

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
