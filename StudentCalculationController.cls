public with sharing class StudentCalculationController {
    public static void markAndGradeCalculation(List<studentInfo>studentList,List<gradeCriteria>gradeList){
        List<Integer> submark = new List<Integer>();
        List<String> subjectName = new List<String>();
        List<String> grade = new List<String>();
        //List<Integer>totalMarks = new List<Integer>();
        for (studentInfo student : studentList) 
        {
            for (marks mar : student.marks) {
                subMark.add(mar.mark);
                subjectName.add(mar.subject);
                for (gradeCriteria criteria : gradeList) {
                    if (subMark[submark.size()-1] >= criteria.minMark && subMark[subMark.size()-1] <= criteria.maxMark) {
                        grade.add(criteria.grade);
                        
                        //student.grade = grade;
                        system.debug('Student:'+student.name + ' '+'Subject'+subjectName[subjectName.size()-1]+': '+'Subject Mark:'+subMark[subMark.size()-1]+':' +criteria.grade);
                    }
                    
                    
                }
            }
            //student.calculateTotalMarks();
            
            // Calculate total marks for each student
            Integer totalMarks = 0;
            integer percentage;
            for (marks mar : student.marks) {
                totalMarks += mar.mark;
                percentage = totalMarks/5;
            }
            student.totalMarks = totalMarks;
            student.percentage = percentage;
            system.debug('Total Marks for ' + student.name + ': ' + student.totalMarks);
            system.debug('Percentage:'+student.percentage);
            String overallGrade='';
            for(gradeCriteria criteria:gradeList){
                if(percentage >= criteria.minMark && percentage <= criteria.maxMark){
                    overallGrade = criteria.grade;
                    //system.debug('Overall Grade:'+overallGrade);
                }
            }
            student.overallGrade = overallGrade;
            system.debug('OverAll Grade:'+ student.overallGrade);
        }
    }
    
    
    
    public class studentInfo{
        public String dob{get;set;}
        public list<marks> marks{get;set;}
        public String name{get;set;}
        public Integer totalMarks{get;set;}
        public Integer percentage{get;set;}
        public String overallGrade{get;set;}
        
    }
    
    public class marks{
        public Integer mark{get;set;}
        public String subject{get;set;}
        public string grade{get;set;}
    }
    public class gradeCriteria{
        public Integer minMark{get;set;}
        public Integer maxMark{get;set;}
        public String grade{get;set;}
    }
}