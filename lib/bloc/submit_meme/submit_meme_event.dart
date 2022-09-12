part of 'submit_meme_bloc.dart';

abstract class SubmitMemeEvent extends Equatable {
  const SubmitMemeEvent();

  @override
  List<Object> get props => [];
}

class SubmitMeme extends SubmitMemeEvent {
  final MemeModel model;

  const SubmitMeme({required this.model});

    @override
  List<Object> get props => [model];
}
