import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:halpay/shared/theme/app_colors.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../theme/text_styles.dart';
import '../widgets/app_appbar.dart';

class PinCodeSharedScreen extends ConsumerWidget {
  final double appbarHeight;
  final double appbarElevation;
  final Widget? appbarTitle;
  final Widget? bottomAppbar;
  final CrossAxisAlignment bottomAppbarCrossAxisAlignment;
  final MainAxisAlignment bottomAppbarMainAxisAlignment;
  final Color appbarBackgroundColor;
  final BorderSide appbarBottomBorderSide;
  final Widget? topPinCode;
  final Widget? bottomPinCode;
  final Function(String)? onCompleted;

  const PinCodeSharedScreen({
    super.key,
    this.appbarHeight=100.0,
    this.appbarElevation = 0.0,
    this.appbarTitle,
    this.bottomAppbar,
    this.bottomAppbarCrossAxisAlignment = CrossAxisAlignment.start,
    this.bottomAppbarMainAxisAlignment = MainAxisAlignment.start,
    this.appbarBackgroundColor = AppColors.appBarBackgroundGrey,
    this.appbarBottomBorderSide = const BorderSide(color: Colors.transparent,width: 1),
    this.topPinCode,
    this.bottomPinCode,
    this.onCompleted
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar:  AppAppbar(
          bottomBorderSide: appbarBottomBorderSide,
        backgroundColor: appbarBackgroundColor,
        title: appbarTitle,
        elevation: appbarElevation,
        appbarHeight: appbarHeight,
        bottomAppbar: bottomAppbar,
        bottomAppbarCrossAxisAlignment: bottomAppbarCrossAxisAlignment,
        bottomAppbarMainAxisAlignment: bottomAppbarMainAxisAlignment
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:100.0,bottom:20.0),
            child: topPinCode,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 24,
              otpFieldStyle: OtpFieldStyle(enabledBorderColor: Colors.black,focusBorderColor: Colors.black),
              style: AppTextStyles.h3,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: onCompleted,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: bottomPinCode,
          ),
        ],
      ),
    );
  }
}
