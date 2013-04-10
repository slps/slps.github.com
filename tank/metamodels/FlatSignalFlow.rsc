@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FlatSignalFlow

syntax RootFolder
        = 
        RootContainer rootContainer+
 ;
syntax RootContainer
        = 
        String name String position RootFolder rootFolder Actor actor+ InputSignal inputSignal+ OutputSignal outputSignal+ Queue queue+
 ;
syntax Actor
        = 
        String memory String script String file String WCET String name String position RootContainer rootContainer Transmitter transmitter+ Receiver receiver+
 ;
syntax Transmitter
        = 
        String name String position Actor actor AssociationQueueTransmitter associationQueueTransmitter
 ;
syntax Receiver
        = 
        String name String position Actor actor AssociationReceiverQueue associationReceiverQueue
 ;
syntax InputSignal
        = 
        String name String position RootContainer rootContainer AssociationReceiverQueue associationReceiverQueue
 ;
syntax OutputSignal
        = 
        String name String position RootContainer rootContainer AssociationQueueTransmitter associationQueueTransmitter
 ;
syntax Queue
        = 
        String name String position RootContainer rootContainer AssociationReceiverQueue associationReceiverQueue AssociationQueueTransmitter associationQueueTransmitter
 ;
syntax AssociationReceiverQueue
        = 
        Queue srcqueue+ Receiver dstreceiver+ InputSignal inputSignal
 ;
syntax AssociationQueueTransmitter
        = 
        Queue dstqueue+ Transmitter srctransmitter+ OutputSignal outputSignal
 ;
