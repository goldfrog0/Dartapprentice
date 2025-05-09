void main(List<String> args) {
  Set<String>  uniques(String paragraph) {

    var paragraphList = paragraph.split('');

    return  {...paragraphList};
  }

  final alphabet = {
    'a' : 0,
    'b' : 0,
    'c' : 0,
    'd' : 0,
    'e' : 0,
    'f' : 0,
    'g' : 0,
    'h' : 0,
    'i' : 0,
    'j' : 0,
    'k' : 0,
    'l' : 0,
    'm' : 0,
    'n' : 0,
    'p' : 0,
    'q' : 0,
    'r' : 0,
    's' : 0,
    't' : 0,
    'u' : 0,
    'v' : 0,
    'w' : 0,
    'x' : 0,
    'y' : 0,
    'z' : 0,
    };

    void frequencyListed(String para) {
      final alphabet = {
    'a' : 0,
    'b' : 0,
    'c' : 0,
    'd' : 0,
    'e' : 0,
    'f' : 0,
    'g' : 0,
    'h' : 0,
    'i' : 0,
    'j' : 0,
    'k' : 0,
    'l' : 0,
    'm' : 0,
    'n' : 0,
    'p' : 0,
    'q' : 0,
    'r' : 0,
    's' : 0,
    't' : 0,
    'u' : 0,
    'v' : 0,
    'w' : 0,
    'x' : 0,
    'y' : 0,
    'z' : 0,
    };

    var alphaKeys = alphabet.keys;

      for (var letter in para.toLowerCase().split('')){
        if (alphaKeys.contains(letter)) {
          alphabet[letter] = alphabet[letter]! + 1;
        } else {
          continue;
        }
      }
      int totalChars = 0;
      for (var item in alphabet.keys) {
        totalChars += alphabet[item]!;
      }

    for (var item in alphabet.keys) {
      print('Letter: ${item} Count: ${alphabet[item]}, Frequency: ${alphabet[item]!/totalChars}');
    }
    }

  var para = """
  Congratulations on making it through another chapter! You’ve made a
ton of progress. This chapter will leave you with some advice about when
to use which type of collection. Each type has its strengths.""";


  frequencyListed(para);
}
