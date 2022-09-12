part of 'local_memes_bloc.dart';

abstract class LocalMemesState extends Equatable {
  const LocalMemesState();

  @override
  List<Object> get props => [];
}

class LocalMemesLoading extends LocalMemesState {}

class LocalMemesLoaded extends LocalMemesState {
  final List<MemeModel> memes;

  const LocalMemesLoaded({required this.memes});

  @override
  List<Object> get props => [memes];
}

class LocalMemesEmpty extends LocalMemesState{}