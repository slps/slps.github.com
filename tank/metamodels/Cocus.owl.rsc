@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cocus_owl

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
        ANY approve ANY assign ANY finalizePaperAssignment ANY runPaperAssignmentTools ANY enableVirtualMeeting ANY startReviewerBidding ANY assignReviewer ANY rejectPaper ANY enterConferenceDetails ANY printHardcopyMailingManifests ANY setMaxPapers ANY enterReviewCriteria ANY acceptPaper ANY addProgramCommitteeMember
 ;
syntax Meta_Review
        = 
        ()
 ;
syntax Workshop
        = 
        ()
 ;
syntax Event
        = 
        ANY conists_of ANY confirmed_by ANY defined_by ANY approved_by
 ;
syntax Account
        = 
        registred_by: ANY
 ;
syntax Inforamtion
        = 
        ()
 ;
syntax User
        = 
        ANY recieve ANY create+ ANY submit
 ;
syntax Role
        = 
        assigned_by: ANY
 ;
syntax Help_Request
        = 
        ()
 ;
syntax Person
        = 
        ANY inverse_of_add+ ANY execute+ ANY get ANY use ANY register ANY modify+ ANY take_part_in ANY remove+ ANY add ANY send ANY added_by ANY hasConflictOfInterest ANY email
 ;
syntax Symposium
        = 
        ()
 ;
syntax Abstract
        = 
        ()
 ;
syntax Document
        = 
        ANY recieved_by ANY used_by ANY submited__by
 ;
syntax Invited_Paper
        = 
        ()
 ;
syntax Admin_Role
        = 
        ()
 ;
syntax Paper_Typologies
        = 
        ()
 ;
syntax Event_Setup
        = 
        define: ANY
 ;
syntax Event_URL
        = 
        concerned: ANY
 ;
syntax URL
        = 
        ()
 ;
syntax Notification_Email
        = 
        ()
 ;
syntax Email
        = 
        ()
 ;
syntax Short_Paper
        = 
        ()
 ;
syntax Author_Role
        = 
        ()
 ;
syntax Preview
        = 
        ()
 ;
syntax Review_Form
        = 
        ()
 ;
syntax Committe_Role
        = 
        ()
 ;
syntax Group_Email
        = 
        ()
 ;
syntax Submission_Template
        = 
        ()
 ;
syntax Review_Form_Setup
        = 
        ()
 ;
syntax Misc
        = 
        ()
 ;
syntax Event_Creation
        = 
        ()
 ;
syntax Approval_Email
        = 
        confirm: ANY
 ;
syntax Rejection_Email
        = 
        ()
 ;
syntax Submission
        = 
        ()
 ;
syntax Template
        = 
        ()
 ;
syntax Feature_Request
        = 
        ()
 ;
syntax Committee
        = 
        ()
 ;
syntax Event_Tracks
        = 
        ()
 ;
syntax Request
        = 
        ()
 ;
syntax Activity
        = 
        ANY has_result+ ANY sent_by
 ;
syntax Head_Role
        = 
        ()
 ;
syntax Detail
        = 
        ()
 ;
syntax Corresponding_Author
        = 
        ()
 ;
syntax Reviewer_Role
        = 
        ()
 ;
syntax Event_Approval
        = 
        ()
 ;
syntax Registration
        = 
        ()
 ;
syntax Full_Paper
        = 
        ()
 ;
syntax Research_Topic
        = 
        ()
 ;
syntax Description
        = 
        ()
 ;
syntax Assistance
        = 
        ()
 ;
syntax Email_Template
        = 
        ()
 ;
