@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SWRC

syntax Bibliography
        = 
        ANY publications+
 ;
syntax Publication
        = 
        ()
 ;
syntax Article
        = 
        ANY author+ ANY journal ANY month ANY number ANY pages ANY volume
 ;
syntax Book
        = 
        ANY month ANY number ANY volume ANY series ANY source ANY address ANY edition ANY isbn ANY price ANY editor ANY publisher ANY author+
 ;
syntax InBook
        = 
        ANY author+ ANY publisher ANY editor ANY month ANY number ANY pages ANY volume ANY series ANY chapter ANY type ANY address
 ;
syntax Booklet
        = 
        ANY author+ ANY month ANY address ANY edition ANY howpublished
 ;
syntax InCollection
        = 
        ANY editor ANY author+ ANY publisher ANY month ANY number ANY pages ANY address ANY edition ANY volume ANY series ANY chapter ANY type ANY booktitle
 ;
syntax InProceedings
        = 
        ANY editor ANY author+ ANY month ANY number ANY pages ANY address ANY volume ANY series ANY booktitle ANY organization ANY publisher
 ;
syntax Proceedings
        = 
        ANY editor ANY publisher ANY organization ANY month ANY number ANY volume ANY address ANY series
 ;
syntax Manual
        = 
        ANY author+ ANY organization ANY month ANY address ANY edition
 ;
syntax Misc
        = 
        ANY month ANY howpublished
 ;
syntax Unpublished
        = 
        ANY author+ ANY month
 ;
syntax Thesis
        = 
        ()
 ;
syntax MasterThesis
        = 
        ANY author+ ANY school ANY month ANY address ANY type
 ;
syntax PhDThesis
        = 
        ANY author+ ANY school ANY month ANY address ANY type
 ;
syntax Report
        = 
        ()
 ;
syntax ProjectReport
        = 
        describesProject: ANY
 ;
syntax TechnicalReport
        = 
        ANY series ANY organization
 ;
syntax Event
        = 
        ANY name ANY date ANY eventTitle ANY location ANY atEvent ANY hasPartEvent
 ;
syntax Conference
        = 
        series: ANY
 ;
syntax Workshop
        = 
        series: ANY
 ;
syntax Exhibition
        = 
        ()
 ;
syntax Lecture
        = 
        givenBy: ANY
 ;
syntax Meeting
        = 
        ANY title ANY participant+
 ;
syntax ProjectMeeting
        = 
        ()
 ;
syntax Person
        = 
        ANY address ANY name ANY email ANY fax ANY homepage ANY phone ANY photo
 ;
syntax Employee
        = 
        affiliation: ANY
 ;
syntax Manager
        = 
        ()
 ;
syntax AdministrativeStaff
        = 
        ()
 ;
syntax TechnicalStaff
        = 
        ()
 ;
syntax AcademicStaff
        = 
        ANY cooperateWith+ ANY editor ANY headOf ANY headOfGroup ANY memberOfPC ANY organizerOrChairOf ANY publication+ ANY supervises+ ANY worksAtProject
 ;
syntax Lecturer
        = 
        ()
 ;
syntax FacultyMember
        = 
        ()
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
        = 
        studiesAt: ANY
 ;
syntax Undergraduate
        = 
        ()
 ;
syntax Graduate
        = 
        ()
 ;
syntax PhDStudent
        = 
        ANY publication+ ANY worksAtProject ANY supervisor
 ;
syntax Organization
        = 
        ANY location ANY name ANY carriesOut+ ANY develops+ ANY employs+ ANY finances+ ANY publishes+ ANY technicalReport+
 ;
syntax ResearchGroup
        = 
        ANY head ANY member+
 ;
syntax Association
        = 
        ()
 ;
syntax Department
        = 
        hasParts: ANY
 ;
syntax Institute
        = 
        ANY cooperateWith ANY hasParts+
 ;
syntax Enterprise
        = 
        ()
 ;
syntax University
        = 
        ANY hasParts+ ANY student+
 ;
syntax Project
        = 
        ()
 ;
syntax ResearchProject
        = 
        ANY name ANY carriedOutBy ANY financedBy ANY head ANY isAbout+ ANY member+ ANY projectInfo+
 ;
syntax DevelopmentProject
        = 
        ANY name ANY carriedOutBy ANY financedBy ANY head ANY isAbout+ ANY member+ ANY projectInfo+
 ;
syntax SoftwareProject
        = 
        product: ANY
 ;
syntax Product
        = 
        ANY name ANY developedBy
 ;
syntax SoftwareComponent
        = 
        hasPrice: ANY
 ;
syntax Topic
        = 
        name: ANY
 ;
syntax ResearchTopic
        = 
        ANY dealWithIn ANY isWorkedOnBy+
 ;
