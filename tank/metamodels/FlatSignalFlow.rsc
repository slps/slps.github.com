@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FlatSignalFlow

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
