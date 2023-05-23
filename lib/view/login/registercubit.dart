import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:project/common_functions.dart';
import 'package:project/dioHelper.dart';
import 'package:project/endpoint.dart';
import 'package:project/models/auth_model.dart';
import 'package:project/models/create_user_model.dart';
import 'package:project/models/register_model.dart';
import 'package:project/utils/constants.dart';
import 'package:project/view/login/login_view.dart';
import 'package:project/view/login/registerstates.dart';

class RegisterScreenCubit extends Cubit<RegisterAppStates> {
  RegisterScreenCubit() : super(RegistercubitIntialStates());
  static RegisterScreenCubit get(context) => BlocProvider.of(context);
  RegisterModel registerModel;

  void userRegister(
      {@required password,
      @required name,
      @required phone,
      @required confirmpassword}) {
    emit(ShopRegisterLoadingState());
    DioHelper.postdata(url: register, data: {
      'password': password,
      'password_confirmation': confirmpassword,
      'name': name,
      'mobile': phone,
      'fcm_token': fcm_token,
    }).then((value) {
      print(value.data);
      registerModel = RegisterModel.fromJson(value.data);

      emit(ShopRegisterSuccessStates(registerModel));
      //  emit(ShopRegisterSuccessStates(RegisterModel));
    }).catchError((error) {
      emit(ShopRegisterErrorStates(error.toString()));
    });
  }

  // void creatUser({@required name, @required phone, @required uid}) {
  //   print("ok");
  //   CreateUserModel model = CreateUserModel(name: name, phone: phone, uid: uid);

  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(uid)
  //       .set(model.toMap())
  //       .then((value) {
  //     emit(CreateUserSuccessState());
  //   }).catchError((error) {
  //     emit(CreateUserErrorState(error.toString()));
  //   });
  // }
}
