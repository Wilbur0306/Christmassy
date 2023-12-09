part of 'write_letter_bloc.dart';

sealed class WriteLetterState extends Equatable {
  const WriteLetterState();
  
  @override
  List<Object> get props => [];
}

final class WriteLetterInitial extends WriteLetterState {}
