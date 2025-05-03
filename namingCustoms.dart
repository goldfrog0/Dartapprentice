
class Name {

  Name({
      required this.givenName,
      this.surName,
      this.surnameIsFirst = false
  });

  String givenName;
  String? surName;
  bool surnameIsFirst;

  @override
  String toString() {
    // TODO: implement toString
    if (surnameIsFirst) {
      return '$surName $givenName';
    } else if (surName == null) {
      return '$givenName';
    } else {
      return'$givenName $surName';
    }
  }
}

void main(List<String> args) {

Name xavier = Name(givenName: 'Xavier', surName: 'Garrido');
Name xavier1 = Name(givenName: 'Xavier', surName: '');

Name mio = Name(givenName: 'Mio', surName: 'Ali', surnameIsFirst: true);

Name seal = Name(givenName: 'Seal');

print(xavier.toString());
print(xavier1.toString());
print(mio.toString());
print(seal.toString());

xavier1.surnameIsFirst = true;
xavier1.surName = 'Moo';
print(xavier1.toString());


}
