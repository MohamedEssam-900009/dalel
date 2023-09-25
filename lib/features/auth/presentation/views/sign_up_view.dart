import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/have_an_account_widget.dart';
import '../widgets/terms_and_condition.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 152.0,
              ),
            ),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16.0,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.firstName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.emailAddress,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.password,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConditionWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 88.0,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomButton(
                text: AppStrings.signUp,
                onPressed: () {},
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16.0,
              ),
            ),
            const SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
