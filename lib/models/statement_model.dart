class StatemTag {
  StatemTag(
      {this.fio,
      this.position,
      this.nameOfStruct,
      this.education,
      this.experience,
      this.datar});
  String fio, position, nameOfStruct, education, experience;
  DateTime datar;
}

class Statem {
  Statem(
      {this.titleOfProposal = 'не указано',
      this.currentCategory = 'не указано',
      this.theProblem = 'не указано',
      this.descriptionOfSolution = 'не указано',
      this.expectation = 'не указано',
      this.costs,
      this.terms});
  String titleOfProposal, currentCategory;
  String theProblem, descriptionOfSolution, expectation;
  List<Cost> costs = [
    Cost(number: 1, costItem: 'Строка строка строка', summWithNDS: 10000),
    Cost(number: 2, costItem: 'Строка1 строка1 строка1', summWithNDS: 12300)
  ];
  List<Terms> terms = [
    Terms(number: 1, nameOfStage: 'Этап 1', daysNumber: 90),
    Terms(number: 2, nameOfStage: 'Этап 2', daysNumber: 40),
    Terms(number: 3, nameOfStage: 'Этап 3', daysNumber: 90)
  ];
}

class Cost {
  Cost({this.number, this.costItem, this.summWithNDS});
  int number;
  String costItem;
  double summWithNDS;
}

class Terms {
  Terms({this.number, this.nameOfStage, this.daysNumber});
  int number;
  String nameOfStage;
  int daysNumber;
}

List<String> categories = [
  'Управление технологическим процессом. Цифровая сеть',
  'Цифровое управление компанией',
  'Комплексная система информационной безопасности',
  'Дополнительные сервисы',
  'не относится '
];
