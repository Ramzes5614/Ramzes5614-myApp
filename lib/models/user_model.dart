enum UserType { WORKER, ADMIN, NONAUTH }

class User {
  var usType;
  User(
      {this.fio,
      this.position,
      this.nameOfStruct,
      this.education,
      this.experience,
      this.datar})
      : usType = UserType.WORKER;
  User.without() {
    fio = 'Фамилия';
    position = 'Работник';
    nameOfStruct = '';
    education = '';
    experience = 10;
    datar = DateTime(2000);
    usType = UserType.WORKER;
  }
  User.adm() {
    fio = 'Фамилия';
    position = 'Работник';
    nameOfStruct = '';
    education = '';
    experience = 10;
    datar = DateTime(2000);
    usType = UserType.ADMIN;
  }
  User.nonAuth() {
    usType = UserType.NONAUTH;
  }
  void isAdmim() {
    usType = UserType.ADMIN;
  }

  String fio, position, nameOfStruct, education;
  int experience;
  DateTime datar;
}
