import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/register/onboardregister.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginModel extends ChangeNotifier {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  bool isUsernameError = false;
  bool isPasswordError = false;

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  bool isValidLogin() {
    final username = usernameController.text;
    final password = passwordController.text;
    isUsernameError = username.isEmpty;
    isPasswordError = password.isEmpty;
    return username.isNotEmpty && password.isNotEmpty;
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginModel = Provider.of<LoginModel>(context);
    final auth = FirebaseAuth.instance; // Initialize Firebase Auth

    Future<void> handleLogin() async {
      if (loginModel.isValidLogin()) {
        try {
          final userCredential = await auth.signInWithEmailAndPassword(
            email: loginModel.usernameController.text,
            password: loginModel.passwordController.text,
          );

          if (userCredential.user != null) {
            // Successfully logged in
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          } else {
            // Handle login failure
            // You can show an error message
          }
        } catch (e) {
          // Handle exceptions, e.g., incorrect credentials
          print(e.toString());
        }
      }
      loginModel.notifyListeners();
    }

    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 20.0.h,
                        width: 80.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/logoo.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0.h),
                    const Text("Enter your Name"),
                    const SizedBox(height: 10),
                    TextField(
                      controller: loginModel.usernameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(
                            color: loginModel.isUsernameError
                                ? Colors.red
                                : Colors.blue,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(
                            color: loginModel.isUsernameError
                                ? Colors.red
                                : Colors.blue,
                            width: 2,
                          ),
                        ),
                        hintText: "Username",
                      ),
                    ),
                    loginModel.isUsernameError
                        ? Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Username is required',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.0.sp,
                              ),
                            ),
                          )
                        : Container(),
                    SizedBox(height: 2.0.h),
                    const Text("Enter your Password"),
                    SizedBox(height: 2.0.h),
                    TextField(
                      controller: loginModel.passwordController,
                      obscureText: !loginModel.isPasswordVisible,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(
                            color: loginModel.isPasswordError
                                ? Colors.red
                                : Colors.blue,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(
                            color: loginModel.isPasswordError
                                ? Colors.red
                                : Colors.blue,
                            width: 2,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: loginModel.togglePasswordVisibility,
                          icon: Icon(
                            loginModel.isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        hintText: "Password",
                      ),
                    ),
                    loginModel.isPasswordError
                        ? Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Password is required',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.0.sp,
                              ),
                            ),
                          )
                        : Container(),
                    const SizedBox(height: 15),
                    Center(
                      child: ElevatedButton(
                        onPressed: handleLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(400, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 10.0.sp),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => onboardregister(),
                              ),
                            );
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.blue, fontSize: 10.0.sp),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
