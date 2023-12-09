import 'package:bloc_test/bloc_test.dart';
import 'package:christmassy/models/bible_card.dart';
import 'package:christmassy/models/user.dart';
import 'package:christmassy/write_letter/bloc/write_letter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUser extends Mock implements CustomUser {}

void main() {
  final user = MockUser();
  test('WriteLetterInitialized', () {
    final event = WriteLetterInitialized();

    expect(event.runtimeType, WriteLetterInitialized);
  });

  blocTest<WriteLetterBloc, WriteLetterState>(
    'emits [MyState] when MyEvent is added.',
    build: () => WriteLetterBloc(to: user),
    act: (bloc) => bloc.add(WriteLetterTypeSelected(BibleCardType.happiness)),
    expect: () => [
      WriteLetterState(
        to: user,
        type: BibleCardType.happiness,
      ),
    ],
  );
  blocTest<WriteLetterBloc, WriteLetterState>(
    'emits State with new text',
    build: () => WriteLetterBloc(to: user),
    act: (bloc) => bloc.add(WriteLetterTextEdited('hello')),
    expect: () => [
      WriteLetterState(
        to: user,
        text: 'hello',
      ),
    ],
  );
}
