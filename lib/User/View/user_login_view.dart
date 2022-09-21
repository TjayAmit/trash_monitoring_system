import 'package:basureward/packages.dart';

class UserLoginView extends StatelessWidget {
  UserLoginView({Key? key}) : super(key: key);

  final controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, elevation: 0),
      body: Stack(
        children: [
          const Positioned.fill(child: AppBackgroundDisplayView()),
          Positioned(
              top: 220,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: Column(
                    children: [
                      Text(
                        'WELCOME',
                        style: TextStyle(
                            color: ColorPallete.primary,
                            fontSize: 30,
                            fontWeight: FontClass.largeFW),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                          width: Get.width,
                          height: 60,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Card(
                              elevation: 4,
                              child: textFormField(
                                  controller.email,
                                  'Email',
                                  const Icon(
                                    Icons.person,
                                  ),
                                  0),
                            ),
                          )),
                      const SizedBox(height: 20),
                      SizedBox(
                          width: Get.width,
                          height: 60,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Card(
                              elevation: 4,
                              child: textFormField(
                                  controller.password,
                                  'Password',
                                  const Icon(
                                    Icons.lock,
                                  ),
                                  0),
                            ),
                          )),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: Get.width,
                        height: 40,
                        child: Center(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'forgot password?',
                                style: TextStyle(
                                    color: ColorPallete.secondary,
                                    fontSize: FontClass.medium,
                                    fontWeight: FontClass.extraSmallFW),
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      MaterialButton(
                        minWidth: Get.width * 0.7,
                        color: const Color.fromARGB(255, 7, 61, 105),
                        onPressed: () {
                          Get.toNamed('/home');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: ColorPallete.fontSecondary,
                              fontSize: FontClass.large,
                              fontWeight: FontClass.largeFW),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: Get.width,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'don`t have an account?',
                              style: TextStyle(
                                  color: ColorPallete.secondary,
                                  fontSize: FontClass.medium,
                                  fontWeight: FontClass.extraSmallFW),
                            ),
                            TextButton(
                                style: const ButtonStyle(
                                    splashFactory: NoSplash.splashFactory),
                                onPressed: () {
                                  Get.toNamed('/signup');
                                },
                                child: Text(
                                  'sign up',
                                  style: TextStyle(
                                      color: ColorPallete.secondary,
                                      fontSize: FontClass.medium,
                                      fontWeight: FontClass.standardFW),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextButton(
                        onPressed: () {
                          // GoogleSignIn().signIn();
                        },
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset('./assets/logo/google_logo.png'),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget textFormField(TextEditingController textController, String hintName,
      Icon? icon, int code) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: textController,
      maxLines: hintName == 'Description' ? 4 : 1,
      readOnly: hintName == 'Image File Name' ? true : false,
      decoration: InputDecoration(
          prefixIcon: icon, hintText: hintName, border: InputBorder.none),
      onSaved: (String? value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
      validator: (String? value) {
        return (value != null && value.contains('@'))
            ? 'Do not use the @ char.'
            : null;
      },
    );
  }
}
