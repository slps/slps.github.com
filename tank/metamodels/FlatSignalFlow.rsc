@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FlatSignalFlow

syntax RootFolder
        = 
        ANY rootContainer+
 ;
syntax RootContainer
        = 
        ANY name ANY position ANY rootFolder ANY actor+ ANY inputSignal+ ANY outputSignal+ ANY queue+
 ;
syntax Actor
        = 
        ANY memory ANY script ANY file ANY WCET ANY name ANY position ANY rootContainer ANY transmitter+ ANY receiver+
 ;
syntax Transmitter
        = 
        ANY name ANY position ANY actor ANY associationQueueTransmitter
 ;
syntax Receiver
        = 
        ANY name ANY position ANY actor ANY associationReceiverQueue
 ;
syntax InputSignal
        = 
        ANY name ANY position ANY rootContainer ANY associationReceiverQueue
 ;
syntax OutputSignal
        = 
        ANY name ANY position ANY rootContainer ANY associationQueueTransmitter
 ;
syntax Queue
        = 
        ANY name ANY position ANY rootContainer ANY associationReceiverQueue ANY associationQueueTransmitter
 ;
syntax AssociationReceiverQueue
        = 
        ANY srcqueue+ ANY dstreceiver+ ANY inputSignal
 ;
syntax AssociationQueueTransmitter
        = 
        ANY dstqueue+ ANY srctransmitter+ ANY outputSignal
 ;
