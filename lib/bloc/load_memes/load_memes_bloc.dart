import '../../utils/utils.dart';

part 'load_memes_event.dart';
part 'load_memes_state.dart';

class LoadMemesBloc extends Bloc<LoadMemesEvent, LoadMemesState> {
  LoadMemesBloc() : super(MemesLoading()) {
    on<GetMemesFromApi>((event, emit) => _getMemesFromApi(event, emit));
  }

  _getMemesFromApi(GetMemesFromApi event, emit) async {
    ApiResponse response = await Repository().loadMemes(event.page);
    ApiResponse memeResponse = await Repository().localMemes();
    response.status
        ? emit(MemesLoaded(
            memes: response.memes!,
            localMemes: memeResponse.memes!,
          ))
        : emit(MemesError(error: response.message!));
  }
}
