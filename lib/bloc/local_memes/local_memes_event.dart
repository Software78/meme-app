part of 'local_memes_bloc.dart';

abstract class LocalMemesEvent extends Equatable {
  const LocalMemesEvent();

  @override
  List<Object> get props => [];
}


class LoadLocalMemes extends LocalMemesEvent{}

class ReloadLocalMemes extends LocalMemesEvent{}