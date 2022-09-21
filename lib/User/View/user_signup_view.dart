import 'package:basureward/packages.dart';

class UserSignupView extends GetView<UserController> {
  const UserSignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, elevation: 0),
      body: Stack(
        children: [
          const Positioned.fill(child: AppBackgroundDisplayView()),
          Positioned(
              top: 180,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: Column(
                    children: [
                      Text(
                        'Signup',
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
                                  controller.name,
                                  'Name',
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
                                  controller.address,
                                  'Address',
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
                                  controller.vpassowrd,
                                  'Confirm password',
                                  const Icon(
                                    Icons.person,
                                  ),
                                  0),
                            ),
                          )),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            minWidth: 100,
                            color: Colors.grey,
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: ColorPallete.fontSecondary,
                                  fontSize: FontClass.medium,
                                  fontWeight: FontClass.mediumFW),
                            ),
                          ),
                          MaterialButton(
                            minWidth: Get.width * 0.55,
                            color: const Color.fromARGB(255, 7, 61, 105),
                            onPressed: () {
                              Get.toNamed('/home');
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                  color: ColorPallete.fontSecondary,
                                  fontSize: FontClass.medium,
                                  fontWeight: FontClass.mediumFW),
                            ),
                          ),
                        ],
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
