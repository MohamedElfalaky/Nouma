import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:project/endpoint.dart';
import 'package:project/models/permeim_model.dart';
import 'package:project/models/special_id_model.dart';
import 'package:project/network/cache_helper.dart';
import 'package:project/shopStates.dart';
import 'package:project/utils/constants.dart';

import 'dioHelper.dart';
import 'models/frames_model.dart';
import 'models/get_wallet_model.dart';
import 'models/myBackground_model.dart';
import 'models/perimem_puchase_model.dart';
import 'models/shop_background_mode.dart';
import 'models/shop_intres_model.dart';
import 'models/shop_purchase_model.dart';
import 'models/showLocks_model.dart';
import 'models/specialRoomID_model.dart';

class ShopCubit extends Cubit<ShopIntresStates> {
  ShopCubit() : super(ShopCubitIntialStates());
  static ShopCubit get(context) => BlocProvider.of(context);
  String fimage = "";

  GetWalletModel getWalletModel;
  void getWalletAmount() {
    DioHelper.getdata(
            url: "$getwallet/${CacheHelper.getData(key: "id")}", token: token)
        .then((value) {
      getWalletModel = GetWalletModel.fromJson(value.data);
      // print(value.data);
      emit(WalletSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(WalletErrorStates(error.toString()));
    });
  }

  IntresModel intresModel;
  void getIntresData() {
    emit(ShopIntresLoadingState());

    DioHelper.getdata(url: shopintre, token: token).then((value) {
      intresModel = IntresModel.fromJson(value.data);
      print(value.data);
      emit(ShopIntresSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(ShopIntresErrorStates(error.toString()));
    });
  }

  FramesModel framesModel;
  void getFramesData() {
    emit(FrameLoadingState());

    DioHelper.getdata(url: frame, token: token).then((value) {
      framesModel = FramesModel.fromJson(value.data);
      print(value.data);
      emit(FrameSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(FrameErrorStates(error.toString()));
    });
  }

  BackgroundModel backgroundModel;
  void getBackgroundData() {
    emit(BackgroundLoadingStates());

    DioHelper.getdata(url: background, token: token).then((value) {
      backgroundModel = BackgroundModel.fromJson(value.data);
      print(value.data);
      emit(BackgroundSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(BackgroundErrorStates(error.toString()));
    });
  }

  MyBackgroundModel myBackgroundModel;
  void myBackgroundData() {
    emit(MyBackgroundLoadingStates());

    DioHelper.getdata(url: mybackground, token: token).then((value) {
      myBackgroundModel = MyBackgroundModel.fromJson(value.data);
      print(value.data);
      emit(MyBackgroundSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(MyBackgroundErrorStates(error));
    });
  }

  MyBackgroundModel myIntresModel;
  void myIntesData() {
    emit(MyIntesLoadingStates());

    DioHelper.getdata(url: myinters, token: token).then((value) {
      myIntresModel = MyBackgroundModel.fromJson(value.data);
      print(value.data);
      emit(MyIntesSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(MyIntesErrorStates(error));
    });
  }

  ShopPurchaseModel shopPurchaseModel;

  void shopPurchase({@required id}) {
    emit(ShopPurchaseLoadingStates());
    // print(giftID);
    DioHelper.getdata(url: 'shop-purchase/$id', token: token).then((value) {
      shopPurchaseModel = ShopPurchaseModel.fromJson(value.data);
      print(value.data);
      emit(ShopPurchaseSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(ShopPurchaseErrorStates(error));
    });
  }

  void purchasePersonalID({@required id}) {
    emit(PersonalPurchaseIDLoadingStates());
    print(id);
    DioHelper.getdata(url: 'special-id/$id', token: token).then((value) {
      // shopPurchaseModel = ShopPurchaseModel.fromJson(value.data);
      print(value.data);
      emit(PersonalPurchaseIDSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(PersonalPurchaseIDErrorStates(error));
    });
  }

  void purchaseRoomlID({@required id}) {
    emit(PersonalPurchaseIDLoadingStates());
    print(id);
    DioHelper.getdata(url: 'special-ids-room/$id', token: token).then((value) {
      // shopPurchaseModel = ShopPurchaseModel.fromJson(value.data);
      print(value.data);
      emit(PersonalPurchaseIDSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(PersonalPurchaseIDErrorStates(error));
    });
  }

  SpecialIDModel specialIDModel;
  void mySpecialID() {
    emit(SpecialIDLoadingStates());

    DioHelper.getdata(url: specialid, token: token).then((value) {
      specialIDModel = SpecialIDModel.fromJson(value.data);
      print(value.data);
      print(specialIDModel.data.first.id);
      emit(SpecialIDSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(SpecialIDErrorStates(error.toString()));
    });
  }

  SpecialRoomIDModel specialRoomIDModel;
  void specialRoomID() {
    emit(SpecialRoomIDLoadingStates());

    DioHelper.getdata(url: specialRoomid, token: token).then((value) {
      specialRoomIDModel = SpecialRoomIDModel.fromJson(value.data);
      print(value.data);
      // print(specialIDModel.data.first.id);
      emit(SpecialRoomIDSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(SpecialRoomIDErrorStates(error.toString()));
    });
  }

  PermiemModel permiemModel;
  void getPermiemData() {
    emit(PermemLoadingState());

    DioHelper.getdata(url: permiem, token: token).then((value) {
      permiemModel = PermiemModel.fromJson(value.data);
      print(value.data);
      emit(PermemSuccessStates(permiemModel));
    });
    // .catchError((error) {
    //   print("this is the error::: $error");
    //   emit(PermemErrorStates(error.toString()));
    // });
  }

  PermiemPurchaseModel permiemPurchaseModel;
  void buyPermiemData({@required id}) {
    emit(BuyPermemLoadingState());
    DioHelper.postdata(url: buypermiem, token: token, data: {'id': id})
        .then((value) {
      print(value.data);
      permiemPurchaseModel = PermiemPurchaseModel.fromJson(value.data);

      emit(BuyPermemSuccessStates());
    }).catchError((error) {
      emit(BuyPermemErrorStates(error.toString()));
    });
  }

  ShowLocksModel showLocksModel;
  void showLocks() {
    emit(RoomLocksLoadingState());
    DioHelper.getdata(url: roomlocks, token: token).then((value) {
      showLocksModel = ShowLocksModel.fromJson(value.data);
      print(value.data);
      emit(RoomLocksSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(RoomLocksErrorStates(error));
    });
  }

  void lockPurchase({@required id}) {
    emit(LockPurchaseLoadingState());
    DioHelper.getdata(url: 'room-locks/$id', token: token).then((value) {
      print(value.data);
      emit(LockPurchaseSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(LockPurchaseErrorStates(error));
    });
  }
}
