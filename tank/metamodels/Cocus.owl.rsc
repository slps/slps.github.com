@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cocus_owl

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Thing
        = Conference
        | Event
        | Role
        | Person
        | Document
        | Detail
 ;
syntax Meta_Reviewer
        = 
        Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned Review writeReview ExternalReviewer assignExternalReviewer
 ;
syntax Reviewer
        = Meta_Reviewer
        | Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned Review writeReview ExternalReviewer assignExternalReviewer
 ;
syntax Decision
        = Acceptance
        | Rejection
 ;
syntax Preference
        = 
        ()
 ;
syntax ProgramCommittee
        = 
        hasProgramCommitteeMember: ProgramCommitteeMember
 ;
syntax Bid
        = 
        adjustedBy: Reviewer
 ;
syntax Conference
        = 
        ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL
 ;
syntax ConferenceChair
        = 
        memberOfConference: Conference
 ;
syntax ConferenceMember
        = Reviewer
        | ConferenceChair
        | AssociatedChair
        | Author
        | ProgramCommitteeMember
        | Chairman
        | memberOfConference: Conference
 ;
syntax AssociatedChair
        = 
        memberOfConference: Conference
 ;
syntax ProgramCommitteeMember
        = ProgramCommitteeChair
        | ProgramCommittee memberOfProgramCommittee Integer maxPapers Administrator addedBy
 ;
syntax AuthorNotReviewer
        = 
        Paper submitPaper Paper writePaper
 ;
syntax SubjectArea
        = 
        ()
 ;
syntax ExternalReviewer
        = 
        assignedByReviewer: Reviewer
 ;
syntax Chairman
        = ConferenceChair
        | AssociatedChair
        | ProgramCommitteeChair
        | Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by Document hasConflictOfInterest String email Conference memberOfConference
 ;
syntax ProgramCommitteeChair
        = 
        endReview: Review
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
        = Meta_Review
        | writtenBy: Reviewer
 ;
syntax Paper
        = PaperAbstract
        | PaperFullVersion
        | Abstract
        | Invited_Paper
        | Short_Paper
        | Full_Paper
        | Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Author
        = AuthorNotReviewer
        | Co_author
        | Corresponding_Author
        | Paper submitPaper Paper writePaper
 ;
syntax Co_author
        = 
        co-writePaper: Paper
 ;
syntax PaperAbstract
        = 
        Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax PaperFullVersion
        = 
        Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Administrator
        = 
        Event approve Role assign Conference finalizePaperAssignment Conference runPaperAssignmentTools Conference enableVirtualMeeting Conference startReviewerBidding Reviewer assignReviewer Paper rejectPaper Conference enterConferenceDetails Conference printHardcopyMailingManifests ProgramCommitteeMember setMaxPapers Conference enterReviewCriteria Paper acceptPaper ProgramCommitteeMember addProgramCommitteeMember
 ;
syntax Meta_Review
        = 
        writtenBy: Reviewer
 ;
syntax Workshop
        = 
        Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by
 ;
syntax Event
        = Workshop
        | Symposium
        | Conference
        | Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by
 ;
syntax Account
        = 
        registred_by: Person
 ;
syntax Inforamtion
        = 
        ()
 ;
syntax User
        = Committee
        | Administrator
        | Reviewer
        | Author
        | Document recieve Thing create+ Document submit
 ;
syntax Role
        = Admin_Role
        | Author_Role
        | Committe_Role
        | Head_Role
        | Reviewer_Role
        | assigned_by: Administrator
 ;
syntax Help_Request
        = Misc
        | Feature_Request
        | Assistance
 ;
syntax Person
        = ConferenceMember
        | ExternalReviewer
        | User
        | ProgramCommitteeMember
        | Chairman
        | Administrator
        | Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by Document hasConflictOfInterest String email
 ;
syntax Symposium
        = 
        Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by
 ;
syntax Abstract
        = 
        Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Document
        = Review
        | Paper
        | Email
        | Submission
        | Template
        | User recieved_by Person used_by User submited__by
 ;
syntax Invited_Paper
        = 
        Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Admin_Role
        = 
        assigned_by: Administrator
 ;
syntax Paper_Typologies
        = 
        define: Event
 ;
syntax Event_Setup
        = Paper_Typologies
        | Review_Form
        | Submission_Template
        | Event_Tracks
        | Research_Topic
        | Email_Template
        | define: Event
 ;
syntax Event_URL
        = 
        concerned: Event
 ;
syntax URL
        = 
        Event_URL
 ;
syntax Notification_Email
        = 
        ()
 ;
syntax Email
        = Notification_Email
        | Group_Email
        | Approval_Email
        | Rejection_Email
 ;
syntax Short_Paper
        = 
        Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Author_Role
        = 
        assigned_by: Administrator
 ;
syntax Preview
        = 
        ()
 ;
syntax Review_Form
        = Preview
        | Review_Form_Setup
 ;
syntax Committe_Role
        = 
        assigned_by: Administrator
 ;
syntax Group_Email
        = 
        ()
 ;
syntax Submission_Template
        = 
        define: Event
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
        Thing has_result+ Person sent_by
 ;
syntax Approval_Email
        = 
        confirm: Event
 ;
syntax Rejection_Email
        = 
        ()
 ;
syntax Submission
        = 
        User recieved_by Person used_by User submited__by
 ;
syntax Template
        = 
        User recieved_by Person used_by User submited__by
 ;
syntax Feature_Request
        = 
        ()
 ;
syntax Committee
        = 
        Document recieve Thing create+ Document submit
 ;
syntax Event_Tracks
        = 
        define: Event
 ;
syntax Request
        = 
        Help_Request
 ;
syntax Activity
        = Event_Creation
        | Request
        | Event_Approval
        | Registration
        | Thing has_result+ Person sent_by
 ;
syntax Head_Role
        = 
        assigned_by: Administrator
 ;
syntax Detail
        = 
        ()
 ;
syntax Corresponding_Author
        = 
        Paper submitPaper Paper writePaper
 ;
syntax Reviewer_Role
        = 
        assigned_by: Administrator
 ;
syntax Event_Approval
        = 
        Thing has_result+ Person sent_by
 ;
syntax Registration
        = 
        Thing has_result+ Person sent_by
 ;
syntax Full_Paper
        = 
        Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Research_Topic
        = 
        define: Event
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
        define: Event
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
