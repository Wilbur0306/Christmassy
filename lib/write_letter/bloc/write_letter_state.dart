part of 'write_letter_bloc.dart';

class WriteLetterState extends Equatable {
  const WriteLetterState({
    required this.to,
    this.type,
    this.card,
    this.text = '',
    this.wax,
  });

  /// 누구한테 쓰는 편지인지
  final CustomUser to;

  /// 말씀 카드 타입
  final BibleCardType? type;

  final BibleCard? card;

  final String text;

  final SealingWax? wax;

  WriteLetterState copyWith({
    CustomUser? to,
    BibleCardType? type,
    BibleCard? card,
    String? text,
    SealingWax? wax,
  }) {
    return WriteLetterState(
      to: to ?? this.to,
      type: type ?? this.type,
      card: card ?? this.card,
      text: text ?? this.text,
      wax: wax ?? this.wax,
    );
  }

  @override
  List<Object?> get props => [
        to,
        type,
        card,
        text,
        wax,
      ];
}
