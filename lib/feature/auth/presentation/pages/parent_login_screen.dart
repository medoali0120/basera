import 'package:basera/core/resources/assets_manager.dart';
import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/font_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/utils/validators.dart';
import 'package:basera/core/widgets/custom_elevated_button.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/main_text_field.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:basera/feature/auth/presentation/widgets/custom_sign_text.dart';
import 'package:basera/feature/auth/presentation/widgets/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ParentLoginScreen extends StatefulWidget {
  const ParentLoginScreen({super.key});

  @override
  State<ParentLoginScreen> createState() => _ParentLoginScreenState();
}

class _ParentLoginScreenState extends State<ParentLoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();

    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(ImageAssets.basseraLogo),
                  HeightSpace(24),
                  Text(
                    "Welcome Back",
                    style: StylesManager.headerSignLine().copyWith(
                      color: ColorManager.babyBlue,
                    ),
                  ),
                  HeightSpace(16),
                  Text(
                    "Access smart monitoring, real-time alerts,\n and AI-powered protection for your family.",
                    style: StylesManager.mediumLine().copyWith(
                      fontSize: FontSize.s16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  HeightSpace(24),

                  BuildTextField(
                    prefixIcon: SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: Center(
                        child: SvgPicture.asset(
                          SvgAssets.mail,
                          width: 20.w,
                          height: 20.h,
                        ),
                      ),
                    ),
                    borderradius: 16.r,
                    borderBackgroundColor: ColorManager.grey,
                    hint: 'enter your email address',
                    backgroundColor: ColorManager.primary,
                    label: 'Email',
                    validation: AppValidators.validateEmail,
                    textInputType: TextInputType.emailAddress,
                  ),
                  HeightSpace(24),
                  BuildTextField(
                    prefixIcon: SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: Center(
                        child: SvgPicture.asset(
                          SvgAssets.password,
                          width: 20.w,
                          height: 20.h,
                        ),
                      ),
                    ),
                    borderradius: 16.r,
                    borderBackgroundColor: ColorManager.grey,
                    hint: 'enter your password',
                    backgroundColor: ColorManager.primary,
                    label: 'password',
                    validation: AppValidators.validatePassword,
                    isObscured: true,
                    textInputType: TextInputType.text,
                  ),
                  HeightSpace(24),
                  MainAppButton(
                    borderRadius: 8.r,
                    textStyle: StylesManager.mediumLine().copyWith(
                      color: ColorManager.white,
                    ),
                    onTap: () {
                      _login();
                    },
                    text: 'Create Account',
                  ),
                  HeightSpace(24),
                  DividerWidget(),
                  HeightSpace(16),
                  CustomElevatedButton(
                    prefixIcon: SvgPicture.asset(SvgAssets.googleIcon),

                    onTap: () {},
                    label: 'Continue with Google',
                    isStadiumBorder: false,
                  ),
                  HeightSpace(24),
                  CustomSignText(isSignIn: true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _login() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
  }
}
