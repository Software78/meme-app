// ignore_for_file: use_build_context_synchronously

import '../../utils/utils.dart';

part 'view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {
  int page = 1;

  @override
  void initState() {
    context.read<LoadMemesBloc>().add(GetMemesFromApi(page: page));
    context.read<LocalMemesBloc>().add(LoadLocalMemes());
    super.initState();
  }

  memesError(String message) {
    Fluttertoast.showToast(msg: message);
  }

  seeAll() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TemplateScreen(),
      ),
    );
  }

  pickImage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CreateMemeScreen(file: file),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(this);
  }
}
