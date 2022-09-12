part of 'load_memes_bloc.dart';

abstract class LoadMemesState extends Equatable {
  const LoadMemesState();

  @override
  List<Object> get props => [];
}

class MemesLoading extends LoadMemesState {}

class MemesLoaded extends LoadMemesState {
  final List<MemeModel> memes;
  final List<MemeModel> localMemes;

  const MemesLoaded({
    required this.memes,
    required this.localMemes,
  });

  @override
  List<Object> get props => [memes];
}

class MemesError extends LoadMemesState {
  final String error;

  const MemesError({required this.error});

  @override
  List<Object> get props => [error];
}
