@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cmt_owl

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Thing
        = 
        Conference
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
syntax Person
        = ConferenceMember
        | ExternalReviewer
        | User
        | ProgramCommitteeMember
        | Chairman
        | Document hasConflictOfInterest String email
 ;
syntax Document
        = Review
        | Paper
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
        | Document hasConflictOfInterest String email Conference memberOfConference
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
        | Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Author
        = AuthorNotReviewer
        | Co_author
        | Paper submitPaper Paper writePaper
 ;
syntax User
        = Administrator
        | Reviewer
        | Author
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
        Conference finalizePaperAssignment Conference runPaperAssignmentTools Conference enableVirtualMeeting Conference startReviewerBidding Reviewer assignReviewer Paper rejectPaper Conference enterConferenceDetails Conference printHardcopyMailingManifests ProgramCommitteeMember setMaxPapers Conference enterReviewCriteria Paper acceptPaper ProgramCommitteeMember addProgramCommitteeMember
 ;
syntax Meta_Review
        = 
        writtenBy: Reviewer
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
