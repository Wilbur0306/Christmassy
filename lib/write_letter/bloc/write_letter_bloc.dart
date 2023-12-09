import 'package:bloc/bloc.dart';
import 'package:christmassy/models/bible_card.dart';
import 'package:christmassy/models/sealing_wax.dart';
import 'package:christmassy/models/user.dart';
import 'package:equatable/equatable.dart';

part 'write_letter_event.dart';
part 'write_letter_state.dart';

class WriteLetterBloc extends Bloc<WriteLetterEvent, WriteLetterState> {
  WriteLetterBloc({
    required CustomUser to,
  }) : super(
          WriteLetterState(
            to: to,
          ),
        ) {
    on<WriteLetterEvent>((event, emit) async {
      switch (event) {
        case WriteLetterInitialized():
          await _onWriteLetterInitialized(event, emit);
        case WriteLetterTypeSelected():
          await _onWriteLetterTypeSelected(event, emit);
        case WriteLetterBibleCardSelected():
          await _onWriteLetterBibleCardSelected(event, emit);
        case WriteLetterTextEdited():
          await _onWriteLetterTextEdited(event, emit);
        case WriterLetterSeleaingWaxSelected():
          await _onWriterLetterSeleaingWaxSelected(event, emit);
        case WriteLetterSubmitted():
          await _onWriteLetterSubmitted(event, emit);
      }
    });
  }

  Future<void> _onWriteLetterInitialized(
    WriteLetterInitialized event,
    Emitter<WriteLetterState> emit,
  ) async {}

  Future<void> _onWriteLetterTypeSelected(
    WriteLetterTypeSelected event,
    Emitter<WriteLetterState> emit,
  ) async {
    emit(
      state.copyWith(
        type: event.type,
      ),
    );
  }

  Future<void> _onWriteLetterBibleCardSelected(
    WriteLetterBibleCardSelected event,
    Emitter<WriteLetterState> emit,
  ) async {
    emit(
      state.copyWith(
        card: event.card,
      ),
    );
  }

  Future<void> _onWriteLetterTextEdited(
    WriteLetterTextEdited event,
    Emitter<WriteLetterState> emit,
  ) async {
    emit(
      state.copyWith(
        text: event.text,
      ),
    );
  }

  Future<void> _onWriterLetterSeleaingWaxSelected(
    WriterLetterSeleaingWaxSelected event,
    Emitter<WriteLetterState> emit,
  ) async {
    emit(
      state.copyWith(
        wax: event.wax,
      ),
    );
  }

  Future<void> _onWriteLetterSubmitted(
    WriteLetterSubmitted event,
    Emitter<WriteLetterState> emit,
  ) async {}
}
