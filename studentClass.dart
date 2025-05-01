
class Student {
  const Student({
      this.firstName = _anonFName,
      this.lastName = _anonLName,
      this.grade = _anonGrade,
  }) : assert(grade >= 0);

  const Student.anon() : this();

  static const _anonFName = '';
  static const _anonLName = '';
  static const _anonGrade = 0;

  final String firstName;
  final String lastName;
  final int grade;
}

void main(List<String> args) {

  const bert = Student(firstName: 'Bert', lastName: 'Bertington', grade: 95);
  const ernie = Student(firstName: 'Ernie', lastName: 'Ernington', grade: 85);
}
