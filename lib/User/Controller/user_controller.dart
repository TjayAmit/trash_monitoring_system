import 'package:basureward/packages.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController extends GetxController {
  final TextEditingController name = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController vpassowrd = TextEditingController();

  final _googleSignin = GoogleSignIn();
  var googleAccount = Rxn<GoogleSignInAccount?>(null).obs();

  void login() async {
    googleAccount.value = await _googleSignin.signIn();
    Get.toNamed('/home');
  }
}
