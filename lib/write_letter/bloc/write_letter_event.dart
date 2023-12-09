part of 'write_letter_bloc.dart';

// sealed == abstract class

sealed class WriteLetterEvent extends Equatable {
  const WriteLetterEvent();

  @override
  List<Object> get props => [];
}

final class WriteLetterInitialized extends WriteLetterEvent {
  const WriteLetterInitialized();
}

final class WriteLetterTypeSelected extends WriteLetterEvent {
  const WriteLetterTypeSelected(this.type);

  final BibleCardType type;

  @override
  List<Object> get props => [type];
}

final class WriteLetterBibleCardSelected extends WriteLetterEvent {
  const WriteLetterBibleCardSelected(this.card);

  final BibleCard card;

  @override
  List<Object> get props => [card];
}

final class WriteLetterTextEdited extends WriteLetterEvent {
  const WriteLetterTextEdited(this.text);

  final String text;

  @override
  List<Object> get props => [text];
}

final class WriterLetterSeleaingWaxSelected extends WriteLetterEvent {
  const WriterLetterSeleaingWaxSelected(this.wax);

  final SealingWax wax;

  @override
  List<Object> get props => [wax];
}

final class WriteLetterSubmitted extends WriteLetterEvent {
  const WriteLetterSubmitted();
}
