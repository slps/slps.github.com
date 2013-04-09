@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Confious_owl

syntax Thing
        = 
        ()
 ;
syntax Reviewer
        = 
        ANY invites_co-reviewers ANY invited_by ANY has_a_review_reference_or_expertise+ ANY assignedByAdministrator ANY adjustBid ANY readPaper ANY hasBeenAssigned ANY writeReview ANY assignExternalReviewer
 ;
syntax Meta_Reviewer
        = 
        ()
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
        ANY is_in_phase ANY hasConferenceMember ANY paperAssignmentFinalizedBy ANY reviewCriteriaEnteredBy ANY paperAssignmentToolsRunBy ANY virtualMeetingEnabledBy ANY hardcopyMailingManifestsPrintedBy ANY detailsEnteredBy ANY reviewerBiddingStartedBy ANY date ANY reviewsPerPaper ANY logoURL ANY acceptsHardcopySubmissions ANY siteURL
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
        ANY reviews ANY gives_classification ANY is_created_in ANY writtenBy
 ;
syntax Paper
        = 
        ANY full_paper_size ANY has_author ANY hasCo-author ANY hasBid ANY hasDecision ANY assignedTo ANY hasSubjectArea ANY readByReviewer ANY paperID ANY title ANY hasAuthor ANY acceptedBy ANY rejectedBy ANY readByMeta-Reviewer
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
        ANY hasConflictOfInterest ANY email ANY inverse_of_add+ ANY execute+ ANY get ANY use ANY register ANY modify+ ANY take_part_in ANY remove+ ANY add ANY send ANY added_by ANY contributes ANY has_an_email ANY has_the_first_name ANY has_gender ANY has_the_last_name
 ;
syntax Symposium
        = 
        ()
 ;
syntax Abstract
        = ()
        | ANY is_the_1th_part_of+
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
        ANY has_members ANY was_a_committee_of ANY has_a_committee_co-chair ANY has_a_committee_chair
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
syntax Conference_participant
        = 
        ()
 ;
syntax Active_conference_participant
        = 
        gives_presentations: ANY
 ;
syntax Passive_conference_participant
        = 
        ()
 ;
syntax Review_expertise
        = 
        ANY has_a_submitted_contribution ANY has_an_expertise
 ;
syntax Submitted_contribution
        = 
        has_a_review_expertise: ANY
 ;
syntax Regular_author
        = 
        ()
 ;
syntax Conference_contributor
        = 
        ()
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
        = 
        is_submitted_at: ANY
 ;
syntax Co_chair
        = 
        was_a_committe_co-chair_of: ANY
 ;
syntax Committee_member
        = 
        was_a_member_of: ANY
 ;
syntax Extended_abstract
        = 
        ()
 ;
syntax Important_dates
        = 
        ANY is_an_abstract_submission_date ANY is_a_full_paper_submission_date ANY is_an_ending_date ANY is_a_date_of_acceptance_announcement ANY is_a_date_of_camera_ready_paper_submission ANY is_a_starting_date ANY belong_to_a_conference_volume
 ;
syntax Invited_speaker
        = 
        ()
 ;
syntax Conference_proceedings
        = 
        ANY has_an_ISBN ANY has_a_publisher ANY has_a_volume
 ;
syntax Information_for_participants
        = 
        ()
 ;
syntax Conference_document
        = 
        ANY has_authors ANY has_a_date_of_issue
 ;
syntax Organization
        = 
        ()
 ;
syntax Regular_contribution
        = 
        ()
 ;
syntax Poster
        = 
        ()
 ;
syntax Written_contribution
        = 
        ()
 ;
syntax Conference_applicant
        = 
        ()
 ;
syntax Camera_ready_contribution
        = 
        ()
 ;
syntax Accepted_contribution
        = 
        ()
 ;
syntax Program_committee
        = 
        was_a_program_committee_of: ANY
 ;
syntax Organizing_committee
        = 
        was_an_organizing_committee_of: ANY
 ;
syntax Steering_committee
        = 
        was_a_steering_committee_of: ANY
 ;
syntax Conference_volume
        = 
        ANY has_parts ANY has_workshops ANY has_tracks ANY has_tutorials ANY has_a_commtitee ANY has_a_steering_committee ANY has_an_organizing_committee ANY has_important_dates ANY has_contributions ANY has_a_location ANY has_a_program_committee
 ;
syntax Call_for_paper
        = 
        ()
 ;
syntax Conference_announcement
        = 
        ()
 ;
syntax Invited_talk
        = 
        ()
 ;
syntax Conference_part
        = 
        ANY has_a_track-workshop-tutorial_topic ANY is_part_of_conference_volumes ANY has_a_track-workshop-tutorial_chair
 ;
syntax Presentation
        = 
        is_given_by: ANY
 ;
syntax Chair
        = 
        was_a_committee_chair_of: ANY
 ;
syntax Track
        = 
        ()
 ;
syntax Workshop
        = 
        ()
 ;
syntax Tutorial
        = 
        ()
 ;
syntax Rejected_contribution
        = 
        ()
 ;
syntax Reviewed_contribution
        = 
        has_a_review: ANY
 ;
syntax Topic
        = 
        ANY belongs_to_a_review_reference ANY is_a_topis_of_conference_parts
 ;
syntax Late_paid_applicant
        = 
        ()
 ;
syntax Paid_applicant
        = 
        ()
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
        ()
 ;
syntax Publisher
        = 
        issues: ANY
 ;
syntax Registeered_applicant
        = 
        ()
 ;
syntax Track_workshop_chair
        = 
        was_a_track-workshop_chair_of: ANY
 ;
syntax Conference_www
        = 
        has_a_URL: ANY
 ;
syntax Conference_fees
        = 
        ()
 ;
syntax Review_preference
        = 
        ANY has_a_topic_or_a_submission_contribution+ ANY has_a_degree
 ;
syntax EEnum
        = high: ()
        | medium: ()
        | low: ()
        | very high: ()
        | male: ()
        | female: ()
 ;
syntax Accepted_Paper
        = 
        ()
 ;
syntax Rejected_Paper
        = 
        ()
 ;
syntax Undecided_Paper
        = 
        ()
 ;
syntax Manual_Paper_Assignment
        = 
        ANY manually_assign_paper+
 ;
syntax Program_Committee_member
        = 
        ()
 ;
syntax Paper_assignment
        = 
        ANY assign_paper ANY is_performed_by
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
        = 
        ()
 ;
syntax Date_of_notification
        = 
        ()
 ;
syntax Date
        = 
        ()
 ;
syntax Article
        = 
        ANY goes_through ANY is_sent_to ANY is_created_in ANY structure_created_by ANY has_author ANY gives_classification
 ;
syntax Contact_Person
        = 
        ()
 ;
syntax Bidding_of_reviewer
        = 
        is_performed_by: ANY
 ;
syntax Activity
        = 
        ANY is_followed_by ANY is_monitored_by ANY has_intensity ANY has_result ANY is_performed_by ANY is_supervised_by
 ;
syntax URL
        = 
        ()
 ;
syntax Conference_setup
        = 
        ANY sets_member ANY is_made_by ANY includes_topic ANY sets_date ANY sets_URL
 ;
syntax Human
        = 
        ANY is_author_of ANY performs_activity ANY is_employed_in ANY has_topic_of_interest ANY supervises ANY e-mail ANY last_name ANY first_name
 ;
syntax Managing_of_conference_process
        = 
        ()
 ;
syntax Program_Committee_Chair
        = 
        ()
 ;
syntax Reviewing_proces
        = 
        ()
 ;
syntax End_date_of_camera_ready_submission
        = 
        ()
 ;
syntax Abstract_submission_date
        = 
        ()
 ;
syntax Group_email
        = 
        ()
 ;
syntax Senior_Reviewer_URL
        = 
        ()
 ;
syntax Notification
        = 
        ANY has_result ANY is_performed_by
 ;
syntax Notification_email
        = 
        ()
 ;
syntax Chair_URL
        = 
        ()
 ;
syntax Abstract_of_paper
        = 
        ()
 ;
syntax Submission_process
        = 
        is_performed_by: ANY
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
        = 
        ()
 ;
syntax Senior_Program_Committee_member
        = 
        supervises: ANY
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
        = 
        ()
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
        is_created_in: ANY
 ;
syntax Automatic_Paper_Assignment
        = 
        ANY automatically_assign_paper+
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
        is_created_in: ANY
 ;
syntax Upper_tier_reviewing_process
        = 
        is_performed_by: ANY
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
