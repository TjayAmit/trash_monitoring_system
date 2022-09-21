import 'package:basureward/packages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BasuReward',
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: const Color.fromARGB(255, 23, 172, 106),
          backgroundColor: Colors.white),
      home: const LandingPage(),
      initialBinding: AllBindings(),
      getPages: [
        GetPage(name: '/login', page: () => UserLoginView()),
        GetPage(name: '/signup', page: () => const UserSignupView()),
        GetPage(name: '/home', page: () => const HomeDashboardView()),
      ],
    );
  }
}
