import 'package:petitparser/petitparser.dart'; // defines Result
import 'package:SnareLang2/SnareLang2.dart';

enum Dynamic {
  ppp,
  pp,
  p,
  mp,
  mf,
  fff,
  ff,
  f,
//  dim,
//  decresc,
//  cresc,
  scale
}

///
/// DynamicParser
///
Parser dynamicParser = (
    string('\\mf') |
    string('\\mp') |
    string('\\ppp') |
    string('\\pp') |
    string('\\p') |
    string('\\fff') |
    string('\\ff') |
    string('\\f') |
    string('\\>') |
    string('\\<') |
    string('\\dim') |
    string('\\decresc') |
    string('\\cresc')
).trim().map((value) { // trim?  Yes!  Makes a difference
  print('\nIn Dynamicparser');
  Dynamic dynamic;
  switch (value) {
    case '\\ppp':
      dynamic = Dynamic.ppp;
      break;
    case '\\pp':
      dynamic =  Dynamic.pp;
      break;
    case '\\p':
      dynamic =  Dynamic.p;
      break;
    case '\\mp':
      dynamic =  Dynamic.mp;
      break;
    case '\\mf':
      dynamic =  Dynamic.mf;
      break;
    case '\\f':
      dynamic =  Dynamic.f;
      break;
    case '\\ff':
      dynamic =  Dynamic.ff;
      break;
    case '\\fff':
      dynamic =  Dynamic.fff;
      break;
    case '\\>':
    case '\\<':
    case '\\cresc':
    case '\\dim':
    case '\\decresc':
      dynamic =  Dynamic.scale;
      break;
  }
  print('Leaving DynamicParser returning value $dynamic');
  return dynamic;
});
