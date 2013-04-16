@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Edas_owl

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Thing
        = Event
        | Role
        | Person
        | Document
        | Detail
        | Review_expertise
        | Organizer
        | Review_preference
        | Date
        | URL
        | Conference_setup
        | Contribution
 ;
syntax Meta_Reviewer
        = 
        Reviewer invites_co-reviewers Reviewer invited_by Thing has_a_review_reference_or_expertise+ Review writes_review PersonalReviewHistory hasReviewHistory Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned Review writeReview ExternalReviewer assignExternalReviewer
 ;
syntax Reviewer
        = Meta_Reviewer
        | Reviewer invites_co-reviewers Reviewer invited_by Thing has_a_review_reference_or_expertise+ Review writes_review PersonalReviewHistory hasReviewHistory Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned Review writeReview ExternalReviewer assignExternalReviewer
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
syntax ConferenceChair
        = memberOfConference: Conference
        | Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax ConferenceMember
        = Reviewer
        | ConferenceChair
        | AssociatedChair
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
        Paper submitPaper Paper writePaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper
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
        | Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Conference memberOfConference
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
syntax Paper
        = PaperAbstract
        | PaperFullVersion
        | Abstract
        | Invited_Paper
        | Short_Paper
        | Full_Paper
        | Accepted_Paper
        | Rejected_Paper
        | Undecided_Paper
        | ActivePaper
        | PendingPaper
        | WithdrawnPaper
        | RejectedPaper
        | AcceptedPaper
        | PublishedPaper
        | Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Co_author
        = 
        co-writePaper: Paper
 ;
syntax PaperAbstract
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax PaperFullVersion
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Administrator
        = 
        Event approve Role assign Conference finalizePaperAssignment Conference runPaperAssignmentTools Conference enableVirtualMeeting Conference startReviewerBidding Reviewer assignReviewer Paper rejectPaper Conference enterConferenceDetails Conference printHardcopyMailingManifests ProgramCommitteeMember setMaxPapers Conference enterReviewCriteria Paper acceptPaper ProgramCommitteeMember addProgramCommitteeMember
 ;
syntax Meta_Review
        = 
        Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
 ;
syntax Event
        = Symposium
        | Social_event
        | Administrative_event
        | Working_event
        | Pc_meeting
        | Session
        | Conference
        | Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
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
        | Conference_participant
        | Conference_contributor
        | Committee_member
        | Conference_applicant
        | Track_workshop_chair
        | Scholar
        | Participant
        | Member_PC
        | Chair_PC
        | Science_Worker
        | Assistant
        | Volunteer
        | Chair
        | Participant
        | ConferenceChair
        | Attendee
        | SessionChair
        | TPCMember
        | ProgramCommitteeMember
        | Chairman
        | Author
        | Administrator
        | Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax Symposium
        = 
        Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
 ;
syntax Abstract
        = Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
        | Thing is_the_1th_part_of+
 ;
syntax Document
        = Email
        | Submission
        | Template
        | Abstract
        | Article
        | SlideSet
        | Programme
        | MealMenu
        | Paper
        | Thing relatesTo+ User recieved_by Person used_by User submited__by
 ;
syntax Invited_Paper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
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
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
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
        Thing relatesTo+ User recieved_by Person used_by User submited__by
 ;
syntax Template
        = 
        Thing relatesTo+ User recieved_by Person used_by User submited__by
 ;
syntax Feature_Request
        = 
        ()
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
        Paper submitPaper Paper writePaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper
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
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Research_Topic
        = 
        define: Event
 ;
syntax Description
        = 
        ()
 ;
syntax Conference
        = Conference_volume
        | TwoLevelConference
        | SingleLevelConference
        | Phase_of_conference is_in_phase Program has_program Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL
 ;
syntax Assistance
        = 
        ()
 ;
syntax Email_Template
        = 
        define: Event
 ;
syntax Conference_participant
        = Passive_conference_participant
        | Active_conference_participant
 ;
syntax Active_conference_participant
        = 
        gives_presentations: Presentation
 ;
syntax Passive_conference_participant
        = 
        ()
 ;
syntax Review_expertise
        = 
        Submitted_contribution has_a_submitted_contribution EEnum has_an_expertise
 ;
syntax Submitted_contribution
        = Reviewed_contribution
        | has_a_review_expertise: Review_expertise
 ;
syntax Regular_author
        = Contribution_1th_author
        | Contribution_co_author
 ;
syntax Conference_contributor
        = Active_conference_participant
        | Regular_author
        | Invited_speaker
 ;
syntax Contribution_1th_author
        = 
        ()
 ;
syntax Contribution_co_author
        = 
        ()
 ;
syntax Conference_contribution
        = Poster
        | Written_contribution
        | Presentation
        | is_submitted_at: Conference_volume
 ;
syntax Co_chair
        = 
        was_a_committe_co-chair_of: Committee
 ;
syntax Committee
        = Program_committee
        | Organizing_committee
        | Steering_committee
        | Committee_member has_members Conference_volume was_a_committee_of Co_chair has_a_committee_co-chair Chair has_a_committee_chair
 ;
syntax Committee_member
        = Co_chair
        | Chair
        | was_a_member_of: Committee
 ;
syntax Extended_abstract
        = 
        Abstract
 ;
syntax Important_dates
        = 
        Date is_an_abstract_submission_date Date is_a_full_paper_submission_date Date is_an_ending_date Date is_a_date_of_acceptance_announcement Date is_a_date_of_camera_ready_paper_submission Date is_a_starting_date Conference_volume belong_to_a_conference_volume
 ;
syntax Invited_speaker
        = 
        ()
 ;
syntax Conference_proceedings
        = 
        String has_an_ISBN Publisher has_a_publisher String has_a_volume
 ;
syntax Information_for_participants
        = 
        Person has_authors Date has_a_date_of_issue
 ;
syntax Conference_document
        = Conference_contribution
        | Information_for_participants
        | Call_for_paper
        | Conference_announcement
        | Call_for_participation
        | Conference_www
        | Person has_authors Date has_a_date_of_issue
 ;
syntax Regular_contribution
        = 
        Extended_abstract
 ;
syntax Poster
        = is_submitted_at: Conference_volume
        | Author writtenBy Topic dealsWith String remark String abstract String contactEmail String hasKeyword String hasTitle
 ;
syntax Written_contribution
        = Submitted_contribution
        | Regular_contribution
 ;
syntax Conference_applicant
        = 
        Registeered_applicant
 ;
syntax Camera_ready_contribution
        = 
        ()
 ;
syntax Accepted_contribution
        = 
        Camera_ready_contribution
 ;
syntax Program_committee
        = 
        was_a_program_committee_of: Conference_volume
 ;
syntax Organizing_committee
        = 
        was_an_organizing_committee_of: Conference_volume
 ;
syntax Steering_committee
        = 
        was_a_steering_committee_of: Conference_volume
 ;
syntax Conference_volume
        = 
        Conference_part has_parts Workshop has_workshops Track has_tracks Tutorial has_tutorials Committee has_a_commtitee Steering_committee has_a_steering_committee Organizing_committee has_an_organizing_committee Important_dates has_important_dates Conference_contribution has_contributions String has_a_location Program_committee has_a_program_committee
 ;
syntax Call_for_paper
        = 
        Person has_authors Date has_a_date_of_issue
 ;
syntax Conference_announcement
        = 
        Person has_authors Date has_a_date_of_issue
 ;
syntax Invited_talk
        = 
        is_given_by: Active_conference_participant
 ;
syntax Conference_part
        = Track
        | Tutorial
        | Topic has_a_track-workshop-tutorial_topic Conference_volume is_part_of_conference_volumes Track_workshop_chair has_a_track-workshop-tutorial_chair
 ;
syntax Presentation
        = Invited_talk
        | is_given_by: Active_conference_participant
 ;
syntax Chair
        = 
        was_a_committee_chair_of: Committee
 ;
syntax Track
        = 
        Topic has_a_track-workshop-tutorial_topic Conference_volume is_part_of_conference_volumes Track_workshop_chair has_a_track-workshop-tutorial_chair
 ;
syntax Rejected_contribution
        = 
        has_a_review: Review
 ;
syntax Reviewed_contribution
        = Accepted_contribution
        | Rejected_contribution
        | has_a_review: Review
 ;
syntax Late_paid_applicant
        = 
        ()
 ;
syntax Paid_applicant
        = Late_paid_applicant
        | Early_paid_applicant
 ;
syntax Early_paid_applicant
        = 
        ()
 ;
syntax Organizer
        = 
        ()
 ;
syntax Call_for_participation
        = 
        Person has_authors Date has_a_date_of_issue
 ;
syntax Publisher
        = 
        issues: Conference_proceedings
 ;
syntax Registeered_applicant
        = 
        Paid_applicant
 ;
syntax Track_workshop_chair
        = 
        was_a_track-workshop_chair_of: Conference_part
 ;
syntax Conference_www
        = 
        has_a_URL: String
 ;
syntax Conference_fees
        = 
        ()
 ;
syntax Review_preference
        = 
        Thing has_a_topic_or_a_submission_contribution+ Integer has_a_degree
 ;
syntax EEnum
        = male: ()
        | female: ()
        | high: ()
        | medium: ()
        | low: ()
        | very high: ()
 ;
syntax Accepted_Paper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Rejected_Paper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Undecided_Paper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Manual_Paper_Assignment
        = 
        Program_Committee_member manually_assign_paper+
 ;
syntax Program_Committee_member
        = Senior_Program_Committee_member
        | Regular_Program_Committee_member
 ;
syntax Paper_assignment
        = Manual_Paper_Assignment
        | Automatic_Paper_Assignment
        | Program_Committee_member assign_paper Human is_performed_by
 ;
syntax Intensity
        = 
        ()
 ;
syntax Start_date_of_camera_ready_submission
        = 
        ()
 ;
syntax Camera_ready_submission_date
        = Start_date_of_camera_ready_submission
        | End_date_of_camera_ready_submission
 ;
syntax Date_of_notification
        = 
        ()
 ;
syntax Date
        = Camera_ready_submission_date
        | Date_of_notification
        | Abstract_submission_date
        | Date_of_conference
        | Full_paper_submission_date
 ;
syntax Contact_Person
        = 
        Article is_author_of Activity performs_activity Institute is_employed_in Topic has_topic_of_interest Activity supervises String e-mail String last_name String first_name
 ;
syntax Bidding_of_reviewer
        = 
        is_performed_by: Human
 ;
syntax Activity
        = Paper_assignment
        | Bidding_of_reviewer
        | Managing_of_conference_process
        | Reviewing_proces
        | Notification
        | Submission_process
        | Activity is_followed_by Human is_monitored_by Intensity has_intensity Article has_result Human is_performed_by Human is_supervised_by
 ;
syntax URL
        = Event_URL
        | Senior_Reviewer_URL
        | Chair_URL
        | Contact_Person_URL
        | Regular_Reviewer_URL
 ;
syntax Conference_setup
        = 
        Human sets_member Human is_made_by Topic includes_topic Date sets_date URL sets_URL
 ;
syntax Human
        = Program_Committee_member
        | Contact_Person
        | Program_Committee_Chair
        | Article is_author_of Activity performs_activity Institute is_employed_in Topic has_topic_of_interest Activity supervises String e-mail String last_name String first_name
 ;
syntax Managing_of_conference_process
        = 
        Activity is_followed_by Human is_monitored_by Intensity has_intensity Article has_result Human is_performed_by Human is_supervised_by
 ;
syntax Program_Committee_Chair
        = 
        Article is_author_of Activity performs_activity Institute is_employed_in Topic has_topic_of_interest Activity supervises String e-mail String last_name String first_name
 ;
syntax Reviewing_proces
        = Lower_tier_reviewing_process
        | Upper_tier_reviewing_process
 ;
syntax End_date_of_camera_ready_submission
        = 
        ()
 ;
syntax Abstract_submission_date
        = End_date_of_abstract_submission
        | Start_date_of_abstract_submission
 ;
syntax Group_email
        = 
        Activity goes_through Human is_sent_to Activity is_created_in Human structure_created_by Human has_author Classification gives_classification Author article_written_by Reviewer has_reviewer Abstract has_abstract
 ;
syntax Senior_Reviewer_URL
        = 
        ()
 ;
syntax Notification
        = 
        Article has_result Human is_performed_by
 ;
syntax Notification_email
        = Acceptance_notification_email
        | Rejection_notification_email
 ;
syntax Chair_URL
        = 
        ()
 ;
syntax Abstract_of_paper
        = 
        Activity goes_through Human is_sent_to Activity is_created_in Human structure_created_by Human has_author Classification gives_classification Author article_written_by Reviewer has_reviewer Abstract has_abstract
 ;
syntax Submission_process
        = 
        is_performed_by: Human
 ;
syntax Topic
        = 
        ()
 ;
syntax Lower_tier_reviewing_process
        = 
        ()
 ;
syntax Start_date_of_conference
        = 
        ()
 ;
syntax Date_of_conference
        = Start_date_of_conference
        | End_date_of_conference
 ;
syntax Senior_Program_Committee_member
        = 
        supervises: Activity
 ;
syntax End_date_of_abstract_submission
        = 
        ()
 ;
syntax Phase_of_conference
        = 
        ()
 ;
syntax Regular_Program_Committee_member
        = 
        ()
 ;
syntax Start_date_of_full_paper_submission
        = 
        ()
 ;
syntax Full_paper_submission_date
        = Start_date_of_full_paper_submission
        | End_date_of_full_paper_submission
 ;
syntax Start_date_of_abstract_submission
        = 
        ()
 ;
syntax End_date_of_conference
        = 
        ()
 ;
syntax Review_form
        = 
        is_created_in: Activity
 ;
syntax Automatic_Paper_Assignment
        = 
        Program_Committee_member automatically_assign_paper+
 ;
syntax Institute
        = 
        ()
 ;
syntax Classification
        = 
        ()
 ;
syntax Summary_of_reviews
        = 
        is_created_in: Activity
 ;
syntax Upper_tier_reviewing_process
        = 
        is_performed_by: Human
 ;
syntax End_date_of_full_paper_submission
        = 
        ()
 ;
syntax Acceptance_notification_email
        = 
        ()
 ;
syntax Rejection_notification_email
        = 
        ()
 ;
syntax Contact_Person_URL
        = 
        ()
 ;
syntax Regular_Reviewer_URL
        = 
        ()
 ;
syntax Trip
        = 
        ()
 ;
syntax Banquet
        = 
        ()
 ;
syntax Reception
        = 
        ()
 ;
syntax Social_event
        = Trip
        | Banquet
        | Reception
 ;
syntax Contribution
        = Poster
        | Short_paper
        | Author writtenBy Topic dealsWith String remark String abstract String contactEmail String hasKeyword String hasTitle
 ;
syntax City
        = 
        ()
 ;
syntax Country
        = 
        ()
 ;
syntax Company
        = 
        isProviderOf: Sponsorship
 ;
syntax University
        = 
        isProviderOf: Sponsorship
 ;
syntax Scholar
        = 
        studyAt: University
 ;
syntax Short_paper
        = 
        Author writtenBy Topic dealsWith String remark String abstract String contactEmail String hasKeyword String hasTitle
 ;
syntax Reviewing_results_event
        = 
        Administrative_event follows Administrative_event parallel_with
 ;
syntax Administrative_event
        = Reviewing_results_event
        | Reviewing_event
        | Registration_of_participants_event
        | Submission_event
        | Camera_Ready_event
        | Administrative_event follows Administrative_event parallel_with
 ;
syntax Reviewing_event
        = 
        Administrative_event follows Administrative_event parallel_with
 ;
syntax Registration_of_participants_event
        = 
        Administrative_event follows Administrative_event parallel_with
 ;
syntax Submission_event
        = 
        Administrative_event follows Administrative_event parallel_with
 ;
syntax Camera_Ready_event
        = 
        Administrative_event follows Administrative_event parallel_with
 ;
syntax Workshop
        = 
        Topic hasTopic Administrative_event hasAdministrativeEvent
 ;
syntax Tutorial
        = 
        Topic hasTopic Administrative_event hasAdministrativeEvent Topic has_a_track-workshop-tutorial_topic Conference_volume is_part_of_conference_volumes Track_workshop_chair has_a_track-workshop-tutorial_chair
 ;
syntax Working_event
        = Workshop
        | Tutorial
        | Topic hasTopic Administrative_event hasAdministrativeEvent
 ;
syntax Member
        = 
        earlyRegistration: Boolean
 ;
syntax Participant
        = Member
        | Student
        | Regular
        | earlyRegistration: Boolean
 ;
syntax Member_PC
        = 
        Topic expertOn Contribution reviewes
 ;
syntax Chair_PC
        = 
        Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax Student
        = 
        earlyRegistration: Boolean
 ;
syntax Science_Worker
        = 
        Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax Assistant
        = 
        Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax Volunteer
        = 
        Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax Regular
        = 
        earlyRegistration: Boolean
 ;
syntax Pc_meeting
        = 
        Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
 ;
syntax Session
        = 
        Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
 ;
syntax Chair
        = 
        Reviewer assigns_reviewers_to_article Program creates_program
 ;
syntax Abstract
        = 
        part_of_article: Article
 ;
syntax Article
        = Group_email
        | Notification_email
        | Abstract_of_paper
        | Review_form
        | Summary_of_reviews
        | Review
        | Activity goes_through Human is_sent_to Activity is_created_in Human structure_created_by Human has_author Classification gives_classification Author article_written_by Reviewer has_reviewer Abstract has_abstract
 ;
syntax Review
        = Meta_Review
        | Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
 ;
syntax Participant
        = 
        submits_to_conference: Conference
 ;
syntax Program
        = 
        Chair program_created_by Session has_session
 ;
syntax SlideSet
        = 
        Thing relatesTo+ User recieved_by Person used_by User submited__by
 ;
syntax Programme
        = 
        belongsToEvent: ConferenceEvent
 ;
syntax MealMenu
        = 
        isMenuOf: MealEvent
 ;
syntax Topic
        = ParallelAndDistributedComputingTopic
        | WirelessCommunicationsTopic
        | OperatingTopicsystems
        | ComputerNetworksTopic
        | SatelliteAndSpaceCommunicationsTopic
        | CADTopic
        | MultimediaTopic
        | CommunicationsTopic
        | PowerlineTransmissionTopic
        | AntennasTopic
        | PerformanceTopic
        | SignalProcessingTopic
        | MicroelectronicsTopic
        | TestOnlyTopic
        | RadioCommunicationsTopic
        | ComputerArchitectureTopic
        | MedicineTopic
        | SecurityTopic
        | MobileComputingTopic
        | CryptographyTopic
        | CommunicationTheoryTopic
        | Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax ConferenceEvent
        = NonAcademicEvent
        | AcademicEvent
        | Person hasAttendee Place hasLocation Programme hasProgramme DateTime hasEndDateTime DateTime hasStartDateTime
 ;
syntax Call
        = CallForPapers
        | CallForReviews
        | CallForManuscripts
        | AcademicEvent forEvent Person isInitiatedBy+ String hasSubmissionInstructions DateTime hasSubmissionDeadline
 ;
syntax ReviewRating
        = WeekRejectRating
        | AcceptRating
        | AccpetIfRoomRating
        | RejectRating
 ;
syntax Organization
        = Company
        | University
        | AcademiaOrganization
        | IndustryOrganization
        | NGO
        | GovernmentOrganization
        | isProviderOf: Sponsorship
 ;
syntax ReviewForm
        = 
        ()
 ;
syntax PersonalHistory
        = PersonalPublicationHistory
        | PersonalReviewHistory
 ;
syntax Sponsorship
        = TravelGrant
        | Organization providedBy String hasCostCurrency Integer hasCostAmount
 ;
syntax ReviewQuestion
        = TextualReviewQuestion
        | NumericalReviewQuestion
 ;
syntax ConferenceSession
        = 
        ()
 ;
syntax ContactInformation
        = 
        String hasCity String hasStreet String hasPostalCode String hasPhone
 ;
syntax Place
        = DiningPlace
        | ConferenceVenuePlace
        | MeetingRoomPlace
        | AccommodationPlace
        | isLocationOf: ConferenceEvent
 ;
syntax WeekRejectRating
        = 
        ()
 ;
syntax AcceptRating
        = 
        ()
 ;
syntax AccpetIfRoomRating
        = 
        ()
 ;
syntax RejectRating
        = 
        ()
 ;
syntax MealEvent
        = ConferenceDinner
        | hasMenu: MealMenu
 ;
syntax NonAcademicEvent
        = MealEvent
        | BreakEvent
        | SocialEvent
 ;
syntax BreakEvent
        = CoffeeBreak
        | FreeTimeBreak
        | MealBreak
 ;
syntax ParallelAndDistributedComputingTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax WirelessCommunicationsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax OperatingTopicsystems
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax ComputerNetworksTopic
        = ComputerNetworksEnterpriseTopic
        | ComputerNetworksSwitchingTopic
        | ComputerNetworksSensorTopic
        | ComputerNetworksSecurityTopic
        | ComputerNetworksOpticalTopic
        | ComputerNetworksMeasurementsTopic
        | ComputerNetworksManagementTopic
        | ComputerNetworksAapplicationsTopic
 ;
syntax SatelliteAndSpaceCommunicationsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax CADTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax MultimediaTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax CommunicationsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax PowerlineTransmissionTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax AntennasTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax PerformanceTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax SignalProcessingTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax MicroelectronicsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax TestOnlyTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax RadioCommunicationsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax ComputerArchitectureTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax MedicineTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax SecurityTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax MobileComputingTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax CryptographyTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax CommunicationTheoryTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf
 ;
syntax Author
        = AuthorNotReviewer
        | Co_author
        | Corresponding_Author
        | Presenter
        | Paper submitPaper Paper writePaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper
 ;
syntax DiningPlace
        = 
        isLocationOf: ConferenceEvent
 ;
syntax Presenter
        = 
        Paper submitPaper Paper writePaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper
 ;
syntax AcademiaOrganization
        = 
        isProviderOf: Sponsorship
 ;
syntax IndustryOrganization
        = 
        isProviderOf: Sponsorship
 ;
syntax NGO
        = 
        isProviderOf: Sponsorship
 ;
syntax GovernmentOrganization
        = 
        isProviderOf: Sponsorship
 ;
syntax ComputerNetworksEnterpriseTopic
        = 
        ()
 ;
syntax ComputerNetworksSwitchingTopic
        = 
        ()
 ;
syntax ComputerNetworksSensorTopic
        = 
        ()
 ;
syntax ComputerNetworksSecurityTopic
        = 
        ()
 ;
syntax ComputerNetworksOpticalTopic
        = 
        ()
 ;
syntax ComputerNetworksMeasurementsTopic
        = 
        ()
 ;
syntax ComputerNetworksManagementTopic
        = 
        ()
 ;
syntax ComputerNetworksAapplicationsTopic
        = 
        ()
 ;
syntax ActivePaper
        = RatedPapers
        | hasRating: ReviewRating
 ;
syntax PendingPaper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax WithdrawnPaper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax RejectedPaper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax AcceptedPaper
        = 
        relatedToEvent: PaperPresentation
 ;
syntax PublishedPaper
        = 
        Author isWrittenBy Person isReviewedBy+ Integer full_paper_size Human has_author Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Attendee
        = 
        Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax CoffeeBreak
        = 
        ()
 ;
syntax FreeTimeBreak
        = 
        ()
 ;
syntax MealBreak
        = 
        ()
 ;
syntax ClosingTalk
        = 
        ()
 ;
syntax WelcomeTalk
        = 
        ()
 ;
syntax TalkEvent
        = ClosingTalk
        | WelcomeTalk
 ;
syntax SessionChair
        = 
        Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax TPCMember
        = 
        Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name
 ;
syntax TwoLevelConference
        = 
        Phase_of_conference is_in_phase Program has_program Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL
 ;
syntax CallForPapers
        = 
        AcademicEvent forEvent Person isInitiatedBy+ String hasSubmissionInstructions DateTime hasSubmissionDeadline
 ;
syntax TextualReviewQuestion
        = 
        ()
 ;
syntax NumericalReviewQuestion
        = 
        ()
 ;
syntax OrganizationalMeeting
        = 
        hasCall: Call
 ;
syntax PaperPresentation
        = 
        relatedToPaper: AcceptedPaper
 ;
syntax AcademicEvent
        = TalkEvent
        | OrganizationalMeeting
        | PaperPresentation
        | hasCall: Call
 ;
syntax PersonalPublicationHistory
        = 
        ()
 ;
syntax Excursion
        = 
        ()
 ;
syntax SocialEvent
        = Excursion
        | Reception
 ;
syntax CallForReviews
        = 
        AcademicEvent forEvent Person isInitiatedBy+ String hasSubmissionInstructions DateTime hasSubmissionDeadline
 ;
syntax PersonalReviewHistory
        = 
        isReviewHistoryOf: Reviewer
 ;
syntax ConferenceVenuePlace
        = 
        isLocationOf: ConferenceEvent
 ;
syntax CallForManuscripts
        = 
        AcademicEvent forEvent Person isInitiatedBy+ String hasSubmissionInstructions DateTime hasSubmissionDeadline
 ;
syntax SingleLevelConference
        = 
        Phase_of_conference is_in_phase Program has_program Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL
 ;
syntax MeetingRoomPlace
        = 
        isLocationOf: ConferenceEvent
 ;
syntax AccommodationPlace
        = 
        isLocationOf: ConferenceEvent
 ;
syntax RatedPapers
        = 
        hasRating: ReviewRating
 ;
syntax TravelGrant
        = 
        Organization providedBy String hasCostCurrency Integer hasCostAmount
 ;
syntax ConferenceDinner
        = 
        hasMenu: MealMenu
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
