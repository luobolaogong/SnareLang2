import 'package:SnareLang2/SnareLang2.dart';
import 'package:test/test.dart';
import 'package:petitparser/petitparser.dart'; // defines Result

void main() {
  group('Test single Score elements', () {
    test('Dynamics test ppp', () {
      Result result = scoreParser.parse('\\ppp');
      expect(result.value.elements.elementAt(0), Dynamic.ppp);
    });
    test('Dynamics test pp', () {
      Result result = scoreParser.parse('\\pp');
      expect(result.value.elements.elementAt(0), Dynamic.pp);
    });
    test('Dynamics test p', () {
      Result result = scoreParser.parse('\\p');
      expect(result.value.elements.elementAt(0), Dynamic.p);
    });
    test('Dynamics test mp', () {
      Result result = scoreParser.parse('\\mp');
      expect(result.value.elements.elementAt(0), Dynamic.mp);
    });
    test('Dynamics test mf', () {
      Result result = scoreParser.parse('\\mf');
      expect(result.value.elements.elementAt(0), Dynamic.mf);
    });
    test('Dynamics test f', () {
      Result result = scoreParser.parse('\\f');
      var score = result.value;
      expect(score.elements.elementAt(0), Dynamic.f);
    });
    test('Dynamics test ff', () {
      Result result = scoreParser.parse('\\ff');
      expect(result.value.elements.elementAt(0), Dynamic.ff);
    });
    test('Dynamics test fff', () {
      Result result = scoreParser.parse('\\fff');
      expect(result.value.elements.elementAt(0), Dynamic.fff);

    });
    test('Dynamics test >', () {
      Result result = scoreParser.parse('\\>');
      expect(result.value.elements.elementAt(0), Dynamic.scale);

    });
    test('Dynamics test <', () {
      Result result = scoreParser.parse('\\<');
      expect(result.value.elements.elementAt(0), Dynamic.scale);
    });
    test('Dynamics test cresc', () {
      Result result = scoreParser.parse('\\cresc');
      expect(result.value.elements.elementAt(0), Dynamic.scale);
    });
    test('Dynamics test dim', () {
      Result result = scoreParser.parse('\\dim');
      expect(result.value.elements.elementAt(0), Dynamic.scale);
    });
    test('Dynamics test decresc', () {
      Result result = scoreParser.parse('\\decresc');
      expect(result.value.elements.elementAt(0), Dynamic.scale);
    });
    test('Set of notes...', () {
      Result result = scoreParser.parse('\\cresc F ^ \\mf 16 T >8 \\ff _Z 24f ^6d \\dim . . . \\p F');
      expect(result.isSuccess, isTrue);
    });

  });
}

