import '../../utils/utils.dart';

part 'submit_meme_event.dart';
part 'submit_meme_state.dart';

class SubmitMemeBloc extends Bloc<SubmitMemeEvent, SubmitMemeState> {
  SubmitMemeBloc() : super(SubmitMemeSuccess()) {
    on<SubmitMeme>((event, emit) => _submitMeme(event, emit));
  }

  _submitMeme(SubmitMeme event, emit) async {
    emit(SubmitMemeLoading());
    await Repository().submitMeme(event.model);
    emit(SubmitMemeSuccess());
  }
}
