

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({super.key});

  final loginVM = Get.put(LoginViewModel()) ;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      obscureText: true,
      validator: (value){
        if(value!.isEmpty){
          Utils.snackBar('Password', 'Enter password');
        }
        return null;
      },
      onFieldSubmitted: (value){

      },
      decoration: InputDecoration(
          hintText: 'password',
          border: OutlineInputBorder()
      ),
    );
  }
}
