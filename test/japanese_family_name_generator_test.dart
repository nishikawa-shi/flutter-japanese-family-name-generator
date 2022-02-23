import 'package:flutter_test/flutter_test.dart';
import 'package:japanese_family_name_generator/japanese_family_name_generator.dart';

void main() {
  group('generateKanjiCombinedFamilyNameText', () {
    test('lengthIs2', () {
      expect(generateKanjiCombinedFamilyNameText().length, equals(2));
    });

    test('1stCharacterIsAdjectiveKanji', () {
      expect(['桜', '松', '竹', '梅', '神', '東', '西', '本', '大', '中', '小'],
          contains(generateKanjiCombinedFamilyNameText()[0]));
    });

    test('2ndCharacterIsLocationKanji', () {
      expect(['野', '原', '田', '畑', '川', '瀬', '木', '森', '林', '山', '村'],
          contains(generateKanjiCombinedFamilyNameText()[1]));
    });
  });
}
