import '../../utils/utils.dart';

part 'view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => OnboardingController();
}

class OnboardingController extends State<OnboardingScreen> {
  nextScreen() {
    Get.offAll(() => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingView(this);
  }
}
