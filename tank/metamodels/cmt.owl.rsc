@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cmt_owl

syntax Thing
        = 
        ()
 ;
syntax Meta_Reviewer
        = 
        ()
 ;
syntax Reviewer
        = 
        ANY assignedByAdministrator ANY adjustBid ANY readPaper ANY hasBeenAssigned ANY writeReview ANY assignExternalReviewer
 ;
syntax Decision
        = 
        ()
 ;
syntax Person
        = 
        ANY hasConflictOfInterest ANY email
 ;
syntax Document
        = 
        ()
 ;
syntax Preference
        = 
        ()
 ;
syntax ProgramCommittee
        = 
        hasProgramCommitteeMember: ANY
 ;
syntax Bid
        = 
        adjustedBy: ANY
 ;
syntax Conference
        = 
        ANY hasConferenceMember ANY paperAssignmentFinalizedBy ANY reviewCriteriaEnteredBy ANY paperAssignmentToolsRunBy ANY virtualMeetingEnabledBy ANY hardcopyMailingManifestsPrintedBy ANY detailsEnteredBy ANY reviewerBiddingStartedBy ANY date ANY reviewsPerPaper ANY logoURL ANY acceptsHardcopySubmissions ANY siteURL
 ;
syntax ConferenceChair
        = 
        ()
 ;
syntax ConferenceMember
        = 
        memberOfConference: ANY
 ;
syntax AssociatedChair
        = 
        ()
 ;
syntax ProgramCommitteeMember
        = 
        ANY memberOfProgramCommittee ANY maxPapers ANY addedBy
 ;
syntax AuthorNotReviewer
        = 
        ()
 ;
syntax SubjectArea
        = 
        ()
 ;
syntax ExternalReviewer
        = 
        assignedByReviewer: ANY
 ;
syntax Chairman
        = 
        ()
 ;
syntax ProgramCommitteeChair
        = 
        endReview: ANY
 ;
syntax Acceptance
        = 
        ()
 ;
syntax Rejection
        = 
        ()
 ;
syntax Review
        = 
        writtenBy: ANY
 ;
syntax Paper
        = 
        ANY hasCo-author ANY hasBid ANY hasDecision ANY assignedTo ANY hasSubjectArea ANY readByReviewer ANY paperID ANY title ANY hasAuthor ANY acceptedBy ANY rejectedBy ANY readByMeta-Reviewer
 ;
syntax Author
        = 
        ANY submitPaper ANY writePaper
 ;
syntax User
        = 
        ()
 ;
syntax Co_author
        = 
        co-writePaper: ANY
 ;
syntax PaperAbstract
        = 
        ()
 ;
syntax PaperFullVersion
        = 
        ()
 ;
syntax Administrator
        = 
        ANY finalizePaperAssignment ANY runPaperAssignmentTools ANY enableVirtualMeeting ANY startReviewerBidding ANY assignReviewer ANY rejectPaper ANY enterConferenceDetails ANY printHardcopyMailingManifests ANY setMaxPapers ANY enterReviewCriteria ANY acceptPaper ANY addProgramCommitteeMember
 ;
syntax Meta_Review
        = 
        ()
 ;
