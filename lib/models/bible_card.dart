import 'package:equatable/equatable.dart';

/// 말씀 카드 타입
enum BibleCardType {
  /// 행복
  happiness,

  /// 사랑
  love,

  /// 감사
  thanks,

  /// 회복
  recovery,

  /// 용기
  courage,
}

/// 말씀 카드
abstract class BibleCard extends Equatable {
  /// Constructor.
  const BibleCard({
    required this.id,
    required this.type,
    required this.book,
    required this.chapter,
    required this.verse,
    required this.text,
  });

  factory BibleCard.fromJson(Map<String, dynamic> json) {
    return _BibleCardImpl(
      id: json['id'] as int,
      type: BibleCardType.values[json['type'] as int],
      book: json['book'] as String,
      chapter: json['chapter'] as int,
      verse: json['verse'] as int,
      text: json['text'] as String,
    );
  }

  /// ID of the card.
  final int id;

  /// 카테고리
  final BibleCardType type;

  /// 성경 책 이름
  final String book;

  /// 성경 장
  final int chapter;

  /// 성경 절
  final int verse;

  /// 성경 본문
  final String text;

  @override
  List<Object?> get props => [
        id,
        type,
        book,
        chapter,
        verse,
        text,
      ];
}

class _BibleCardImpl extends BibleCard {
  const _BibleCardImpl({
    required int id,
    required BibleCardType type,
    required String book,
    required int chapter,
    required int verse,
    required String text,
  }) : super(
          id: id,
          type: type,
          book: book,
          chapter: chapter,
          verse: verse,
          text: text,
        );
}
