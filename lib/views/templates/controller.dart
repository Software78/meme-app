import '../../utils/utils.dart';

part 'view.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({Key? key}) : super(key: key);

  @override
  State<TemplateScreen> createState() => TemplateController();
}

class TemplateController extends State<TemplateScreen> {
  createMeme(MemeModel memeModel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateMemeScreen(
          model: memeModel,
          isLocalImage: false,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TemplateView(this);
  }
}
