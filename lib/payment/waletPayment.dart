import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:project/payment/ResponserPayment.dart';
import 'package:project/payment/visaPayment.dart';

class WalletPayment extends StatefulWidget {
  String coins;
  WalletPayment({this.coins, Key key}) : super(key: key);

  @override
  State<WalletPayment> createState() => _WalletPaymentState();
}

class _WalletPaymentState extends State<WalletPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "الشحن عن طريق الوكلاء",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onTap: () {
                              Get.to(ResponserPayment());
                            },
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Text(
                                  "الشحن عن طريق الفيزا",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onTap: () {
                              Get.to(VisaPayment(
                                coins: widget.coins,
                              ));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.stretch,
          //     children: <Widget>[
          //       Expanded(
          //         child: Container(
          //           color: Colors.purple,
          //         ),
          //       ),
          //       Expanded(
          //         child: Container(
          //           color: Colors.black,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
