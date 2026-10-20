
class Student {
  // Fields (properties)
  String name;
  String program;
  int _grade;

  // Constructor
  Student(this.name, this.program, int grade)
      : _grade = grade;

  // Method to display student information
  void displayInfo() {
    print('Name: $name');
    print('Program: $program');
    print('Grade: $_grade');
  }

  // Encapsulation: read the private grade
  int getGrade() {
    return _grade;
  }

  // Encapsulation: update the private grade
  void updateGrade(int newGrade) {
    if (newGrade >= 0 && newGrade <= 100) {
      _grade = newGrade;
      print('$name\'s grade updated successfully.');
    } else {
      print('Invalid grade. Please enter 0 to 100.');
    }
  }
}

void main() {
  // Create at least two Student objects
  Student student1 = Student('Bhea Rivera', 'BSIT', 90);
  Student student2 = Student('Alicia Omar', 'BSIT', 85);

  // Store objects in a List
  List<Student> students = [student1, student2];

  print('===== STUDENT INFORMATION =====');

  // Display every student using a loop
  for (Student student in students) {
    student.displayInfo();
    print('------------------------------');
  }

  // Demonstrate encapsulation
  print('\n===== UPDATE STUDENT GRADE =====');
  print('Current grade: ${student1.getGrade()}');

  student1.updateGrade(95);
  print('New grade: ${student1.getGrade()}');

  // Demonstrate a class method
  print('\n===== UPDATED STUDENT INFORMATION =====');
  student1.displayInfo();

  // Demonstrate List usage
  print('\nTotal students: ${students.length}');
}
