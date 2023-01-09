void main() {
  Employee emp1 = Employee();
  print(emp1.name);
  print(emp1.salary.toString());
  emp1.showData();
}

class Employee {
  String name = 'Bounpone';
  double salary = 20000;

  void development() {
    print(" programming in company");
  }

  void showData() {
    print('staff name : ' + name);
    print(' salary : ' + salary.toString());
  }
}
