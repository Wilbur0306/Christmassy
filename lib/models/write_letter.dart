import 'package:christmassy/models/bible_card.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// 편지를 쓰는 화면에 사용되는 모델
abstract class WriteLetterFacade extends Equatable {
  const WriteLetterFacade({
    required this.to,
    required this.body,
    required this.card,
  });

  /// 누구에게 쓰는 편지인지
  final User to;

  String get toName => to.displayName ?? to.phoneNumber ?? 'Unknown';

  /// 본문
  final String body;

  /// 말씀 카드
  final BibleCard card;

  void print() {}

  // copywith
  WriteLetterFacade copyWith({
    User? to,
    String? body,
    BibleCard? card,
  }) {
    return _WriteLetterImpl(
      to: to ?? this.to,
      body: body ?? this.body,
      card: card ?? this.card,
    );
  }

  @override
  List<Object?> get props => [
        to,
        body,
        card,
      ];
}

class _WriteLetterImpl extends WriteLetterFacade {
  const _WriteLetterImpl({
    required User to,
    required String body,
    required BibleCard card,
  }) : super(
          to: to,
          body: body,
          card: card,
        );
}

/// 편지를 보낼때, 전송용 모델
class WriterLetter extends WriteLetterFacade {
  /// Constructor.
  const WriterLetter({
    required User to,
    required String body,
    required BibleCard card,
    required this.from,
  }) : super(
          to: to,
          body: body,
          card: card,
        );

  /// 누가 쓰는 편지인지
  final User from;
}
