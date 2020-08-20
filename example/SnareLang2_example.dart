import 'package:SnareLang2/SnareLang2.dart';
import 'package:petitparser/petitparser.dart'; // defines Result

void main() {
  Result result;
  result = test('\\cresc F ^ \\mf 16 T >8 \\ff _Z 24f ^6d \\dim . . . \\p F', scoreParser);
  Score score = result.value;
  for (var element in score.elements) {
    print('Element type: ${element.runtimeType}');
  }
}

Result test(String testString, Parser parser) {
  print('\nIn test(), testString: -->${testString}<--');
  var result = parser.parse(testString);
  if (result.isSuccess) {
    var bufferLength = result.buffer.length;
    var position = result.position;
    print('bufferLength: $bufferLength, position: $position');
    if (position == bufferLength) {
      print('Success');
      var scoreElements = result.value;
      print('Score elements: $scoreElements'); // we should flatten these arrays somehow
    }
    else {
      print('Only partial success because ending position is $position and bufferLength is $bufferLength');
    }
  }
  else {
    print('Failure: Could not parse ${result.buffer}, Message: ${result.message}');
  }
  return result;
}
