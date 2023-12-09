import 'package:christmassy/models/bible_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('biblecard fromJson', () {
    final json = {
      "id": 1,
      "type": 0,
      "book": "창세기",
      "chapter": 1,
      "verse": 1,
      "text": "태초에 하나님이 천지를 창조하시니라",
    };

    final card = BibleCard.fromJson(json);

    expect(card.id, 1);

    expect(card.type, BibleCardType.happiness);

    expect(card.book, '창세기');

    expect(card.chapter, 1);

    expect(card.verse, 1);
  });
}
