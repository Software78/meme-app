part of 'load_memes_bloc.dart';

abstract class LoadMemesEvent extends Equatable {
  const LoadMemesEvent();

  @override
  List<Object> get props => [];
}

class GetMemesFromApi extends LoadMemesEvent {
  final int page;

  const GetMemesFromApi({required this.page});

  @override
  List<Object> get props => [page];
}
