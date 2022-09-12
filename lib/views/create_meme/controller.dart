// ignore_for_file: must_be_immutable

import '../../utils/utils.dart';

part 'view.dart';

class CreateMemeScreen extends StatefulWidget {
  CreateMemeScreen({Key? key, this.file, this.isLocalImage = true, this.model})
      : super(key: key);

  final XFile? file;
  final bool isLocalImage;
  MemeModel? model;

  @override
  State<CreateMemeScreen> createState() => CreateMemeController();
}

class CreateMemeController extends State<CreateMemeScreen> {
  late TextEditingController topTextController;
  late TextEditingController bottomTextController;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    topTextController = TextEditingController();
    bottomTextController = TextEditingController();

    super.initState();
  }

  submitMeme() {
    context.read<SubmitMemeBloc>().add(
          SubmitMeme(
            model: MemeModel(
              image: widget.model!.image,
              name: widget.model!.name,
              bottomText: bottomTextController.text,
              topText: topTextController.text,
            ),
          ),
        );
    context.read<LocalMemesBloc>().add(ReloadLocalMemes());
  }

  @override
  Widget build(BuildContext context) {
    return CreateMemeView(this);
  }
}
