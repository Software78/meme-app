import 'utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoadMemesBloc>(
          create: (context) => LoadMemesBloc(),
        ),
        BlocProvider<SubmitMemeBloc>(
          create: (context) => SubmitMemeBloc(),
        ),
        BlocProvider<LocalMemesBloc>(
          create: (context) => LocalMemesBloc(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, widget) => const GetMaterialApp(
          title: 'Material App',
          home: OnboardingScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
