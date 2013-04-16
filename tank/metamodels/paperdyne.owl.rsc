@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Paperdyne_owl

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Thing
        = Document
        | Organizer
        | Role
        | Person
        | Detail
        | Review_expertise
        | Review_preference
        | Date
        | URL
        | Conference_setup
        | Contribution
        | Event
        | Place
        | City
        | Activity
        | OrganizingCommittee
        | ActivitySubmissionForm
        | DoubleBlindReview
        | ConferenceProgram
        | Slot
        | ResearchTopic
        | OutputDocument
        | ProgramCommittee
        | Criterion
        | Program_Comitee
        | Conflict_Of_Interest
        | Conflict_Rules
        | Topic
        | Program_Comitee_Meeting
 ;
syntax Meta_Reviewer
        = 
        Reviewer invites_co-reviewers Reviewer invited_by Thing has_a_review_reference_or_expertise+ Review writes_review PersonalReviewHistory hasReviewHistory DoubleBlindReview executes ExternalReviewer cooperates Paper IsAssignedTo Paper hasConflictedPaper Paper hasPreferredPaper ResearchTopic hasPreferredTopic Review writeReview Paper_Review has_made_review String UserName String Comments_to_Chair String Other_Areas Pending_Proposed_Conflict refuses Paper reviews Paper bidsFor Pending_Proposed_Conflict confirmes Program_Comitee_Chair assignedPaperBy Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned ExternalReviewer assignExternalReviewer
 ;
syntax Reviewer
        = Meta_Reviewer
        | Reviewer invites_co-reviewers Reviewer invited_by Thing has_a_review_reference_or_expertise+ Review writes_review PersonalReviewHistory hasReviewHistory DoubleBlindReview executes ExternalReviewer cooperates Paper IsAssignedTo Paper hasConflictedPaper Paper hasPreferredPaper ResearchTopic hasPreferredTopic Review writeReview Paper_Review has_made_review String UserName String Comments_to_Chair String Other_Areas Pending_Proposed_Conflict refuses Paper reviews Paper bidsFor Pending_Proposed_Conflict confirmes Program_Comitee_Chair assignedPaperBy Administrator assignedByAdministrator Bid adjustBid Paper readPaper Paper hasBeenAssigned ExternalReviewer assignExternalReviewer
 ;
syntax Decision
        = Acceptance
        | Rejection
 ;
syntax Preference
        = 
        ()
 ;
syntax Bid
        = 
        adjustedBy: Reviewer
 ;
syntax Conference
        = Conference_volume
        | TwoLevelConference
        | SingleLevelConference
        | Phase_of_conference is_in_phase Program has_program Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry OrganizingCommittee isOrganizedBy Integer annualOrder Location takesPlace String hasAcronym Program_Comitee_Chair finishedBy Topic focusesOn Program_Comitee_Chair startedBy Location takesPlace ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL
 ;
syntax ConferenceChair
        = memberOfConference: Conference
        | String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
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
        | Chair
        | ProgramCommittee memberOfProgramCommittee Integer maxPapers Administrator addedBy ProgramCommittee isMemberOf String hasPassword
 ;
syntax AuthorNotReviewer
        = 
        Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax SubjectArea
        = 
        ()
 ;
syntax ExternalReviewer
        = 
        Reviewer cooperatesReviewer Reviewer assignedByReviewer
 ;
syntax Chairman
        = ConferenceChair
        | AssociatedChair
        | ProgramCommitteeChair
        | String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by Conference memberOfConference
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
        = PaperFullVersion
        | Invited_Paper
        | Short_Paper
        | Full_Paper
        | Undecided_Paper
        | ActivePaper
        | PendingPaper
        | WithdrawnPaper
        | RejectedPaper
        | PublishedPaper
        | Camera_Ready_Paper
        | Workshop_Paper
        | Industrial_Paper
        | Conference_Paper
        | Poster_Paper
        | Regular_Paper
        | Demo_Paper
        | AcceptedPaper
        | Submitted_Paper
        | Abstract
        | Accepted_Paper
        | Rejected_Paper
        | PaperAbstract
        | Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Co_Author
        = 
        co-writePaper: Paper
 ;
syntax PaperFullVersion
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Administrator
        = 
        Event approve Role assign Thing assigns Conference finalizePaperAssignment Conference runPaperAssignmentTools Conference enableVirtualMeeting Conference startReviewerBidding Reviewer assignReviewer Paper rejectPaper Conference enterConferenceDetails Conference printHardcopyMailingManifests ProgramCommitteeMember setMaxPapers Conference enterReviewCriteria Paper acceptPaper ProgramCommitteeMember addProgramCommitteeMember
 ;
syntax Meta_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Evaluation containsEvaluation Paper rates Reviewer isWritenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
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
        | Delegate
        | Sponsor
        | OutsideReferee
        | ConferenceAttendant
        | Program_Comitee_Chair
        | ProgramCommitteeMember
        | Chairman
        | Organizer
        | Speaker
        | String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Symposium
        = 
        Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate Thing eventOnList+ Event partOfEvent Event hasEvent Thing organisedBy+ Location heldIn
 ;
syntax Abstract
        = Tutorial_Abstract
        | Invited_Talk_Abstract
        | Thing is_the_1th_part_of+ Article part_of_article
 ;
syntax Document
        = Email
        | Template
        | Article
        | SlideSet
        | Programme
        | MealMenu
        | Programme_Brochure
        | Flyer
        | Web_Site
        | Multi_author_Volume
        | Form
        | Mailing_list
        | Record_of_attendance
        | Brief_introduction_for_Session_chair
        | Invitation_letter
        | Viza
        | Transparency
        | Submission
        | Payment_document
        | Evaluation
        | PaperAbstract
        | Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Invited_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
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
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
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
        Topic hasTopic Integer expectedAttendance Conference isPartOf Time is_held_before Thing is_held_in Time is_held_after DateTime is_dated_on Article has_result Person sent_by Activity is_followed_by Human is_monitored_by Intensity has_intensity Article has_result Human is_performed_by Human is_supervised_by
 ;
syntax Approval_Email
        = 
        confirm: Event
 ;
syntax Rejection_Email
        = 
        ()
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
        Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax Reviewer_Role
        = 
        assigned_by: Administrator
 ;
syntax Event_Approval
        = 
        Topic hasTopic Integer expectedAttendance Conference isPartOf Time is_held_before Thing is_held_in Time is_held_after DateTime is_dated_on Article has_result Person sent_by Activity is_followed_by Human is_monitored_by Intensity has_intensity Article has_result Human is_performed_by Human is_supervised_by
 ;
syntax Registration
        = Topic hasTopic Integer expectedAttendance Conference isPartOf Time is_held_before Thing is_held_in Time is_held_after DateTime is_dated_on Article has_result Person sent_by Activity is_followed_by Human is_monitored_by Intensity has_intensity Article has_result Human is_performed_by Human is_supervised_by
        | ()
 ;
syntax Full_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
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
        = Contribution_1th_Author
        | Contribution_co_Author
 ;
syntax Conference_contributor
        = Active_conference_participant
        | Regular_author
        | Invited_speaker
 ;
syntax Contribution_1th_Author
        = 
        ()
 ;
syntax Contribution_co_Author
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
        | was_a_member_of: Committee
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
        | Author changedBy EEnum hasContributionStatus Author writtenBy Topic dealsWith String remark String abstract String contactEmail String hasKeyword String hasTitle
        | hasContributionFileStatus: EEnum
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
        | Workshop
        | Tutorial
        | Topic has_a_track-workshop-tutorial_topic Conference_volume is_part_of_conference_volumes Track_workshop_chair has_a_track-workshop-tutorial_chair
 ;
syntax Presentation
        = Invited_talk
        | PowerPoint_presentation
        | Video_presentation
        | is_given_by: Active_conference_participant
 ;
syntax Track
        = 
        Topic has_a_track-workshop-tutorial_topic Conference_volume is_part_of_conference_volumes Track_workshop_chair has_a_track-workshop-tutorial_chair
 ;
syntax Workshop
        = 
        Topic has_a_track-workshop-tutorial_topic Conference_volume is_part_of_conference_volumes Track_workshop_chair has_a_track-workshop-tutorial_chair
 ;
syntax Tutorial
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
syntax Call_for_participation
        = 
        Person has_authors Date has_a_date_of_issue
 ;
syntax Publisher
        = 
        issues: Conference_Proceedings
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
syntax Accepted_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer Review hasReview
 ;
syntax Rejected_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer Review hasReview
 ;
syntax Undecided_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
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
        Topic hasTopic Integer expectedAttendance Conference isPartOf Time is_held_before Thing is_held_in Time is_held_after DateTime is_dated_on Article has_result Person sent_by Activity is_followed_by Human is_monitored_by Intensity has_intensity Article has_result Human is_performed_by Human is_supervised_by
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
syntax Contribution
        = Poster
        | Short_paper
        | Contribution_File
        | Paper
        | Author changedBy EEnum hasContributionStatus Author writtenBy Topic dealsWith String remark String abstract String contactEmail String hasKeyword String hasTitle
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
        Sponsorship isProviderOf Academic_Institution scientificallyOrganises
 ;
syntax Scholar
        = 
        studyAt: University
 ;
syntax Short_paper
        = 
        Author changedBy EEnum hasContributionStatus Author writtenBy Topic dealsWith String remark String abstract String contactEmail String hasKeyword String hasTitle
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
syntax Working_event
        = 
        Topic hasTopic Administrative_event hasAdministrativeEvent
 ;
syntax Participant
        = Student
        | Regular
        | Member
        | earlyRegistration: Boolean
 ;
syntax Member_PC
        = 
        Topic expertOn Contribution reviewes
 ;
syntax Chair_PC
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Student
        = earlyRegistration: Boolean
        | String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Science_Worker
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Assistant
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Volunteer
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Regular
        = 
        earlyRegistration: Boolean
 ;
syntax Pc_meeting
        = 
        Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate Thing eventOnList+ Event partOfEvent Event hasEvent Thing organisedBy+ Location heldIn
 ;
syntax Review
        = Meta_Review
        | Positive_Review
        | Negative_Review
        | Neutral_Review
        | Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Evaluation containsEvaluation Paper rates Reviewer isWritenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
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
syntax ConferenceSession
        = 
        ()
 ;
syntax ContactInformation
        = 
        String hasCity String hasStreet String hasPostalCode String hasPhone
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
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax WirelessCommunicationsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax OperatingTopicsystems
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
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
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax CADTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax MultimediaTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax CommunicationsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax PowerlineTransmissionTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax AntennasTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax PerformanceTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax SignalProcessingTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax MicroelectronicsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax TestOnlyTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax RadioCommunicationsTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax ComputerArchitectureTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax MedicineTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax SecurityTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax MobileComputingTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax CryptographyTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax CommunicationTheoryTopic
        = 
        Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax DiningPlace
        = 
        ConferenceEvent isLocationOf Item is_equipped_by
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
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax WithdrawnPaper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax RejectedPaper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax PublishedPaper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Attendee
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
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
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax TPCMember
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax TwoLevelConference
        = 
        Phase_of_conference is_in_phase Program has_program Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry OrganizingCommittee isOrganizedBy Integer annualOrder Location takesPlace String hasAcronym Program_Comitee_Chair finishedBy Topic focusesOn Program_Comitee_Chair startedBy Location takesPlace ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL
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
        ConferenceEvent isLocationOf Item is_equipped_by
 ;
syntax CallForManuscripts
        = 
        AcademicEvent forEvent Person isInitiatedBy+ String hasSubmissionInstructions DateTime hasSubmissionDeadline
 ;
syntax SingleLevelConference
        = 
        Phase_of_conference is_in_phase Program has_program Person hasMember String hasName DateTime endDate DateTime paperDueOn DateTime registrationDueOn DateTime manuscriptDueOn DateTime startDate Country hasCountry OrganizingCommittee isOrganizedBy Integer annualOrder Location takesPlace String hasAcronym Program_Comitee_Chair finishedBy Topic focusesOn Program_Comitee_Chair startedBy Location takesPlace ConferenceMember hasConferenceMember Administrator paperAssignmentFinalizedBy Administrator reviewCriteriaEnteredBy Administrator paperAssignmentToolsRunBy Administrator virtualMeetingEnabledBy Administrator hardcopyMailingManifestsPrintedBy Administrator detailsEnteredBy Administrator reviewerBiddingStartedBy Date date Integer reviewsPerPaper AnyURI logoURL Boolean acceptsHardcopySubmissions AnyURI siteURL
 ;
syntax MeetingRoomPlace
        = 
        ConferenceEvent isLocationOf Item is_equipped_by
 ;
syntax AccommodationPlace
        = 
        ConferenceEvent isLocationOf Item is_equipped_by
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
syntax Event
        = Symposium
        | Social_event
        | Administrative_event
        | Working_event
        | Pc_meeting
        | Social_Event
        | Scientific_Event
        | Event_Tracks conists_of Approval_Email confirmed_by Event_Setup defined_by Administrator approved_by String starts_on String ends_on DateTime has_startdate DateTime has_enddate Thing eventOnList+ Event partOfEvent Event hasEvent Thing organisedBy+ Location heldIn
 ;
syntax Evaluated_Paper
        = Accepted_Paper
        | Rejected_Paper
        | hasReview: Review
 ;
syntax Camera_Ready_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Positive_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Evaluation containsEvaluation Paper rates Reviewer isWritenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
 ;
syntax Workshop_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Industrial_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Conference_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
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
        AcceptedPaper hasAssignedPaper String room Slot isAssociatedTo Chair hasChair
 ;
syntax Poster_Session
        = 
        AcceptedPaper hasAssignedPaper String room Slot isAssociatedTo Chair hasChair
 ;
syntax Demo_Session
        = 
        AcceptedPaper hasAssignedPaper String room Slot isAssociatedTo Chair hasChair
 ;
syntax Session
        = Conference_Session
        | Regular_Session
        | Poster_Session
        | Demo_Session
        | Workshop_Session
        | Speaker_lecture
        | AcceptedPaper hasAssignedPaper String room Slot isAssociatedTo Chair hasChair
 ;
syntax Paper_Author
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
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
        Thing is_the_1th_part_of+ Article part_of_article
 ;
syntax Conference_Participant
        = Tutorial_Chair
        | PC_Chair
        | Workshop_Chair
        | Presenter
        | Session_Chair
        | Demo_Chair
        | OC_Member
        | Early_Registered_Participant
        | Late_Registered_Participant
 ;
syntax Assigned_Paper
        = Evaluated_Paper
        | hasReviewer: Possible_Reviewer
 ;
syntax Negative_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Evaluation containsEvaluation Paper rates Reviewer isWritenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
 ;
syntax Neutral_Review
        = 
        Paper reviewOfPaper Possible_Reviewer reviewWrittenBy Evaluation containsEvaluation Paper rates Reviewer isWritenBy Reviewer writtenBy Reviewed_contribution reviews Classification gives_classification Activity is_created_in Reviewer review_written_by
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
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Regular_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Demo_Paper
        = 
        Integer full_paper_size Human has_author Author isWrittenBy Person isReviewedBy+ Review hasReview Possible_Reviewer hasReviewer Author paperIsSubmittedBy Chair isRejectedBy Chair isAcceptedBy Reviewer paperIsAssignedTo ResearchTopic hasSecondaryTopic ResearchTopic hasMainTopic Author hasAuthor PaperStatus hasStatus String hasTitle String hasID PaperAbstract hasAbstract Review isRatedBy Author is_written_by String Abstract String Title String Students String Keywords Program_Comitee_Chair rejectedBy Program_Comitee_Chair acceptedBy Reviewer reviewedBy Program_Comitee discussedBy EEnum isPaperTypeOf Program_Comitee_Chair assignedToReviewBy EEnum hasBid Co_Author hasCo-Author Bid hasBid Decision hasDecision Reviewer assignedTo SubjectArea hasSubjectArea Reviewer readByReviewer UnsignedLong paperID String title Meta_Reviewer readByMeta-Reviewer
 ;
syntax Research_Institute
        = 
        scientificallyOrganises: Academic_Institution
 ;
syntax Scientific_Event
        = Individual_Presentation
        | Conference
        | Session
        | Track
 ;
syntax Invited_Talk_Abstract
        = 
        Thing is_the_1th_part_of+ Article part_of_article
 ;
syntax Agency_Staff_Member
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Workshop_Session
        = 
        AcceptedPaper hasAssignedPaper String room Slot isAssociatedTo Chair hasChair
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
        = Conference_Proceedings
        | Thing includes+
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
        = Proceedings
        | Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
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
        String has_an_ISBN Publisher has_a_publisher String has_a_volume
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
syntax Presenter_house
        = 
        ()
 ;
syntax Building
        = Presenter_house
        | Conference_restaurant
        | Conference_building
        | Conference_airport
        | Conference_hotel
        | Sponsor_company_house
        | Presenter_university
 ;
syntax Presenter_state
        = 
        ()
 ;
syntax Delegate
        = Speaker
        | One_day_presenter
        | Technical_commitee
        | Listener
        | Session_chair
        | Hotel_presenter
        | Non_speaker
        | IASTED_non_member
        | Conference_Hiker
        | IASTED_member
 ;
syntax Presenter_city
        = 
        ()
 ;
syntax Hotel_registration_form
        = 
        ()
 ;
syntax Deadline_hotel_reservation
        = 
        done_till: Date
 ;
syntax Form
        = Hotel_registration_form
        | Registration_form
        | Author_information_form
 ;
syntax Car
        = 
        ()
 ;
syntax Transport_vehicle
        = Car
        | Taxi
        | Shuttle_bus
        | Van
 ;
syntax Mailing_list
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Renting
        = 
        ()
 ;
syntax Activity_before_conference
        = Renting
        | Research
        | Refusing_manuscript
        | Accepting_manuscript
        | Receiving_manuscript
 ;
syntax Dinner_banquet
        = 
        ()
 ;
syntax One_day_presenter
        = 
        ()
 ;
syntax Social_program
        = 
        Dinner_banquet
 ;
syntax PowerPoint_presentation
        = 
        is_given_by: Active_conference_participant
 ;
syntax Conference_restaurant
        = 
        ()
 ;
syntax Conference_city
        = 
        ()
 ;
syntax Conference_state
        = 
        ()
 ;
syntax Submissions_deadline
        = 
        done_till: Date
 ;
syntax Deadline
        = Deadline_hotel_reservation
        | Submissions_deadline
        | Deadline_for_notification_of_acceptance
        | Registation_deadline
        | Camera_ready_manuscript_deadline
        | done_till: Date
 ;
syntax Simulating
        = 
        ()
 ;
syntax Research
        = Simulating
        | Modelling
 ;
syntax Technic_activity
        = 
        ()
 ;
syntax Conference_activity
        = Presentation
        | Lecture
        | Social_program
        | Technic_activity
        | Registration
        | Introduction
        | Welcome_address
        | Coffee_break
        | Coctail_reception
 ;
syntax Technical_commitee
        = 
        ()
 ;
syntax Place
        = DiningPlace
        | ConferenceVenuePlace
        | MeetingRoomPlace
        | AccommodationPlace
        | Building
        | Session_room
        | Hotel_room
        | Conference_hall
        | Main_office
        | ConferenceEvent isLocationOf Item is_equipped_by
 ;
syntax Author_cd_proceedings_included
        = 
        Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax Cd_proceening
        = 
        ()
 ;
syntax Trip_day
        = 
        ()
 ;
syntax Time
        = Deadline
        | Trip_day
        | Conference_days
 ;
syntax Record_of_attendance
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Listener
        = 
        ()
 ;
syntax Session_room
        = 
        ConferenceEvent isLocationOf Item is_equipped_by
 ;
syntax Brief_introduction_for_Session_chair
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Session_chair
        = 
        ()
 ;
syntax Invitation_letter
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Registration_form
        = 
        ()
 ;
syntax Viza
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax Conference_days
        = 
        One_conference_day
 ;
syntax Conference_building
        = 
        ()
 ;
syntax Registration_fee
        = Author_attendee_book_registration_fee
        | Nonmember_registration_fee
        | Nonauthor_registration_fee
        | Memeber_registration_fee
        | Student_registration_fee
        | Author_attendee_cd_registration_fee
 ;
syntax Departure
        = 
        ()
 ;
syntax Activity_after_conference
        = Departure
        | Full_day_tour
 ;
syntax Conference_airport
        = 
        ()
 ;
syntax Worker_lecturer
        = 
        ()
 ;
syntax Lecturer
        = Worker_lecturer
        | Student_lecturer
 ;
syntax Transparency
        = 
        Thing relatesTo+ Person writtenBy Document hasUpdatedVersion Document updatedVersionOf User recieved_by Person used_by User submited__by
 ;
syntax City
        = Presenter_city
        | Conference_city
        | Sponsor_city
        | Trip_city
 ;
syntax Card
        = 
        Credit_card
 ;
syntax Item
        = Transport_vehicle
        | Card
        | Audiovisual_equipment
        | Publication
        | Document
        | Activity go_through Thing is_used_for+ Person is_signed_by Item is_made_from Time is_sent_after Person is_needed_for Time is_sent_before Person is_prepared_by Person is_used_by Person is_given_to Person is_sent_by Person is_writen_by
 ;
syntax Author_attendee_book_registration_fee
        = 
        ()
 ;
syntax Book_proceeding
        = 
        ()
 ;
syntax Video_cassette_player
        = 
        ()
 ;
syntax Audiovisual_equipment
        = Video_cassette_player
        | LCD_projector
        | Computer
        | Overhead_projector
 ;
syntax Video_presentation
        = 
        is_given_by: Active_conference_participant
 ;
syntax Hotel_room
        = Single_hotel_room
        | Double_hotel_room
 ;
syntax Hotel_presenter
        = 
        ()
 ;
syntax Conference_hotel
        = 
        ()
 ;
syntax Money
        = Tax
        | Fee
        | Sponzorship
        | Tip
        | Item is_paid_with Person is_paid_by Building is_paid_in Thing is_paid_for+ Money has_amount_of
 ;
syntax State
        = Presenter_state
        | Conference_state
        | Sponsor_state
 ;
syntax Introduction
        = 
        Introduction_of_speaker
 ;
syntax Welcome_address
        = 
        ()
 ;
syntax Value_added_tax
        = 
        ()
 ;
syntax Tax
        = Value_added_tax
        | Departure_tax
 ;
syntax Refusing_manuscript
        = 
        ()
 ;
syntax Final_manuscript
        = 
        ()
 ;
syntax Accepting_manuscript
        = 
        ()
 ;
syntax Submission
        = Final_manuscript
        | Initial_manuscipt
 ;
syntax Sponsor_city
        = 
        ()
 ;
syntax Sponsor
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Time_zone
        = 
        ()
 ;
syntax Introduction_of_speaker
        = 
        ()
 ;
syntax Conference_hall
        = 
        ConferenceEvent isLocationOf Item is_equipped_by
 ;
syntax Plenary_lecture
        = 
        hasAcronym: String
 ;
syntax Plenary_lecture_speaker
        = 
        Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax LCD_projector
        = 
        ()
 ;
syntax Deadline_for_notification_of_acceptance
        = 
        done_till: Date
 ;
syntax Tutorial_speaker
        = 
        Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax Registation_deadline
        = 
        done_till: Date
 ;
syntax Single_hotel_room
        = 
        ()
 ;
syntax Non_speaker
        = Worker_non_speaker
        | Student_non_speaker
 ;
syntax Author_information_form
        = 
        ()
 ;
syntax Nonmember_registration_fee
        = 
        ()
 ;
syntax IASTED_non_member
        = 
        ()
 ;
syntax Hotel_fee
        = 
        ()
 ;
syntax Fee
        = Registration_fee
        | Hotel_fee
        | Fee_for_extra_trip
 ;
syntax Publication
        = Cd_proceening
        | Book_proceeding
 ;
syntax Taxi
        = 
        ()
 ;
syntax Sponsor_state
        = 
        ()
 ;
syntax Modelling
        = 
        ()
 ;
syntax Worker_non_speaker
        = 
        ()
 ;
syntax Nonauthor_registration_fee
        = 
        ()
 ;
syntax Payment_document
        = Cheque
        | Bank_transfer
 ;
syntax Camera_ready_manuscript_deadline
        = 
        done_till: Date
 ;
syntax One_conference_day
        = 
        ()
 ;
syntax Fee_for_extra_trip
        = 
        ()
 ;
syntax Full_day_tour
        = 
        ()
 ;
syntax Conference_Hiker
        = 
        ()
 ;
syntax Computer
        = 
        ()
 ;
syntax IASTED_member
        = 
        ()
 ;
syntax Memeber_registration_fee
        = 
        ()
 ;
syntax Author_book_proceedings_included
        = 
        Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax Sponsor_company_house
        = 
        ()
 ;
syntax Sponzorship
        = 
        Item is_paid_with Person is_paid_by Building is_paid_in Thing is_paid_for+ Money has_amount_of
 ;
syntax Student_lecturer
        = 
        ()
 ;
syntax Trip_city
        = 
        ()
 ;
syntax Cheque
        = 
        ()
 ;
syntax Shuttle_bus
        = 
        ()
 ;
syntax Student_non_speaker
        = 
        ()
 ;
syntax Student_registration_fee
        = 
        ()
 ;
syntax Author_attendee_cd_registration_fee
        = 
        ()
 ;
syntax Tip
        = 
        Item is_paid_with Person is_paid_by Building is_paid_in Thing is_paid_for+ Money has_amount_of
 ;
syntax Credit_card
        = 
        ()
 ;
syntax Van
        = 
        ()
 ;
syntax Main_office
        = 
        ConferenceEvent isLocationOf Item is_equipped_by
 ;
syntax Presenter_university
        = 
        ()
 ;
syntax Departure_tax
        = 
        ()
 ;
syntax Receiving_manuscript
        = 
        ()
 ;
syntax Double_hotel_room
        = 
        ()
 ;
syntax Initial_manuscipt
        = 
        ()
 ;
syntax Coffee_break
        = 
        ()
 ;
syntax Bank_transfer
        = 
        ()
 ;
syntax Overhead_projector
        = 
        ()
 ;
syntax Speaker_lecture
        = 
        AcceptedPaper hasAssignedPaper String room Slot isAssociatedTo Chair hasChair
 ;
syntax Coctail_reception
        = 
        ()
 ;
syntax Currency
        = 
        ()
 ;
syntax Activity
        = Event_Creation
        | Request
        | Event_Approval
        | Registration
        | Paper_assignment
        | Bidding_of_reviewer
        | Managing_of_conference_process
        | Reviewing_proces
        | Notification
        | Submission_process
        | Activity_before_conference
        | Conference_activity
        | Activity_after_conference
        | Lecture
        | Topic hasTopic Integer expectedAttendance Conference isPartOf Time is_held_before Thing is_held_in Time is_held_after DateTime is_dated_on Article has_result Person sent_by Activity is_followed_by Human is_monitored_by Intensity has_intensity Article has_result Human is_performed_by Human is_supervised_by
 ;
syntax OrganizingCommittee
        = ProgramCoChair
        | PublicationsChair
        | WorkshopTutorialChair
        | RegistrationChair
        | StudentAdvocate
        | FinanceChair
        | PaperSubmissionChair
        | PublicityWebChair
        | SteeringCommittee
        | GeneralCoChair
        | organizes: Conference
 ;
syntax CommitteeMember
        = 
        isMemberOf: Conference
 ;
syntax ProgramCoChair
        = 
        organizes: Conference
 ;
syntax Organizer
        = 
        CommitteeMember
 ;
syntax PublicationsChair
        = 
        organizes: Conference
 ;
syntax OutsideReferee
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Lecture
        = Plenary_lecture
        | QualitatvieLecture
        | TraditionalLecture
        | hasAcronym: String
 ;
syntax ActivitySubmissionForm
        = TutorialProposal
        | WorksopProposal
        | Author isSubmittedBy Author hasAuthor DateTime submissionDeadline
 ;
syntax WorkshopTutorialChair
        = 
        organizes: Conference
 ;
syntax DoubleBlindReview
        = 
        isExecutedBy: Reviewer
 ;
syntax TutorialProposal
        = 
        Author isSubmittedBy Author hasAuthor DateTime submissionDeadline
 ;
syntax RegistrationChair
        = 
        organizes: Conference
 ;
syntax StudentAdvocate
        = 
        organizes: Conference
 ;
syntax FinanceChair
        = 
        organizes: Conference
 ;
syntax QualitatvieLecture
        = 
        hasAcronym: String
 ;
syntax TraditionalLecture
        = 
        hasAcronym: String
 ;
syntax PaperSubmissionChair
        = 
        organizes: Conference
 ;
syntax PublicityWebChair
        = 
        organizes: Conference
 ;
syntax SteeringCommittee
        = 
        organizes: Conference
 ;
syntax GeneralCoChair
        = 
        organizes: Conference
 ;
syntax WorksopProposal
        = 
        Author isSubmittedBy Author hasAuthor DateTime submissionDeadline
 ;
syntax ContactAuthor
        = 
        submitsAbstract: PaperAbstract
 ;
syntax ConferenceProgram
        = 
        Conference isProgramOf Slot consistsOf
 ;
syntax PaperStatus
        = 
        isStatusOf: Paper
 ;
syntax Slot
        = 
        Date date Time endsAt Time beginsAt ConferenceProgram forms Session hosts
 ;
syntax ResearchTopic
        = 
        ()
 ;
syntax Question
        = ReviewQuestion
        | PaperQuestion
 ;
syntax PaymentMode
        = 
        ()
 ;
syntax OutputDocument
        = CD_ROM
        | IndexOfAuthors
        | ExternalReviewersList
        | Program
        | PCMembersList
        | ListOfAbstracts
        | BookletOfAbstracts
        | Proceedings
        | isProducedBy: Chair
 ;
syntax ProgramCommittee
        = 
        ProgramCommitteeMember hasProgramCommitteeMember ProgramCommitteeMember hasMember
 ;
syntax Criterion
        = 
        hasWeight: Double
 ;
syntax AcceptedPaper
        = 
        PaperPresentation relatedToEvent Session isAssignedToSession
 ;
syntax Chair
        = 
        Committee was_a_committee_chair_of Reviewer assigns_reviewers_to_article Program creates_program OutputDocument produces Thing sets Paper accepts Paper rejects Reviewer asksForPreference Session isChairOf
 ;
syntax ConferenceAttendant
        = 
        Fee mustPay String hasAdress Boolean paid String hasPhone
 ;
syntax Evaluation
        = 
        isContainedIn: Review
 ;
syntax PaperAbstract
        = 
        Paper isAbstractOf ContactAuthor abstractIsSubmittedBy
 ;
syntax ReviewQuestion
        = TextualReviewQuestion
        | NumericalReviewQuestion
 ;
syntax PaperQuestion
        = 
        ()
 ;
syntax CD_ROM
        = 
        isProducedBy: Chair
 ;
syntax IndexOfAuthors
        = 
        isProducedBy: Chair
 ;
syntax ExternalReviewersList
        = 
        isProducedBy: Chair
 ;
syntax Program
        = 
        isProducedBy: Chair
 ;
syntax PCMembersList
        = 
        isProducedBy: Chair
 ;
syntax ListOfAbstracts
        = 
        isProducedBy: Chair
 ;
syntax BookletOfAbstracts
        = 
        isProducedBy: Chair
 ;
syntax RFC
        = 
        ()
 ;
syntax Topics
        = RFC
        | Classic_Papers
        | Networking
        | Humour
        | Programming
        | Computer_Science
 ;
syntax Classic_Papers
        = 
        ()
 ;
syntax Networking
        = 
        ()
 ;
syntax Humour
        = 
        ()
 ;
syntax Programming
        = 
        ()
 ;
syntax Computer_Science
        = 
        ()
 ;
syntax Format
        = Adobe_PDF
        | MS_Word
        | Corel_Word_Perfect
        | HTML
        | PostScript
        | RTF
        | Text
 ;
syntax Value_Partition
        = Topics
        | Format
        | Long_bool
        | Review_Values
        | Result_of_Advocate
 ;
syntax Adobe_PDF
        = 
        ()
 ;
syntax MS_Word
        = 
        ()
 ;
syntax Corel_Word_Perfect
        = 
        ()
 ;
syntax HTML
        = 
        ()
 ;
syntax PostScript
        = 
        ()
 ;
syntax RTF
        = 
        ()
 ;
syntax Text
        = 
        ()
 ;
syntax High
        = 
        ()
 ;
syntax Reviewer_Famliliarity
        = High
        | Low
        | Moderate
 ;
syntax Low
        = 
        ()
 ;
syntax Moderate
        = 
        ()
 ;
syntax Marginal_Tend_to_Reject
        = 
        ()
 ;
syntax Reccommendation
        = Marginal_Tend_to_Reject
        | Marginal_Tend_to_Accept
        | Portable_Reject
        | Must_Accept
        | Clear_Reject
        | Clear_Accept
 ;
syntax Marginal_Tend_to_Accept
        = 
        ()
 ;
syntax Portable_Reject
        = 
        ()
 ;
syntax Must_Accept
        = 
        ()
 ;
syntax Clear_Reject
        = 
        ()
 ;
syntax Clear_Accept
        = 
        ()
 ;
syntax Program_chair
        = 
        made_program: Conference_Program
 ;
syntax Conference_Program
        = 
        Program_chair Program_made_by Planed_Paper planned_papers
 ;
syntax Program_Committee
        = 
        ()
 ;
syntax Member
        = Program_chair
        | Advocate
        | Web_address: String
 ;
syntax Domain_Topic
        = Paper_File
        | Conference_Program
        | Paper_Review
        | Committees
        | People
 ;
syntax Planed_Paper
        = 
        is_planned_in: Conference_Program
 ;
syntax Valuable_Confirmation_of_Present_Knowledge
        = 
        ()
 ;
syntax Other
        = 
        ()
 ;
syntax Not_Much
        = 
        ()
 ;
syntax New_Information
        = 
        ()
 ;
syntax New_Perspective_Issue_Problem_Solving
        = 
        ()
 ;
syntax Clarity_to_Present_Understanding
        = 
        ()
 ;
syntax Overall_Value
        = Valuable_Confirmation_of_Present_Knowledge
        | Other
        | Not_Much
        | New_Information
        | New_Perspective_Issue_Problem_Solving
        | Clarity_to_Present_Understanding
 ;
syntax Tends_Towards_Theoretical
        = 
        ()
 ;
syntax Paper_Categorization
        = Tends_Towards_Theoretical
        | Tends_Towards_Practical
        | Balanced_Theory_and_Practice
        | Highly_Theoretical
        | Highly_Practical
 ;
syntax Tends_Towards_Practical
        = 
        ()
 ;
syntax Balanced_Theory_and_Practice
        = 
        ()
 ;
syntax Highly_Theoretical
        = 
        ()
 ;
syntax Highly_Practical
        = 
        ()
 ;
syntax Reviewed_Paper
        = 
        Planed_Paper
 ;
syntax Submitted_Paper
        = Assigned_Paper
        | Reviewed_Paper
        | Advocated_Paper
        | Paper_File is_stored_in Contact_Author has_been_sent_by String Paper_Id String Comments_To_Chair
 ;
syntax Paper_Review
        = 
        Long_bool is_Candidate_for_Award Long_bool appropriate_length Paper_Categorization has_Categorization Overall_Value has_Overall Reccommendation has_Reccommendation Reviewer Review_made_by String Comments_for_Author String Comments_for_Program_Committee
 ;
syntax Long_bool
        = 
        ()
 ;
syntax Review_Values
        = Reviewer_Famliliarity
        | Reccommendation
        | Overall_Value
        | Paper_Categorization
 ;
syntax Review_Committee
        = 
        ()
 ;
syntax Committees
        = Program_Committee
        | Review_Committee
 ;
syntax Paper_File
        = 
        is_Type: Format
 ;
syntax Advocate
        = 
        will_advocate: Advocated_Paper
 ;
syntax Advocated_Paper
        = 
        to_advocate_by: Advocate
 ;
syntax Contact_Author
        = 
        Submitted_Paper has_sent String Alternate_Email
 ;
syntax Result_of_Advocate
        = 
        ()
 ;
syntax People
        = Member
        | Author
        | String Surname String Name String Country String E-mail String Organisation
 ;
syntax Source_Archive
        = 
        hasContributionFileStatus: EEnum
 ;
syntax Camera_Ready_Copy
        = 
        hasContributionFileStatus: EEnum
 ;
syntax Slides
        = 
        hasContributionFileStatus: EEnum
 ;
syntax Contribution_File
        = Source_Archive
        | Poster
        | Camera_Ready_Copy
        | Slides
        | Paper_File
        | hasContributionFileStatus: EEnum
 ;
syntax Discussion
        = 
        ()
 ;
syntax PhaseOfConferencePreparation
        = Setup_Phase
        | Camera_Ready_Copy_Phase
        | Assignment_Phase
        | Blocked_Phase
        | Abstract_And_Paper_Submission_Phase
        | Invitation_Of_Reviewers_Phase
        | Review_Phase
        | Closed_Phase
        | Bidding_Phase
        | hasPhaseStatus: EEnum
 ;
syntax Program_Comitee
        = 
        discusses: Paper
 ;
syntax Conflict_Of_Interest
        = Confirmed_Conflict
        | Pending_Proposed_Conflict
        | Hidden_Conflict
        | Deleted_Conflict
        | Proposed_Conflict
        | Self_Conflict
 ;
syntax Location
        = 
        locationOf: Event
 ;
syntax Conflict_Rules
        = 
        ()
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
        | Review_preference belongs_to_a_review_reference Conference_part is_a_topis_of_conference_parts Working_event isTopicOf Activity isIncluded
 ;
syntax Program_Comitee_Meeting
        = E_mail_PC_Meeting
        | PC_Meeting
 ;
syntax Setup_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Camera_Ready_Copy_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Assignment_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Blocked_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Abstract_And_Paper_Submission_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Invitation_Of_Reviewers_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Review_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Closed_Phase
        = 
        hasPhaseStatus: EEnum
 ;
syntax Bidding_Phase
        = Bidding_And_Paper_Submission_Phase
        | Bidding_Without_Paper_Submission_Phase
 ;
syntax Speaker
        = 
        String hasMail String worksForCompany ConferenceEvent attendeeAt Conference isMemberOf String hasFirstName String hasBiography String hasLastName Conference_document contributes String has_an_email String has_the_first_name EEnum has_gender String has_the_last_name Organization employedBy String hasHomePage String hasSurname String hasFax String hasFirstName String hasPhone String hasEmail Document authorOf Item prepare Presenter_city occupy+ Thing is_present_in+ Item write Item obtain Item send Thing speak_in+ Money pay Item sign Time is_present Thing give+ Item need String hasAffiliation String hasFirstName String hasLastName String hasEmail String hasName Document hasConflictOfInterest String email Thing inverse_of_add+ Thing execute+ Inforamtion get Document use Account register Thing modify+ Event take_part_in Thing remove+ Person add Person added_by
 ;
syntax Program_Comitee_Chair
        = 
        Conference finishes Program_Comitee headOf PhaseOfConferencePreparation switches Conference starts Paper accepts Paper assignsToReview Reviewer assignsPaper Paper rejects
 ;
syntax Author
        = AuthorNotReviewer
        | Co_Author
        | Corresponding_Author
        | Author_cd_proceedings_included
        | Lecturer
        | Plenary_lecture_speaker
        | Tutorial_speaker
        | Author_book_proceedings_included
        | ContactAuthor
        | Contact_Author
        | MainAuthor
        | Presenter
        | Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax Confirmed_Conflict
        = 
        ()
 ;
syntax Pending_Proposed_Conflict
        = 
        Reviewer refusedBy Reviewer confirmedBy
 ;
syntax Hidden_Conflict
        = 
        ()
 ;
syntax Deleted_Conflict
        = 
        ()
 ;
syntax Proposed_Conflict
        = 
        conflictProposedBy: Thing
 ;
syntax Self_Conflict
        = 
        ()
 ;
syntax MainAuthor
        = 
        Paper submitPaper Contribution writes Article writes_article Article assigns_article_to_conference Paper hasRelatedPaper Thing conflictsWith+ ActivitySubmissionForm isAuthorOf Thing conducts Paper submitsPaper Paper writePaper Paper writes_Paper Contribution changes
 ;
syntax Bidding_And_Paper_Submission_Phase
        = 
        ()
 ;
syntax Bidding_Without_Paper_Submission_Phase
        = 
        ()
 ;
syntax E_mail_PC_Meeting
        = 
        ()
 ;
syntax PC_Meeting
        = 
        ()
 ;
syntax EEnum
        = male: ()
        | female: ()
        | high: ()
        | medium: ()
        | low: ()
        | very high: ()
        | submitted: ()
        | missing: ()
        | notStarted: ()
        | active: ()
        | finished: ()
        | accepted: ()
        | rejected: ()
        | regular: ()
        | invited: ()
        | lowBid: ()
        | -: ()
        | CONFLICT: ()
        | wantNot: ()
        | highBid: ()
        | Yes: ()
        | No: ()
        | Compilers: ()
        | Microarchitecture: ()
        | Systems: ()
        | ForwardLookingIdea: ()
        | Accept: ()
        | Reject: ()
        | Unsure: ()
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
