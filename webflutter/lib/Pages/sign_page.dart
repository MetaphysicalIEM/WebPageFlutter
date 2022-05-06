import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  final bool isSignUpPage;
  const SignPage({required this.isSignUpPage, Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const String image = 'assets/images/image-sign.gif';
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTextFieldTemplate(null, '', '', size.width * 0.2),
              _buildTextFieldTemplate(null, '', '', size.width * 0.2),
              _buildTextFieldTemplate(null, '', '', size.width * 0.2),
              widget.isSignUpPage
                  ? _buildTextFieldTemplate(null, '', '', size.width * 0.2)
                  : const SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      onPressed: () {
                        debugPrint('Press button');
                      },
                      child: Text(
                        widget.isSignUpPage ? 'Sign up' : 'Sign in',
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(width: 20),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      onPressed: () {
                        debugPrint('Press button');
                      },
                      child: Text(
                        widget.isSignUpPage
                            ? 'I want to sign in'
                            : 'I want to sign up',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              const SizedBox(),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldTemplate(TextEditingController? _control,
      String? labelTextpara, String? hintTextpara, double space) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20, right: space, left: space),
      child: Container(
        color: Colors.black.withOpacity(0.5),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          controller: _control,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.0),
            ),
            border: OutlineInputBorder(),
            labelStyle: TextStyle(
                color: Colors.white, backgroundColor: Colors.transparent),
            labelText: labelTextpara,
            hintStyle: TextStyle(color: Colors.white54),
            hintText: hintTextpara,
          ),
        ),
      ),
    );
  }
}
