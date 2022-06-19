import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pundi_apps/shared/theme.dart';

import '../../routes/app_pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 91,
                margin: const EdgeInsets.only(top: 30),
                child: Image.asset("assets/bitmap/logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      "Masuk ke akun",
                      style: AppText.textMedium.copyWith(
                          color: Colors.black, fontWeight: AppText.medium),
                    ),
                    Text(
                      " Pundi",
                      style: AppText.textMedium.copyWith(
                          color: AppColor.halloweenOrange,
                          fontWeight: AppText.medium),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Text(
                  "Email",
                  style: AppText.textNormal.copyWith(
                    fontWeight: AppText.medium,
                    fontSize: 12,
                    color: AppColor.gray,
                  ),
                ),
              ),
              Container(
                width: 330,
                height: 45,
                margin: const EdgeInsets.only(top: 8),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Masukkan email",
                    contentPadding: EdgeInsets.only(top: 8, left: 12),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColor.halloweenOrange, width: 1),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColor.halloweenOrange, width: 1),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Password",
                  style: AppText.textNormal.copyWith(
                    fontWeight: AppText.medium,
                    fontSize: 12,
                    color: AppColor.gray,
                  ),
                ),
              ),
              Container(
                width: 330,
                height: 45,
                margin: const EdgeInsets.only(top: 8),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Masukkan password",
                    contentPadding: EdgeInsets.only(top: 8, left: 12),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColor.halloweenOrange, width: 1),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColor.halloweenOrange, width: 1),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                ),
              ),
              Text(
                "Lupa kata sandi?",
                style: AppText.textNormal.copyWith(
                  color: AppColor.orange,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(330, 50),
                  primary: AppColor.halloweenOrange,
                  shadowColor: AppColor.gray,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  textStyle: AppText.textMedium.copyWith(
                    fontSize: 14.0,
                    color: AppColor.white,
                    fontWeight: AppText.semiBold,
                  ),
                ),
                onPressed: () {
                  Get.offNamed(Routes.main);
                },
                child: const Text(
                  "Masuk",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun?",
                      style: AppText.textMedium.copyWith(
                        color: AppColor.gray,
                        fontWeight: AppText.regular,
                        fontSize: 12,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.register);
                      },
                      child: Text(
                        " Daftar",
                        style: AppText.textMedium.copyWith(
                          color: AppColor.halloweenOrange,
                          fontWeight: AppText.regular,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
