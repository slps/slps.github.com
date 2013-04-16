@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ekaw_owl

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Thing
        = Conference
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
        | Event
        | Contribution
 ;
syntax Meta_Reviewer
        = 
        Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned Review writeReview ExternalReviewer assignExternalReviewer Reviewer invites_co-reviewers Reviewer invited_by Thing has_a_review_reference_or_expertise+ Review writes_review PersonalReviewHistory hasReviewHistory
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
        | ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax ConferenceMember
        = ConferenceChair
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
        Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Paper submitPaper Paper writePaper Contribution writes
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
        | ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by Conference memberOfConference
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
syntax Co_author
        = 
        co-writePaper: Paper
 ;
syntax PaperAbstract
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax PaperFullVersion
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Administrator
        = 
        Event approve Role assign Conference finalizePaperAssignment Conference runPaperAssignmentTools Conference enableVirtualMeeting Conference startReviewerBidding Reviewer assignReviewer Paper rejectPaper Conference enterConferenceDetails Conference printHardcopyMailingManifests ProgramCommitteeMember setMaxPapers Conference enterReviewCriteria Paper acceptPaper ProgramCommitteeMember addProgramCommitteeMember
 ;
syntax Meta_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
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
        | Paper_Author
        | Conference_Participant
        | Agency_Staff_Member
        | Possible_Reviewer
        | Student
        | ProgramCommitteeMember
        | Chairman
        | Reviewer
        | Administrator
        | ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Symposium
        = 
        Thing eventOnList+ Event partOfEvent Event hasEvent Thing organisedBy+ Location heldIn Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
 ;
syntax Document
        = Email
        | Submission
        | Template
        | Article
        | SlideSet
        | Programme
        | MealMenu
        | Programme_Brochure
        | Flyer
        | Web_Site
        | Multi_author_Volume
        | Paper
        | Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Invited_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
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
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
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
        Article has_result Person sent_by
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
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Template
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
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
        | Article has_result Person sent_by
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
        Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Paper submitPaper Paper writePaper Contribution writes
 ;
syntax Reviewer_Role
        = 
        assigned_by: Administrator
 ;
syntax Event_Approval
        = 
        Article has_result Person sent_by
 ;
syntax Registration
        = 
        Article has_result Person sent_by
 ;
syntax Full_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Research_Topic
        = define: Event
        | topicCoveredBy: Thing
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
syntax Abstract
        = Tutorial_Abstract
        | Invited_Talk_Abstract
        | Article part_of_article Thing is_the_1th_part_of+
 ;
syntax Extended_abstract
        = 
        ()
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
        = Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
        | hasReview: Review
 ;
syntax Rejected_Paper
        = Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
        | hasReview: Review
 ;
syntax Undecided_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
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
syntax Article
        = Group_email
        | Notification_email
        | Abstract_of_paper
        | Review_form
        | Summary_of_reviews
        | Review
        | Author article_written_by Reviewer has_reviewer Abstract has_abstract Activity goes_through Human is_sent_to Activity is_created_in Human structure_created_by Human has_author Classification gives_classification
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
        Author article_written_by Reviewer has_reviewer Abstract has_abstract Activity goes_through Human is_sent_to Activity is_created_in Human structure_created_by Human has_author Classification gives_classification
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
        Author article_written_by Reviewer has_reviewer Abstract has_abstract Activity goes_through Human is_sent_to Activity is_created_in Human structure_created_by Human has_author Classification gives_classification
 ;
syntax Submission_process
        = 
        is_performed_by: Human
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
syntax Event
        = Symposium
        | Social_event
        | Administrative_event
        | Working_event
        | Pc_meeting
        | Session
        | Social_Event
        | Scientific_Event
        | Thing eventOnList+ Event partOfEvent Event hasEvent Thing organisedBy+ Location heldIn Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
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
syntax Company
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
        Topic hasTopic Administrative_event hasAdministrativeEvent
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
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Student
        = earlyRegistration: Boolean
        | ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Science_Worker
        = 
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Assistant
        = 
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Volunteer
        = 
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Regular
        = 
        earlyRegistration: Boolean
 ;
syntax Author
        = AuthorNotReviewer
        | Co_author
        | Corresponding_Author
        | Presenter
        | Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Paper submitPaper Paper writePaper Contribution writes
 ;
syntax Pc_meeting
        = 
        Thing eventOnList+ Event partOfEvent Event hasEvent Thing organisedBy+ Location heldIn Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
 ;
syntax Session
        = 
        Thing eventOnList+ Event partOfEvent Event hasEvent Thing organisedBy+ Location heldIn Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate
 ;
syntax Conference
        = Conference_volume
        | TwoLevelConference
        | SingleLevelConference
        | Phase_of_conference is_in_phase Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL Program has_program
 ;
syntax Chair
        = 
        Reviewer assigns_reviewers_to_article Program creates_program
 ;
syntax Review
        = Meta_Review
        | Positive_Review
        | Negative_Review
        | Neutral_Review
        | Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
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
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
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
        | AcademiaOrganization
        | IndustryOrganization
        | NGO
        | GovernmentOrganization
        | University
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
syntax Country
        = 
        ()
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
syntax DiningPlace
        = 
        isLocationOf: ConferenceEvent
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
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax WithdrawnPaper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax RejectedPaper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax AcceptedPaper
        = 
        relatedToEvent: PaperPresentation
 ;
syntax PublishedPaper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Attendee
        = 
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
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
syntax Reviewer
        = Meta_Reviewer
        | Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned Review writeReview ExternalReviewer assignExternalReviewer Reviewer invites_co-reviewers Reviewer invited_by Thing has_a_review_reference_or_expertise+ Review writes_review PersonalReviewHistory hasReviewHistory
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
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax TPCMember
        = 
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax TwoLevelConference
        = 
        Phase_of_conference is_in_phase Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL Program has_program
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
        Phase_of_conference is_in_phase Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL Program has_program
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
syntax Evaluated_Paper
        = Accepted_Paper
        | Rejected_Paper
        | hasReview: Review
 ;
syntax Camera_Ready_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Positive_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
 ;
syntax Workshop_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Industrial_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Paper
        = PaperAbstract
        | PaperFullVersion
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
        | Camera_Ready_Paper
        | Workshop_Paper
        | Industrial_Paper
        | Conference_Paper
        | Submitted_Paper
        | Poster_Paper
        | Regular_Paper
        | Demo_Paper
        | Abstract
        | Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Conference_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Industrial_Session
        = 
        ()
 ;
syntax Conference_Session
        = 
        Industrial_Session
 ;
syntax Regular_Session
        = 
        ()
 ;
syntax Poster_Session
        = 
        ()
 ;
syntax Demo_Session
        = 
        ()
 ;
syntax Session
        = Conference_Session
        | Regular_Session
        | Poster_Session
        | Demo_Session
        | Workshop_Session
 ;
syntax Paper_Author
        = 
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Conference_Trip
        = 
        ()
 ;
syntax Social_Event
        = Conference_Trip
        | Conference_Banquet
 ;
syntax Tutorial_Abstract
        = 
        Article part_of_article Thing is_the_1th_part_of+
 ;
syntax Conference_Participant
        = Tutorial_Chair
        | PC_Chair
        | Workshop_Chair
        | Session_Chair
        | Presenter
        | Demo_Chair
        | OC_Member
        | Early_Registered_Participant
        | Late_Registered_Participant
 ;
syntax Submitted_Paper
        = 
        Assigned_Paper
 ;
syntax Assigned_Paper
        = Evaluated_Paper
        | hasReviewer: Possible_Reviewer
 ;
syntax Negative_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
 ;
syntax Neutral_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
 ;
syntax Organising_Agency
        = 
        Thing publisherOf+ Thing technicallyOrganises
 ;
syntax Academic_Institution
        = Research_Institute
        | University
        | scientificallyOrganises: Academic_Institution
 ;
syntax Organisation
        = Organising_Agency
        | Academic_Institution
        | Proceedings_Publisher
        | Thing publisherOf+ Thing technicallyOrganises
 ;
syntax Proceedings_Publisher
        = 
        Thing publisherOf+ Thing technicallyOrganises
 ;
syntax Poster_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Regular_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Demo_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Co_author hasCo-author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Author hasAuthor Administrator acceptedBy Administrator rejectedBy Meta_Reviewer readByMeta-Reviewer
 ;
syntax Location
        = 
        locationOf: Event
 ;
syntax Research_Institute
        = 
        scientificallyOrganises: Academic_Institution
 ;
syntax Scientific_Event
        = Track
        | Session
        | Individual_Presentation
 ;
syntax Invited_Talk_Abstract
        = 
        Article part_of_article Thing is_the_1th_part_of+
 ;
syntax Agency_Staff_Member
        = 
        ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Document authorOf Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Activity send Person added_by
 ;
syntax Workshop_Session
        = 
        ()
 ;
syntax Invited_Talk
        = 
        Document presentationOfPaper+
 ;
syntax Contributed_Talk
        = 
        Document presentationOfPaper+
 ;
syntax Demo_Chair
        = 
        ()
 ;
syntax Tutorial_Chair
        = 
        ()
 ;
syntax PC_Chair
        = 
        ()
 ;
syntax PC_Member
        = SC_Member
        | Session_Chair
        | Tutorial_Chair
        | PC_Chair
        | Workshop_Chair
 ;
syntax OC_Member
        = 
        OC_Chair
 ;
syntax Proceedings
        = 
        Conference_Proceedings
 ;
syntax Programme_Brochure
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Flyer
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Web_Site
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Multi_author_Volume
        = 
        Proceedings
 ;
syntax Individual_Presentation
        = Invited_Talk
        | Contributed_Talk
        | Document presentationOfPaper+
 ;
syntax OC_Chair
        = 
        ()
 ;
syntax Conference_Banquet
        = 
        ()
 ;
syntax Workshop_Chair
        = 
        ()
 ;
syntax Conference_Proceedings
        = 
        ()
 ;
syntax Session_Chair
        = 
        ()
 ;
syntax Early_Registered_Participant
        = 
        ()
 ;
syntax Late_Registered_Participant
        = 
        ()
 ;
syntax University
        = 
        Academic_Institution scientificallyOrganises Sponsorship isProviderOf
 ;
syntax Possible_Reviewer
        = PC_Member
        | reviewerOfPaper: Paper
 ;
syntax Invited_Speaker
        = 
        ()
 ;
syntax Presenter
        = 
        Invited_Speaker
 ;
syntax SC_Member
        = 
        ()
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
