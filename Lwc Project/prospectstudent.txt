public class ProspectStudent {
    
    public static void insertStudentRecords(List<Prospect_Student__c> newList,Map<Id,Prospect_Student__c> oldMap){
       set<String> yearSet = new Set<String>();    
        set<String> classSet = new Set<String>();   
        
        Map<Id, Prospect_Student__c> prospectStudentMap = new Map<Id, Prospect_Student__c>();     
        
        List<Student__c> studentList = new List<Student__c>();  
        
        for(Prospect_Student__c pros : newList){    
            
            yearSet.add(pros.Joining_Year__c);        
            classSet.add(pros.Class__c);          
            
            Prospect_Student__c oldVal = oldMap.get(pros.Id);         
            if(pros.Status__c != oldVal.Status__c && pros.Status__c == 'Approved'){            
                Student__c st = new Student__c();             
                st.Name = pros.Name;             
                st.Date_Of_Birth__c = pros.Date_Of_Birth__c;             
                st.Gender__c = pros.Gender__c;             
                st.Prospect_Student__c = pros.Id;                         
                studentList.add(st);            
                prospectStudentMap.put(pros.Id, pros);         
            }    
            
        }    
        insert  studentList;  
        
        Map<String, Class__c> classMap = new  Map<String, Class__c>();  
        
        for(Class__c cls : [SELECT Id, Name, Class__c,Year__c FROM Class__c WHERE Class__c IN :classSet AND Year__c IN :yearSet]){ 
            classMap.put(buildKeyForClass(cls.Class__c, cls.Year__c), cls); 
        }  
        List<StudentClass__c> studentClassList = new List<StudentClass__c>();     
        
        for(Student__c stu : studentList){         
            StudentClass__c sc = new StudentClass__c();        
            sc.Student__c = stu.Id;         
            Prospect_Student__c pros = prospectStudentMap.get(stu.Prospect_Student__c);        
            String key = buildKeyForClass(pros.Class__c, pros.Joining_Year__c);        
            Class__c cls = classMap.get(key);        
            sc.Class__c = cls.Id;         
            studentClassList.add(sc);    
        }     
        insert studentClassList;
    }  
    private static String buildKeyForClass(String classes, String year) { 
        return  classes + ':' + year; 
    }
}