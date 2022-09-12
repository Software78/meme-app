part of 'submit_meme_bloc.dart';

abstract class SubmitMemeState extends Equatable {
  const SubmitMemeState();
  
  @override
  List<Object> get props => [];
}

class SubmitMemeLoading extends SubmitMemeState {}

class SubmitMemeSuccess extends SubmitMemeState {}
