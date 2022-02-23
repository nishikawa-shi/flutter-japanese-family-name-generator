library japanese_family_name_generator;

import 'dart:math';

String generateKanjiCombinedFamilyNameText() => [
      ['桜', '松', '竹', '梅', '神', '東', '西', '本', '大', '中', '小']
          ._getRandomSingle(),
      ['野', '原', '田', '畑', '川', '瀬', '木', '森', '林', '山', '村']
          ._getRandomSingle(),
    ].join();

extension StringsExt on List<String> {
  String _getRandomSingle() => this[Random().nextInt(length)];
}
