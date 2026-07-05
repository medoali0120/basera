import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:basera/core/utils/validators.dart';
import 'package:basera/core/widgets/main_botton.dart';
import 'package:basera/core/widgets/main_text_field.dart';
import 'package:basera/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInCodeWidget extends StatefulWidget {
  SignInCodeWidget({super.key});

  @override
  State<SignInCodeWidget> createState() => _SignInCodeWidgetState();
}

class _SignInCodeWidgetState extends State<SignInCodeWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController codeController = TextEditingController();
  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ShaderMask(
                shaderCallback: (bounds) =>
                    ColorManager.buttonColor.createShader(bounds),
                child: Text(
                  "Enter Pairing Code",
                  style: StylesManager.headerSignLine().copyWith(
                    color: Colors.white,
                  ),
                ),
              ),

              HeightSpace(32),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter the pairing code.",
                  style: StylesManager.descriptionLine().copyWith(
                    color: ColorManager.black,
                  ),
                ),
              ),

              HeightSpace(16),

              BuildTextField(
                controller: codeController,
                hint: "BSR-2026-X8K4",
                backgroundColor: ColorManager.white,
                borderBackgroundColor: ColorManager.grey,
                borderradius: 12.r,
                textInputType: TextInputType.text,
                validation: (value) => AppValidators.validatePairingCode(value),
              ),

              HeightSpace(24),

              Row(
                children: [
                  Expanded(
                    child: MainAppButton(
                      text: "Connect",
                      textStyle: StylesManager.mediumLine(),
                      borderRadius: 12.r,
                      onTap: () {
                        _confirm();
                        Navigator.pop(context, codeController.text);
                      },
                    ),
                  ),

                  SizedBox(width: 16.w),

                  Expanded(
                    child: MainAppButton(
                      isGradient: false,
                      text: "Cancel",
                      borderRadius: 12.r,
                      backgroundColor: Colors.white,
                      borderColor: ColorManager.babyBlue,
                      textStyle: StylesManager.mediumLine().copyWith(
                        color: ColorManager.babyBlue,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _confirm() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
  }
}
