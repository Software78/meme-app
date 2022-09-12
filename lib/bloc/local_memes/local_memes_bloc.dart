import '../../utils/utils.dart';

part 'local_memes_event.dart';
part 'local_memes_state.dart';

class LocalMemesBloc extends Bloc<LocalMemesEvent, LocalMemesState> {
  LocalMemesBloc() : super(LocalMemesLoading()) {
    on<LoadLocalMemes>((event, emit) => _loadLocalMemes(event, emit));
    on<ReloadLocalMemes>((event, emit) => _reloadLocalMemes(event, emit));
  }

  _loadLocalMemes(LoadLocalMemes event, emit) async {
    ApiResponse response = await Repository().localMemes();
    response.memes!.isEmpty
        ? emit(LocalMemesEmpty())
        : emit(LocalMemesLoaded(memes: response.memes!));
  }

  _reloadLocalMemes(ReloadLocalMemes event, emit) async {
    emit(LocalMemesLoading());
    ApiResponse response = await Repository().localMemes();
    await Future.delayed(const Duration(seconds: 4));
    response.memes!.isEmpty
        ? emit(LocalMemesEmpty())
        : emit(LocalMemesLoaded(memes: response.memes!));
  }
}
