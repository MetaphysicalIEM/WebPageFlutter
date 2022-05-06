import 'package:flutter/material.dart';
import 'package:webflutter/Pages/sign_page.dart';

void main() {
  return runApp(MaterialApp(
    home: SignPage(
      isSignUpPage: true,
    ),
  ));
}
