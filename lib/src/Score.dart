
import 'package:petitparser/petitparser.dart'; // defines Result
import 'package:SnareLang2/SnareLang2.dart';

class Score {
  List elements = [];
  String toString() {
    return elements.toString(); // could do a forEach and collect each element into a string with \n between each
  }
}


///
/// ScoreParser
///
Parser scoreParser = ((noteParser | dynamicParser).plus()).trim().end().map((values) {    // trim()?
  print('\nIn Scoreparser');
  var score = Score();
  if (values is List) {
    for (var value in values) {
      print('value: -->$value<--');
      score.elements.add(value);
      print('Now score.elements has this many elements: ${score.elements.length}');
    }
  }
  else {
    print('Did not get a list, just one value: -->$values<--');
  }
  print('Leaving Scoreparser returning score $score');
  return score;
});
