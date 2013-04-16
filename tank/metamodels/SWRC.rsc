@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SWRC

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Bibliography
        = 
        Publication publications+
 ;
syntax Publication
        = Article
        | Book
        | InBook
        | Booklet
        | InCollection
        | InProceedings
        | Proceedings
        | Manual
        | Misc
        | Unpublished
        | Thesis
        | Report
 ;
syntax Article
        = 
        Person author+ String journal String month Integer number String pages Integer volume
 ;
syntax Book
        = 
        String month Integer number Integer volume String series String source String address String edition String isbn String price Person editor Organization publisher Person author+
 ;
syntax InBook
        = 
        Person author+ Organization publisher Person editor String month Integer number String pages Integer volume String series String chapter String type String address
 ;
syntax Booklet
        = 
        Person author+ String month String address String edition String howpublished
 ;
syntax InCollection
        = 
        Person editor Person author+ Organization publisher String month Integer number String pages String address String edition Integer volume String series String chapter String type String booktitle
 ;
syntax InProceedings
        = 
        Person editor Person author+ String month Integer number String pages String address Integer volume String series String booktitle Organization organization Organization publisher
 ;
syntax Proceedings
        = 
        Person editor Organization publisher Organization organization String month String number String volume String address String series
 ;
syntax Manual
        = 
        Person author+ Organization organization String month String address String edition
 ;
syntax Misc
        = 
        String month String howpublished
 ;
syntax Unpublished
        = 
        Person author+ String month
 ;
syntax Thesis
        = MasterThesis
        | PhDThesis
 ;
syntax MasterThesis
        = 
        Person author+ University school String month String address String type
 ;
syntax PhDThesis
        = 
        Person author+ University school String month String address String type
 ;
syntax Report
        = ProjectReport
        | TechnicalReport
 ;
syntax ProjectReport
        = 
        describesProject: Project
 ;
syntax TechnicalReport
        = 
        String series Organization organization
 ;
syntax Event
        = Conference
        | Workshop
        | Exhibition
        | Lecture
        | Meeting
        | String name String date String eventTitle String location Event atEvent Event hasPartEvent
 ;
syntax Conference
        = 
        series: String
 ;
syntax Workshop
        = 
        series: String
 ;
syntax Exhibition
        = 
        String name String date String eventTitle String location Event atEvent Event hasPartEvent
 ;
syntax Lecture
        = 
        givenBy: Person
 ;
syntax Meeting
        = ProjectMeeting
        | String title Person participant+
 ;
syntax ProjectMeeting
        = 
        String title Person participant+
 ;
syntax Person
        = Employee
        | AcademicStaff
        | Student
        | String address String name String email String fax String homepage String phone String photo
 ;
syntax Employee
        = Manager
        | AdministrativeStaff
        | TechnicalStaff
        | affiliation: Organization
 ;
syntax Manager
        = 
        affiliation: Organization
 ;
syntax AdministrativeStaff
        = 
        affiliation: Organization
 ;
syntax TechnicalStaff
        = 
        affiliation: Organization
 ;
syntax AcademicStaff
        = Lecturer
        | FacultyMember
        | AcademicStaff cooperateWith+ Publication editor Project headOf ResearchGroup headOfGroup Event memberOfPC Event organizerOrChairOf Publication publication+ PhDStudent supervises+ ResearchTopic worksAtProject
 ;
syntax Lecturer
        = 
        AcademicStaff cooperateWith+ Publication editor Project headOf ResearchGroup headOfGroup Event memberOfPC Event organizerOrChairOf Publication publication+ PhDStudent supervises+ ResearchTopic worksAtProject
 ;
syntax FacultyMember
        = FullProfessor
        | AssistantProfessor
        | AssociateProfessor
 ;
syntax FullProfessor
        = 
        ()
 ;
syntax AssistantProfessor
        = 
        ()
 ;
syntax AssociateProfessor
        = 
        ()
 ;
syntax Student
        = Undergraduate
        | Graduate
        | studiesAt: University
 ;
syntax Undergraduate
        = 
        studiesAt: University
 ;
syntax Graduate
        = 
        PhDStudent
 ;
syntax PhDStudent
        = 
        Publication publication+ Project worksAtProject AcademicStaff supervisor
 ;
syntax Organization
        = ResearchGroup
        | Association
        | Department
        | Institute
        | Enterprise
        | University
        | String location String name Project carriesOut+ Product develops+ Employee employs+ Project finances+ Publication publishes+ TechnicalReport technicalReport+
 ;
syntax ResearchGroup
        = 
        AcademicStaff head Employee member+
 ;
syntax Association
        = 
        String location String name Project carriesOut+ Product develops+ Employee employs+ Project finances+ Publication publishes+ TechnicalReport technicalReport+
 ;
syntax Department
        = 
        hasParts: Institute
 ;
syntax Institute
        = 
        Institute cooperateWith ResearchGroup hasParts+
 ;
syntax Enterprise
        = 
        String location String name Project carriesOut+ Product develops+ Employee employs+ Project finances+ Publication publishes+ TechnicalReport technicalReport+
 ;
syntax University
        = 
        Department hasParts+ Student student+
 ;
syntax Project
        = ResearchProject
        | DevelopmentProject
        | SoftwareProject
 ;
syntax ResearchProject
        = 
        String name Organization carriedOutBy Organization financedBy AcademicStaff head ResearchTopic isAbout+ Person member+ ProjectReport projectInfo+
 ;
syntax DevelopmentProject
        = 
        String name Organization carriedOutBy Organization financedBy AcademicStaff head ResearchTopic isAbout+ Person member+ ProjectReport projectInfo+
 ;
syntax SoftwareProject
        = 
        product: Product
 ;
syntax Product
        = SoftwareComponent
        | String name Organization developedBy
 ;
syntax SoftwareComponent
        = 
        hasPrice: Integer
 ;
syntax Topic
        = ResearchTopic
        | name: String
 ;
syntax ResearchTopic
        = 
        Project dealWithIn AcademicStaff isWorkedOnBy+
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
