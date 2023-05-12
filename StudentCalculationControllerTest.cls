@isTest
private class StudentCalculationControllerTest {
@isTest
    static void testMarkAndGradeCalculation() {
        // Create test data
        List<StudentCalculationController.StudentInfo> studentList = new List<StudentCalculationController.StudentInfo>();
        StudentCalculationController.StudentInfo student = new StudentCalculationController.StudentInfo();
        student.dob = '2000-01-01';
        student.name = 'John Doe';
        List<StudentCalculationController.Marks> marksList = new List<StudentCalculationController.Marks>();
        StudentCalculationController.Marks mark1 = new StudentCalculationController.Marks();
        mark1.mark = 65;
        mark1.subject = 'Tamil';
        marksList.add(mark1);
        
        StudentCalculationController.Marks mark2 = new StudentCalculationController.Marks();
        mark2.mark = 72;
        mark2.subject = 'English';
        marksList.add(mark2);
        
        StudentCalculationController.Marks mark3 = new StudentCalculationController.Marks();
        mark3.mark = 95;
        mark3.subject = 'Maths';
        marksList.add(mark3);
        
        StudentCalculationController.Marks mark4 = new StudentCalculationController.Marks();
        mark4.mark = 48;
        mark4.subject = 'Science';
        marksList.add(mark4);
        
        StudentCalculationController.Marks mark5 = new StudentCalculationController.Marks();
        mark5.mark = 88;
        mark5.subject = 'Social science';
        student.marks = marksList;
        marksList.add(mark5);
        studentList.add(student);
        
        //SECOND STUDENT
        StudentCalculationController.StudentInfo student1 = new StudentCalculationController.StudentInfo();
        student1.dob = '2000-02-02';
        student1.name = 'John joseph';
        List<StudentCalculationController.Marks> marksList1 = new List<StudentCalculationController.Marks>();
        StudentCalculationController.Marks mark11 = new StudentCalculationController.Marks();
        mark11.mark = 75;
        mark11.subject = 'Tamil';
        marksList1.add(mark11);
        
        StudentCalculationController.Marks mark21 = new StudentCalculationController.Marks();
        mark21.mark = 85;
        mark21.subject = 'English';
        marksList1.add(mark21);
        
        StudentCalculationController.Marks mark31 = new StudentCalculationController.Marks();
        mark31.mark = 79;
        mark31.subject = 'Maths';
        marksList1.add(mark31);
        
        StudentCalculationController.Marks mark41 = new StudentCalculationController.Marks();
        mark41.mark = 78;
        mark41.subject = 'Science';
        marksList1.add(mark41);
        
        StudentCalculationController.Marks mark51 = new StudentCalculationController.Marks();
        mark51.mark = 88;
        mark51.subject = 'Social science';
        marksList1.add(mark51);
        
        student1.marks = marksList1;
        studentList.add(student1);
        
        List<StudentCalculationController.GradeCriteria> gradeList = new List<StudentCalculationController.GradeCriteria>();
        StudentCalculationController.GradeCriteria gradeCriteria1 = new StudentCalculationController.GradeCriteria();
        gradeCriteria1.minMark = 80;
        gradeCriteria1.maxMark = 100;
        gradeCriteria1.grade = 'Distinction';
        gradeList.add(gradeCriteria1);

        StudentCalculationController.GradeCriteria gradeCriteria2 = new StudentCalculationController.GradeCriteria();
        gradeCriteria2.minMark = 60;
        gradeCriteria2.maxMark = 79;
        gradeCriteria2.grade = 'First';
        gradeList.add(gradeCriteria2);

	  StudentCalculationController.GradeCriteria gradeCriteria3 = new StudentCalculationController.GradeCriteria();
        gradeCriteria3.minMark = 50;
        gradeCriteria3.maxMark = 59;
        gradeCriteria3.grade = 'Second';
        gradeList.add(gradeCriteria3);

	  StudentCalculationController.GradeCriteria gradeCriteria4 = new StudentCalculationController.GradeCriteria();
        gradeCriteria4.minMark = 40;
        gradeCriteria4.maxMark = 49;
        gradeCriteria4.grade = 'Third';
        gradeList.add(gradeCriteria4);

	  StudentCalculationController.GradeCriteria gradeCriteria5 = new StudentCalculationController.GradeCriteria();
        gradeCriteria5.minMark = 0;
        gradeCriteria5.maxMark = 39;
        gradeCriteria5.grade = 'Fail';
        gradeList.add(gradeCriteria5);
        
        // Call the method
        StudentCalculationController.markAndGradeCalculation(studentList, gradeList);
        
        // Add assertions here
    }
}