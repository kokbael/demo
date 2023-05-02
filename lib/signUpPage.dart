import 'package:demo/controller/firestore_controller.dart';
import 'package:demo/renderTextFormField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/auth_controller.dart';
import 'package:kpostal/kpostal.dart';

//이용약관도 넣어야함
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _subPasswordFocus = FocusNode();
  final FocusNode _userNameFocus = FocusNode();
  final FocusNode _phoneNumberFocus = FocusNode();
  // final FocusNode _addressFocus = FocusNode();
  final FocusNode _subAddressFocus = FocusNode();

  void _unFocus() {
    _emailFocus.unfocus();
    _passwordFocus.unfocus();
    _subPasswordFocus.unfocus();
    _userNameFocus.unfocus();
    _phoneNumberFocus.unfocus();
    // _addressFocus.unfocus();
    _subAddressFocus.unfocus();
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _subPasswordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _subAddressController = TextEditingController();
  String? _address;

  @override
  Widget build(BuildContext context) {
    Get.put(FireStoreController());
    return GestureDetector(
      onTap: () {
        _unFocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '회원가입',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                renderTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  focusNode: _emailFocus,
                  minLines: 1,
                  label: 'Email',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Email을 입력하세요.';
                    }
                  },
                ),
                renderTextFormField(
                  controller: _passwordController,
                  textInputAction: TextInputAction.next,
                  focusNode: _passwordFocus,
                  obscureText: true,
                  minLines: 1,
                  label: '비밀번호',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return '비밀번호를 입력하세요.';
                    }
                  },
                ),
                renderTextFormField(
                  controller: _subPasswordController,
                  textInputAction: TextInputAction.next,
                  focusNode: _subPasswordFocus,
                  minLines: 1,
                  obscureText: true,
                  label: '비밀번호 확인',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return '비밀번호 확인을 입력하세요.';
                    }
                    if (val != _passwordController.text.trim()) {
                      return 'password가 일치하지 않습니다.';
                    }
                  },
                ),
                renderTextFormField(
                  controller: _userNameController,
                  textInputAction: TextInputAction.next,
                  focusNode: _userNameFocus,
                  minLines: 1,
                  label: '이름',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return '이름을 입력하세요.';
                    }
                  },
                ),
                renderTextFormField(
                  keyboardType: TextInputType.number,
                  controller: _phoneNumberController,
                  textInputAction: TextInputAction.next,
                  focusNode: _phoneNumberFocus,
                  minLines: 1,
                  label: '휴대폰 번호',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return '휴대폰 번호를 입력하세요.';
                    }
                  },
                ),
                renderTextFormField(
                  readOnly: true,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => KpostalView(
                          useLocalServer: true,
                          localPort: 38628,
                          callback: (Kpostal result) {
                            setState(() {
                              _address = result.address;
                            });
                          },
                        ),
                      ),
                    );
                  },
                  minLines: 1,
                  label: '주소',
                  hintText: (_address == null ? '터치 후 주소를 검색해주세요.' : '$_address'),
                  validator: (val) {
                    if (_address == null) return '주소를 입력해주세요.';
                  },
                ),
                renderTextFormField(
                  controller: _subAddressController,
                  textInputAction: TextInputAction.done,
                  focusNode: _subAddressFocus,
                  minLines: 1,
                  label: '상세 주소',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: InkWell(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                        try {
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim());
                        } catch (e) {
                          print(e);
                          // Get.snackbar(
                          //   "Error message",
                          //   "User message",
                          //   backgroundColor: Colors.red,
                          //   snackPosition: SnackPosition.BOTTOM,
                          //   titleText: Text(
                          //     "회원가입 실패",
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          //   messageText: Text(
                          //     e.toString(),
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          // );
                        }
                      }
                      if (_emailController.text.trim().isNotEmpty &&
                          _passwordController.text.trim().isNotEmpty &&
                          _phoneNumberController.text.trim().isNotEmpty &&
                          _userNameController.text.trim().isNotEmpty &&
                          _subPasswordController.text.trim().isNotEmpty &&
                          _address!.isNotEmpty) {
                        await FireStoreController.instance.addUserinfo(
                          Email: _emailController.text.trim(),
                          name: _userNameController.text.trim(),
                          phone: _phoneNumberController.text.trim(),
                          address: _address!,
                          subAddress: _subAddressController.text.trim(), // null 이면 '' 를 반환
                        );
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration:
                          BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          '회원가입',
                          style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
