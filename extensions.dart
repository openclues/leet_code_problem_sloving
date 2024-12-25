extension Nameing on Student {
  String getStudentName() {
    return "Dr " + this.name;
  }
}

void main(List<String> args) {
  Student student = Student(id: 2, name: "Islam");
  print(student.getStudentName());
}

class Student {
  final int id;
  final String name;

  Student({required this.id, required this.name});
}
