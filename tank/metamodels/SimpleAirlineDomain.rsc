@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimpleAirlineDomain

syntax Airport
        = 
        ANY name ANY departingFlight+ ANY arrivingFlight+
 ;
syntax Flight
        = 
        ANY departTime ANY duration ANY maxnrPassengers ANY passenger+ ANY airline ANY origin ANY destination
 ;
syntax Airline
        = 
        ANY name ANY nationality ANY flight+
 ;
syntax Passenger
        = 
        ANY name ANY age ANY gender ANY needsAssistance ANY flight
 ;
syntax Genre
        = male: ()
        | female: ()
 ;
syntax Time
        = 
        ANY year ANY month ANY day ANY hour ANY minute ANY second
 ;
