// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets.login_signup/form_divider.dart';
import 'package:t_store/common/widgets.login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../../utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Form
              TSignupForm(dark: dark),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Divider
              TFormDivider(
                dividerText: TTexts.orSignUpWith.capitalize!,
                dark: dark,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


