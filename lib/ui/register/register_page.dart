import 'package:flutter/material.dart';
import 'package:pundi_apps/shared/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 53),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/bitmap/logo.png',
              width: 91,
              height: 51,
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Ayo gabung bersama',
                style: AppText.textMedium.copyWith(
                    color: AppColor.black,
                    fontWeight: AppText.medium,
                    fontSize: 16),
              ),
              TextSpan(
                text: ' Pundi',
                style: AppText.textMedium.copyWith(
                    color: AppColor.orange,
                    fontWeight: AppText.medium,
                    fontSize: 16),
              ),
            ])),
          ],
        ),
      );
    }

    Widget nomorhpInput() {
      return Container(
          margin: EdgeInsets.only(top: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nomor HP',
                style: AppText.textMedium.copyWith(
                    color: AppColor.black.withOpacity(0.5),
                    fontWeight: AppText.medium,
                    fontSize: 12),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 37,
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColor.black.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/bitmap/flag_icon.png',
                        width: 17,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '+62',
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Image.asset(
                        'assets/bitmap/down_icon.png',
                        width: 10,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: AppColor.black.withOpacity(0.2),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Expanded(
                        child: TextFormField(
                          style: AppText.textNormal,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan nomor hp',
                            hintStyle: AppText.textNormal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ));
    }

    Widget emailInput() {
      return Container(
          margin: EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: AppText.textMedium.copyWith(
                    color: AppColor.black.withOpacity(0.5),
                    fontWeight: AppText.medium,
                    fontSize: 12),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 37,
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColor.black.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: TextFormField(
                    style: AppText.textNormal,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Masukkan email',
                      hintStyle: AppText.textNormal,
                    ),
                  ),
                ),
              )
            ],
          ));
    }

    Widget namalengkapInput() {
      return Container(
          margin: EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Lengkap',
                style: AppText.textMedium.copyWith(
                    color: AppColor.black.withOpacity(0.5),
                    fontWeight: AppText.medium,
                    fontSize: 12),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 37,
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColor.black.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: TextFormField(
                    style: AppText.textNormal,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Masukkan nama lengkap',
                      hintStyle: AppText.textNormal,
                    ),
                  ),
                ),
              )
            ],
          ));
    }

    Widget passwordInput() {
      return Container(
          margin: EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Buat Password',
                style: AppText.textMedium.copyWith(
                    color: AppColor.black.withOpacity(0.5),
                    fontWeight: AppText.medium,
                    fontSize: 12),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 37,
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColor.black.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: TextFormField(
                    style: AppText.textNormal,
                    obscureText: true,
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Masukkan password',
                      hintStyle: AppText.textNormal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Saya setuju dengan ',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.black.withOpacity(0.5),
                      fontWeight: AppText.medium,
                      fontSize: 12),
                ),
                TextSpan(
                  text: 'Syarat dan Ketentuan ',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.orange,
                      fontWeight: AppText.medium,
                      fontSize: 12),
                ),
                TextSpan(
                  text: 'serta ',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.black.withOpacity(0.5),
                      fontWeight: AppText.medium,
                      fontSize: 12),
                ),
                TextSpan(
                  text: 'Kebijakan Privasi ',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.orange,
                      fontWeight: AppText.medium,
                      fontSize: 12),
                ),
                TextSpan(
                  text: 'yang ditetapkan oleh Pundi ',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.black.withOpacity(0.5),
                      fontWeight: AppText.medium,
                      fontSize: 12),
                ),
              ])),
            ],
          ));
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 42),
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColor.halloweenOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Text(
                  'Daftar',
                  style: AppText.textMedium.copyWith(
                      color: AppColor.white,
                      fontWeight: AppText.medium,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun? ',
                  style: AppText.textNormal.copyWith(
                      color: AppColor.black.withOpacity(0.5),
                      fontWeight: AppText.medium,
                      fontSize: 12),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Masuk',
                      style: AppText.textMedium.copyWith(
                        color: AppColor.halloweenOrange,
                        fontWeight: AppText.semiBold,
                        fontSize: 12,
                      ),
                    )),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              nomorhpInput(),
              emailInput(),
              namalengkapInput(),
              passwordInput(),
              Spacer(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
