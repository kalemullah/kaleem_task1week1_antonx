import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1task/UI/screens/home_screen.dart';
import '../../../core/colors.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_textfield.dart';



class SigInScreen extends StatefulWidget {
  const SigInScreen({Key? key}) : super(key: key);

  @override
  _siginState createState() => _siginState();
}
String? name;
String? email;
String? password;
String? newPassword;
final _form = GlobalKey<FormState>();

class _siginState extends State<SigInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Form(
          key: _form,
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(left: 25.w,top: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_back_ios),
                  SizedBox(
                    height: 80.h,
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Log in to Muz ",
                    style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.w700,),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    "Email address",
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600,color: lightBlackColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                      text: 'kaleem@gmail.com',
                      obscr: false,
                      onSubmmite: (value) {
                        email = value;
                      }),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600,color: lightBlackColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                      text: '**********',
                      obscr: true,
                      onSubmmite: (value) {
                        password = value;
                      }),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Forgot password",
                        style: TextStyle(
                          color: buttonColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  BottomButton(
                    text: 'Log In',
                    color: bottomButtonColor,
                    buttomcolor: blackColor,
                   // onPressed: (){},
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  WarsZaWaScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

