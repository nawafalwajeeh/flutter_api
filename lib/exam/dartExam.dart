void main() {
  String? carName;
  print('carName: ${carName ?? 'KYA'}');

  int marks = 36;
  print('marks:${marks.abs()}');

  int? someValue;
  int data = someValue ?? 5;
  print('data = $data');

  int getLength(String? str) {
    return str!.length;
  }

  print('getLength : ${getLength('nawaf')}');

  int? sum({int? b}) {
    return b;
  }

  print('sum = ${sum(b: 20)}');

  int? sum2([int? b]) {
    return b;
  }

  print('sum2 = ${sum2(20)}');
}

int? sum({int? b}) {
  return b;
}

int? sum1([int? b]) {
  return b;
}
