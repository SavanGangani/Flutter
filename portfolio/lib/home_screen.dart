import 'package:flutter/material.dart';
import 'package:portfolio/section/contact_section.dart';
import 'package:portfolio/section/feedback_section.dart';
import 'package:portfolio/section/top_section.dart';
import 'package:portfolio/section/about_section.dart';
import 'package:portfolio/section/skill_section.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopSection(),
            AboutSection(),
            SkillSection(),
            FeedbackSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
