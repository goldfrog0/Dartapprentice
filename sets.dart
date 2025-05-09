

void main(List<String> args) {

  // final Set<int> someSet = {};
  final someSet = <int>{};

  final someInfo = {
    'name' : 'Slowpoke',
    'profession' : 'Dog',
    'country' : 'Japan',
    'city' : 'Kyoto'
  };

  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);

  final evens = squares.where((number) => number.isEven);

  const amounts = [1, 2, 3, 4, 5, 6 ,7, 8, 9];
  final total = amounts.reduce((sum, element) => sum + element);

  final totalFold = amounts.fold(
    0,
    (int sum, element) => sum + element,
  );

  print(total);

  print(evens.toList());
  print(squares);
  print(squares.toList());
  someInfo['country'] = 'Canada';
  someInfo['city'] = 'Toronto';

  for (final entry in someInfo.entries) {
    print('${entry.value}');
  }

  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
    .where((dessert) => dessert.length > 5)
    .map((dessert) => dessert.toUpperCase());

  print(bigTallDesserts.toList());

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores);
  print(scores.reversed);

  final bGrades = scores.where((grade) => (90 > grade) & (grade >= 80));
  print(bGrades);

  
}
