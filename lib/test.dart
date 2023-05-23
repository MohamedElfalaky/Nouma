// // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // class ModalDropDown extends StatefulWidget {
// // // // // // // //   @override
// // // // // // // //   _ModalDropDownState createState() => _ModalDropDownState();
// // // // // // // // }

// // // // // // // // class _ModalDropDownState extends State<ModalDropDown> {
// // // // // // // //   String _selected = '';
// // // // // // // //   List<String> _items = ['A', 'B', 'C', 'D'];

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Center(
// // // // // // // //       child: Column(
// // // // // // // //         mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // //         children: <Widget>[
// // // // // // // //           RaisedButton(
// // // // // // // //             child: Text('Show Modal'),
// // // // // // // //             onPressed: () => showModal(context),
// // // // // // // //           ),
// // // // // // // //           Text('Selected item: $_selected')
// // // // // // // //         ],
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   void showModal(context) {
// // // // // // // //     showModalBottomSheet(
// // // // // // // //         context: context,
// // // // // // // //         builder: (context) {
// // // // // // // //           return Container(
// // // // // // // //             padding: EdgeInsets.all(8),
// // // // // // // //             height: 200,
// // // // // // // //             alignment: Alignment.center,
// // // // // // // //             child: ListView.separated(
// // // // // // // //                 itemCount: _items.length,
// // // // // // // //                 separatorBuilder: (context, int) {
// // // // // // // //                   return Divider();
// // // // // // // //                 },
// // // // // // // //                 itemBuilder: (context, index) {
// // // // // // // //                   return GestureDetector(
// // // // // // // //                       child: Text(_items[index]),
// // // // // // // //                       onTap: () {
// // // // // // // //                         setState(() {
// // // // // // // //                           _selected = _items[index];
// // // // // // // //                         });
// // // // // // // //                         Navigator.of(context).pop();
// // // // // // // //                       });
// // // // // // // //                 }),
// // // // // // // //           );
// // // // // // // //         });
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // // class TabBarDemo extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       body: DefaultTabController(
// // // // // // // // //         length: 3,
// // // // // // // // //         child: Scaffold(
// // // // // // // // //           appBar: AppBar(
// // // // // // // // //             backgroundColor: Colors.black,
// // // // // // // // //             bottom: TabBar(
// // // // // // // // //               indicator: BoxDecoration(
// // // // // // // // //                 color: Colors.blue,
// // // // // // // // //                 borderRadius: BorderRadius.all(
// // // // // // // // //                   Radius.circular(5),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //               indicatorWeight: 5,
// // // // // // // // //               indicatorPadding: EdgeInsets.only(top: 40),
// // // // // // // // //               tabs: [
// // // // // // // // //                 Tab(icon: Icon(Icons.directions_car)),
// // // // // // // // //                 Tab(icon: Icon(Icons.directions_transit)),
// // // // // // // // //                 Tab(icon: Icon(Icons.directions_bike)),
// // // // // // // // //               ],
// // // // // // // // //             ),
// // // // // // // // //             title: Text('Tabs Demo'),
// // // // // // // // //           ),
// // // // // // // // //           body: TabBarView(
// // // // // // // // //             children: [
// // // // // // // // //               Icon(Icons.directions_car),
// // // // // // // // //               Icon(Icons.directions_transit),
// // // // // // // // //               Icon(Icons.directions_bike),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // // class MyTabbedPage extends StatefulWidget {
// // // // // // // // //   const MyTabbedPage({Key key}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   _MyTabbedPageState createState() => new _MyTabbedPageState();
// // // // // // // // // }

// // // // // // // // // class _MyTabbedPageState extends State<MyTabbedPage>
// // // // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // // // //   final List<Tab> myTabs = <Tab>[
// // // // // // // // //     new Tab(text: 'LEFT'),
// // // // // // // // //     new Tab(text: 'RIGHT'),
// // // // // // // // //   ];

// // // // // // // // //   TabController _tabController;

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     _tabController = new TabController(vsync: this, length: myTabs.length);
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   void dispose() {
// // // // // // // // //     _tabController.dispose();
// // // // // // // // //     super.dispose();
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return new Scaffold(
// // // // // // // // //       appBar: new AppBar(
// // // // // // // // //         title: new Text("Tab demo"),
// // // // // // // // //         bottom: new TabBar(
// // // // // // // // //           controller: _tabController,
// // // // // // // // //           tabs: myTabs,
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //       body: new TabBarView(
// // // // // // // // //         controller: _tabController,
// // // // // // // // //         children: myTabs.map((Tab tab) {
// // // // // // // // //           return new Center(child: new Text(tab.text));
// // // // // // // // //         }).toList(),
// // // // // // // // //       ),
// // // // // // // // //       floatingActionButton: new FloatingActionButton(
// // // // // // // // //         onPressed: () => _tabController
// // // // // // // // //             .animateTo((_tabController.index + 1) % 2), // Switch tabs
// // // // // // // // //         child: new Icon(Icons.swap_horiz),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import 'package:flutter/cupertino.dart';
// // // // // // // // // import 'package:flutter_bloc/flutter_bloc.dart';
// // // // // // // // // import 'package:naouma/models/getProfile_model.dart';
// // // // // // // // // import 'package:naouma/utils/constants.dart';
// // // // // // // // // import 'package:naouma/utils/images.dart';
// // // // // // // // // import 'package:naouma/view/home/homeCubit.dart';
// // // // // // // // // import 'package:naouma/view/home/states.dart';
// // // // // // // // // import 'package:nb_utils/nb_utils.dart';
// // // // // // // // // import 'package:get/get.dart';
// // // // // // // // // import 'package:selection_menu/selection_menu.dart';

// // // // // // // // // class TestScreen extends StatelessWidget {
// // // // // // // // //   const TestScreen({Key key}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     SelectionMenu<String>(
// // // // // // // // //       itemsList: <String>['A', 'B', 'C'],
// // // // // // // // //       onItemSelected: (String selectedItem) {
// // // // // // // // //         print(selectedItem);
// // // // // // // // //       },
// // // // // // // // //       itemBuilder:
// // // // // // // // //           (BuildContext context, String item, OnItemTapped onItemTapped) {
// // // // // // // // //         return Material(
// // // // // // // // //           child: InkWell(
// // // // // // // // //             onTap: onItemTapped,
// // // // // // // // //             child: Text(item),
// // // // // // // // //           ),
// // // // // // // // //         );
// // // // // // // // //       },
// // // // // // // // //       // other Properties...
// // // // // // // // //     );
// // // // // // // // //   }
// // // // // // // // // }
// // // // // // // // // //     final size = MediaQuery.of(context).size;
// // // // // // // // // //     final theme = Theme.of(context);
// // // // // // // // // //     return BlocConsumer<HomeCubit, HomeStates>(
// // // // // // // // // //       listener: (context, state) {},
// // // // // // // // // //       builder: (context, state) {
// // // // // // // // // //         return Scaffold(
// // // // // // // // // //           appBar: AppBar(
// // // // // // // // // //             actions: <Widget>[
// // // // // // // // // //               Row(
// // // // // // // // // //                 children: [
// // // // // // // // // //                   IconButton(
// // // // // // // // // //                     icon: const Icon(Icons.edit),
// // // // // // // // // //                     tooltip: 'Show Snackbar',
// // // // // // // // // //                     onPressed: () {
// // // // // // // // // //                       // Get.to(EditProfileScreen());
// // // // // // // // // //                     },
// // // // // // // // // //                   ),
// // // // // // // // // //                 ],
// // // // // // // // // //               )
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //           body: Container(
// // // // // // // // // //             child: SingleChildScrollView(
// // // // // // // // // //               child: Column(
// // // // // // // // // //                 children: [
// // // // // // // // // //                   _profileImage(size.height),
// // // // // // // // // //                   16.height,
// // // // // // // // // //                   _infoContainer(
// // // // // // // // // //                     theme,
// // // // // // // // // //                     HomeCubit.get(context).profileModel.data.first,
// // // // // // // // // //                   ),
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //         );
// // // // // // // // // //       },
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget _profileImage(
// // // // // // // // // //     double height,
// // // // // // // // // //   ) {
// // // // // // // // // //     return Stack(
// // // // // // // // // //       children: [
// // // // // // // // // //         Container(
// // // // // // // // // //           color: kPrimaryColor,
// // // // // // // // // //           margin: const EdgeInsets.only(bottom: 35),
// // // // // // // // // //           width: double.infinity,
// // // // // // // // // //           height: height * 0.20,

// // // // // // // // // //           // child: Image.asset("name"),
// // // // // // // // // //         ),
// // // // // // // // // //         Container(
// // // // // // // // // //           height: 170,
// // // // // // // // // //           child: Align(
// // // // // // // // // //             alignment: Alignment.bottomCenter,
// // // // // // // // // //             child: CircleAvatar(
// // // // // // // // // //               backgroundImage: AssetImage(kDefaultProfileImage),
// // // // // // // // // //               backgroundColor: kPrimaryColor,
// // // // // // // // // //               radius: 35,
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //         ),
// // // // // // // // // //       ],
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget _infoContainer(ThemeData theme, ProfileData model) {
// // // // // // // // // //     return Container(
// // // // // // // // // //       child: Column(
// // // // // // // // // //         children: [
// // // // // // // // // //           Text(model.name),
// // // // // // // // // //           6.height,
// // // // // // // // // //           Text(
// // // // // // // // // //             model.userId,
// // // // // // // // // //           ),
// // // // // // // // // //           8.height,
// // // // // // // // // //           Row(
// // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //             children: [
// // // // // // // // // //               Container(
// // // // // // // // // //                 padding:
// // // // // // // // // //                     const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
// // // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // // //                   color: Colors.green,
// // // // // // // // // //                   borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // //                 ),
// // // // // // // // // //                 child: Text(
// // // // // // // // // //                   "LV.25",
// // // // // // // // // //                   style:
// // // // // // // // // //                       theme.textTheme.bodyText1.copyWith(color: Colors.white),
// // // // // // // // // //                 ),
// // // // // // // // // //               ),
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: 10,
// // // // // // // // // //               ),
// // // // // // // // // //               Container(
// // // // // // // // // //                   padding: const EdgeInsets.symmetric(
// // // // // // // // // //                       vertical: 2.0, horizontal: 4.0),
// // // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // // //                     color: Colors.green,
// // // // // // // // // //                     borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // //                   ),
// // // // // // // // // //                   child: Row(
// // // // // // // // // //                     children: [
// // // // // // // // // //                       Text(
// // // // // // // // // //                         "LV.25",
// // // // // // // // // //                         style: theme.textTheme.bodyText1
// // // // // // // // // //                             .copyWith(color: Colors.white),
// // // // // // // // // //                       ),
// // // // // // // // // //                       Icon(
// // // // // // // // // //                         Icons.bookmark_border_outlined,
// // // // // // // // // //                         color: Colors.white,
// // // // // // // // // //                         size: 16,
// // // // // // // // // //                       )
// // // // // // // // // //                     ],
// // // // // // // // // //                   )),
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: 10,
// // // // // // // // // //               ),
// // // // // // // // // //               Container(
// // // // // // // // // //                 padding:
// // // // // // // // // //                     const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
// // // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // // //                   color: Colors.green,
// // // // // // // // // //                   borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // //                 ),
// // // // // // // // // //                 child: Row(children: [
// // // // // // // // // //                   Text(
// // // // // // // // // //                     "مصر",
// // // // // // // // // //                     style:
// // // // // // // // // //                         theme.textTheme.bodyText1.copyWith(color: Colors.white),
// // // // // // // // // //                   ),
// // // // // // // // // //                   Icon(
// // // // // // // // // //                     Icons.location_on_outlined,
// // // // // // // // // //                     color: Colors.white,
// // // // // // // // // //                     size: 16,
// // // // // // // // // //                   )
// // // // // // // // // //                 ]),
// // // // // // // // // //               ),
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //           6.height,
// // // // // // // // // //           Row(
// // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // //             children: [
// // // // // // // // // //               Text(
// // // // // // // // // //                 "الملف الشخصي فارغ",
// // // // // // // // // //               ),
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //           8.height,
// // // // // // // // // //           Padding(
// // // // // // // // // //             padding: const EdgeInsets.all(20.0),
// // // // // // // // // //             child: Row(
// // // // // // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // // // // //               children: [
// // // // // // // // // //                 Column(
// // // // // // // // // //                   children: [
// // // // // // // // // //                     Text("1"),
// // // // // // // // // //                     4.height,
// // // // // // // // // //                     Text("زار"),
// // // // // // // // // //                   ],
// // // // // // // // // //                 ),
// // // // // // // // // //                 Column(
// // // // // // // // // //                   children: [
// // // // // // // // // //                     Text("0"),
// // // // // // // // // //                     4.height,
// // // // // // // // // //                     Text("متابعة"),
// // // // // // // // // //                   ],
// // // // // // // // // //                 ),
// // // // // // // // // //                 Column(
// // // // // // // // // //                   children: [
// // // // // // // // // //                     Text("0"),
// // // // // // // // // //                     4.height,
// // // // // // // // // //                     Text("متابعين"),
// // // // // // // // // //                   ],
// // // // // // // // // //                 ),
// // // // // // // // // //               ],
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           SizedBox(
// // // // // // // // // //             height: 50,
// // // // // // // // // //           ),
// // // // // // // // // //           Column(
// // // // // // // // // //             children: [
// // // // // // // // // //               Divider(),
// // // // // // // // // //               Row(
// // // // // // // // // //                 children: [
// // // // // // // // // //                   Expanded(
// // // // // // // // // //                     child: Container(
// // // // // // // // // //                       child: Padding(
// // // // // // // // // //                         padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                         child: Text("الشارة"),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   Spacer(),
// // // // // // // // // //                   Padding(
// // // // // // // // // //                     padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                     child: Icon(Icons.arrow_forward),
// // // // // // // // // //                   )
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //               Divider(),
// // // // // // // // // //               Row(
// // // // // // // // // //                 children: [
// // // // // // // // // //                   Expanded(
// // // // // // // // // //                     child: Container(
// // // // // // // // // //                       child: Padding(
// // // // // // // // // //                         padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                         child: Text("الغرف"),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   Spacer(),
// // // // // // // // // //                   Padding(
// // // // // // // // // //                     padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                     child: Icon(Icons.arrow_forward),
// // // // // // // // // //                   )
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //               Divider(),
// // // // // // // // // //               Row(
// // // // // // // // // //                 children: [
// // // // // // // // // //                   Expanded(
// // // // // // // // // //                     child: Container(
// // // // // // // // // //                       child: Padding(
// // // // // // // // // //                         padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                         child: Text("اللحظات"),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   Padding(
// // // // // // // // // //                     padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                     child: Icon(Icons.arrow_forward),
// // // // // // // // // //                   )
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //               Divider(),
// // // // // // // // // //               Row(
// // // // // // // // // //                 children: [
// // // // // // // // // //                   Expanded(
// // // // // // // // // //                     child: Container(
// // // // // // // // // //                       child: Padding(
// // // // // // // // // //                         padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                         child: Text("الهدايا"),
// // // // // // // // // //                       ),
// // // // // // // // // //                     ),
// // // // // // // // // //                   ),
// // // // // // // // // //                   Padding(
// // // // // // // // // //                     padding: const EdgeInsets.all(8.0),
// // // // // // // // // //                     child: Icon(Icons.arrow_forward),
// // // // // // // // // //                   )
// // // // // // // // // //                 ],
// // // // // // // // // //               ),
// // // // // // // // // //             ],
// // // // // // // // // //           )
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }

// // // // // // // // // //   Widget _personalInfo(double width) {
// // // // // // // // // //     return Container(
// // // // // // // // // //       child: Column(
// // // // // // // // // //         children: [
// // // // // // // // // //           Container(
// // // // // // // // // //             width: double.infinity,
// // // // // // // // // //             padding:
// // // // // // // // // //                 const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
// // // // // // // // // //             decoration: BoxDecoration(
// // // // // // // // // //               color: Colors.grey,
// // // // // // // // // //             ),
// // // // // // // // // //             child: Text(
// // // // // // // // // //               "المعلومات الشخصية",
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           16.height,
// // // // // // // // // //           Row(
// // // // // // // // // //             children: [
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: width / 3,
// // // // // // // // // //                 child: Text(""),
// // // // // // // // // //               ),
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: width / 3 - 28,
// // // // // // // // // //                 child: Text(""),
// // // // // // // // // //               )
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //           Divider(),
// // // // // // // // // //           10.height,
// // // // // // // // // //           Row(
// // // // // // // // // //             children: [
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: width / 3,
// // // // // // // // // //                 child: Text(""),
// // // // // // // // // //               ),
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: width / 3 - 28,
// // // // // // // // // //                 child: Text(""),
// // // // // // // // // //               )
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //           Divider(),
// // // // // // // // // //           10.height,
// // // // // // // // // //           Row(
// // // // // // // // // //             children: [
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: width / 3,
// // // // // // // // // //                 child: Text(""),
// // // // // // // // // //               ),
// // // // // // // // // //               SizedBox(
// // // // // // // // // //                 width: width / 3 - 28,
// // // // // // // // // //                 child: Text(""),
// // // // // // // // // //               ),
// // // // // // // // // //             ],
// // // // // // // // // //           ),
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'package:flutter/cupertino.dart';
// // // // // // // // // // // import 'package:naouma/utils/constants.dart';
// // // // // // // // // // // import 'package:naouma/utils/images.dart';
// // // // // // // // // // // import 'package:nb_utils/nb_utils.dart';

// // // // // // // // // // // class ProfileScreen extends StatelessWidget {
// // // // // // // // // // //   const ProfileScreen({Key key}) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     final size = MediaQuery.of(context).size;
// // // // // // // // // // //     final theme = Theme.of(context);
// // // // // // // // // // //     return BlocConsumer<HomeCubit, HomeStates>(builder: (context, state){
// // // // // // // // // // //       return  ListView.builder(ITE,itemBuilder: (BuildContext context, int index)=>)
// // // // // // // // // // //     }, listener: (context, state) {});
// // // // // // // // // // //      Scaffold(
// // // // // // // // // // //       appBar: AppBar(
// // // // // // // // // // //         title: Text("الملف الشخصي"),
// // // // // // // // // // //       ),
// // // // // // // // // // //       body: Container(
// // // // // // // // // // //         child: SingleChildScrollView(
// // // // // // // // // // //           child: Column(
// // // // // // // // // // //             children: [
// // // // // // // // // // //               _profileImage(size.height),
// // // // // // // // // // //               16.height,
// // // // // // // // // // //               _infoContainer(theme),
// // // // // // // // // // //               16.height,
// // // // // // // // // // //               _infoContainer(theme),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _profileImage(
// // // // // // // // // // //     double height,
// // // // // // // // // // //   ) {
// // // // // // // // // // //     return Stack(
// // // // // // // // // // //       children: [
// // // // // // // // // // //         // Container(
// // // // // // // // // // //         //   margin: const EdgeInsets.only(bottom: 35),
// // // // // // // // // // //         //   width: double.infinity,
// // // // // // // // // // //         //   height: height * 0.25,
// // // // // // // // // // //         //   child: Image.asset("name"),
// // // // // // // // // // //         // ),
// // // // // // // // // // //         Align(
// // // // // // // // // // //           alignment: Alignment.bottomCenter,
// // // // // // // // // // //           child: CircleAvatar(
// // // // // // // // // // //             backgroundImage: AssetImage(kDefaultProfileImage),
// // // // // // // // // // //             backgroundColor: kPrimaryColor,
// // // // // // // // // // //             radius: 35,
// // // // // // // // // // //           ),
// // // // // // // // // // //         ),
// // // // // // // // // // //       ],
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _infoContainer(ThemeData theme) {
// // // // // // // // // // //     return Container(
// // // // // // // // // // //       child: Column(
// // // // // // // // // // //         children: [
// // // // // // // // // // //           Text(
// // // // // // // // // // //             "محمود عبدالمجيد",
// // // // // // // // // // //           ),
// // // // // // // // // // //           6.height,
// // // // // // // // // // //           Text(
// // // // // // // // // // //             "ID: 632145852",
// // // // // // // // // // //           ),
// // // // // // // // // // //           8.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Container(
// // // // // // // // // // //                 padding:
// // // // // // // // // // //                     const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
// // // // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // // // //                   color: Colors.green,
// // // // // // // // // // //                   borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 child: Text(
// // // // // // // // // // //                   "LV.25",
// // // // // // // // // // //                   style:
// // // // // // // // // // //                       theme.textTheme.bodyText1.copyWith(color: Colors.white),
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ),
// // // // // // // // // // //               Container(
// // // // // // // // // // //                   padding: const EdgeInsets.symmetric(
// // // // // // // // // // //                       vertical: 2.0, horizontal: 4.0),
// // // // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // // // //                     color: Colors.green,
// // // // // // // // // // //                     borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                   child: Row(
// // // // // // // // // // //                     children: [
// // // // // // // // // // //                       Text(
// // // // // // // // // // //                         "LV.25",
// // // // // // // // // // //                         style: theme.textTheme.bodyText1
// // // // // // // // // // //                             .copyWith(color: Colors.white),
// // // // // // // // // // //                       ),
// // // // // // // // // // //                       Icon(
// // // // // // // // // // //                         Icons.bookmark_border_outlined,
// // // // // // // // // // //                         color: Colors.white,
// // // // // // // // // // //                         size: 16,
// // // // // // // // // // //                       )
// // // // // // // // // // //                     ],
// // // // // // // // // // //                   )),
// // // // // // // // // // //               Container(
// // // // // // // // // // //                 padding:
// // // // // // // // // // //                     const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
// // // // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // // // //                   color: Colors.green,
// // // // // // // // // // //                   borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 child: Row(children: [
// // // // // // // // // // //                   Text(
// // // // // // // // // // //                     "تركيا",
// // // // // // // // // // //                     style:
// // // // // // // // // // //                         theme.textTheme.bodyText1.copyWith(color: Colors.white),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                   Icon(
// // // // // // // // // // //                     Icons.location_on_outlined,
// // // // // // // // // // //                     color: Colors.white,
// // // // // // // // // // //                     size: 16,
// // // // // // // // // // //                   )
// // // // // // // // // // //                 ]),
// // // // // // // // // // //               ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //           6.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Text(
// // // // // // // // // // //                 "الوصف الوصف الوصف الوصف",
// // // // // // // // // // //               ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //           8.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Column(
// // // // // // // // // // //                 children: [
// // // // // // // // // // //                   Text("88"),
// // // // // // // // // // //                   4.height,
// // // // // // // // // // //                   Text("زار"),
// // // // // // // // // // //                 ],
// // // // // // // // // // //               ),
// // // // // // // // // // //               Column(
// // // // // // // // // // //                 children: [
// // // // // // // // // // //                   Text("88"),
// // // // // // // // // // //                   4.height,
// // // // // // // // // // //                   Text("متابعة"),
// // // // // // // // // // //                 ],
// // // // // // // // // // //               ),
// // // // // // // // // // //               Column(
// // // // // // // // // // //                 children: [
// // // // // // // // // // //                   Text("22"),
// // // // // // // // // // //                   4.height,
// // // // // // // // // // //                   Text("متابعين"),
// // // // // // // // // // //                 ],
// // // // // // // // // // //               ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //         ],
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _personalInfo(double width) {
// // // // // // // // // // //     return Container(
// // // // // // // // // // //       child: Column(
// // // // // // // // // // //         children: [
// // // // // // // // // // //           Container(
// // // // // // // // // // //             width: double.infinity,
// // // // // // // // // // //             padding:
// // // // // // // // // // //                 const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
// // // // // // // // // // //             decoration: BoxDecoration(
// // // // // // // // // // //               color: Colors.grey,
// // // // // // // // // // //             ),
// // // // // // // // // // //             child: Text(
// // // // // // // // // // //               "المعلومات الشخصية",
// // // // // // // // // // //             ),
// // // // // // // // // // //           ),
// // // // // // // // // // //           16.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             children: [
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 width: width / 3,
// // // // // // // // // // //                 child: Text(""),
// // // // // // // // // // //               ),
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 width: width / 3 - 28,
// // // // // // // // // // //                 child: Text(""),
// // // // // // // // // // //               )
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //           Divider(),
// // // // // // // // // // //           10.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             children: [
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 width: width / 3,
// // // // // // // // // // //                 child: Text(""),
// // // // // // // // // // //               ),
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 width: width / 3 - 28,
// // // // // // // // // // //                 child: Text(""),
// // // // // // // // // // //               )
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //           Divider(),
// // // // // // // // // // //           10.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             children: [
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 width: width / 3,
// // // // // // // // // // //                 child: Text(""),
// // // // // // // // // // //               ),
// // // // // // // // // // //               SizedBox(
// // // // // // // // // // //                 width: width / 3 - 28,
// // // // // // // // // // //                 child: Text(""),
// // // // // // // // // // //               ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //         ],
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }
// // // // // // // // // // // }

// // // // // // // // // // // ///////////////////////////////////////////////////////////////////////

// // // // // // // // // // // import 'package:conditional_builder/conditional_builder.dart';
// // // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // // import 'package:flutter/cupertino.dart';
// // // // // // // // // // // import 'package:flutter_bloc/flutter_bloc.dart';
// // // // // // // // // // // import 'package:naouma/models/getProfile_model.dart';
// // // // // // // // // // // import 'package:naouma/utils/constants.dart';
// // // // // // // // // // // import 'package:naouma/utils/images.dart';
// // // // // // // // // // // import 'package:naouma/view/home/homeCubit.dart';
// // // // // // // // // // // import 'package:naouma/view/home/states.dart';
// // // // // // // // // // // import 'package:nb_utils/nb_utils.dart';

// // // // // // // // // // // class ProfileScreen extends StatelessWidget {
// // // // // // // // // // //   const ProfileScreen({Key key}) : super(key: key);

// // // // // // // // // // //   @override
// // // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // // //     final size = MediaQuery.of(context).size;
// // // // // // // // // // //     final theme = Theme.of(context);
// // // // // // // // // // //     return BlocConsumer<HomeCubit, HomeStates>(
// // // // // // // // // // //       listener: (context, state) {},
// // // // // // // // // // //       builder: (context, state) {
// // // // // // // // // // //         return ConditionalBuilder(
// // // // // // // // // // //           condition: HomeCubit.get(context).profileModel != null,
// // // // // // // // // // //           builder: (context) =>
// // // // // // // // // // //               buildprofile(HomeCubit.get(context).profileModel),
// // // // // // // // // // //           fallback: (context) => CircularProgressIndicator(),
// // // // // // // // // // //         );

// // // // // // // // // // //         // return Scaffold(
// // // // // // // // // // //         //   appBar: AppBar(
// // // // // // // // // // //         //     title: Text("الملف الشخصي"),
// // // // // // // // // // //         //   ),
// // // // // // // // // // //         //   body: Container(
// // // // // // // // // // //         //     child: SingleChildScrollView(
// // // // // // // // // // //         //       child: Column(
// // // // // // // // // // //         //         children: [
// // // // // // // // // // //         //           Stack(
// // // // // // // // // // //         //             alignment: const FractionalOffset(0.98, 1.12),
// // // // // // // // // // //         //             children: <Widget>[
// // // // // // // // // // //         //               new Container(
// // // // // // // // // // //         //                   height: 150,
// // // // // // // // // // //         //                   color: kPrimaryColor,
// // // // // // // // // // //         //                   child: new Column(
// // // // // // // // // // //         //                     children: <Widget>[
// // // // // // // // // // //         //                       new Container(
// // // // // // // // // // //         //                           margin: const EdgeInsets.fromLTRB(
// // // // // // // // // // //         //                               0.0, 20.0, 0.0, 0.0),
// // // // // // // // // // //         //                           child: new Column(children: <Widget>[
// // // // // // // // // // //         //                             new Row(
// // // // // // // // // // //         //                               mainAxisAlignment:
// // // // // // // // // // //         //                                   MainAxisAlignment.spaceBetween,
// // // // // // // // // // //         //                               children: <Widget>[
// // // // // // // // // // //         //                                 new Row(
// // // // // // // // // // //         //                                   children: <Widget>[
// // // // // // // // // // //         //                                     new IconButton(
// // // // // // // // // // //         //                                         icon: new Icon(
// // // // // // // // // // //         //                                           Icons.arrow_back,
// // // // // // // // // // //         //                                           color: Colors.white,
// // // // // // // // // // //         //                                         ),
// // // // // // // // // // //         //                                         onPressed: () {
// // // // // // // // // // //         //                                           Navigator.pop(
// // // // // // // // // // //         //                                               context, false);
// // // // // // // // // // //         //                                         }),
// // // // // // // // // // //         //                                   ],
// // // // // // // // // // //         //                                 ),
// // // // // // // // // // //         //                               ],
// // // // // // // // // // //         //                             ),
// // // // // // // // // // //         //                           ])),
// // // // // // // // // // //         //                     ],
// // // // // // // // // // //         //                   )),
// // // // // // // // // // //         //               Column(
// // // // // // // // // // //         //                 mainAxisAlignment: MainAxisAlignment.end,
// // // // // // // // // // //         //                 children: [
// // // // // // // // // // //         //                   Container(child: Text("")),
// // // // // // // // // // //         //                   SizedBox(
// // // // // // // // // // //         //                     height: 25,
// // // // // // // // // // //         //                   ),
// // // // // // // // // // //         //                   Row(
// // // // // // // // // // //         //                     mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //         //                     children: [
// // // // // // // // // // //         //                       Container(
// // // // // // // // // // //         //                           margin: const EdgeInsets.only(top: 15),
// // // // // // // // // // //         //                           child: _profileImage(size.height)),
// // // // // // // // // // //         //                     ],
// // // // // // // // // // //         //                   )
// // // // // // // // // // //         //                 ],
// // // // // // // // // // //         //               )
// // // // // // // // // // //         //             ],
// // // // // // // // // // //         //           ),
// // // // // // // // // // //         //           // _profileImage(size.height),
// // // // // // // // // // //         //           10.height,
// // // // // // // // // // //         //           Padding(
// // // // // // // // // // //         //             padding: const EdgeInsets.all(8.0),
// // // // // // // // // // //         //             child: _infoContainer(theme),
// // // // // // // // // // //         //           ),
// // // // // // // // // // //         //           16.height,
// // // // // // // // // // //         //           // _infoContainer(theme),
// // // // // // // // // // //         //         ],
// // // // // // // // // // //         //       ),
// // // // // // // // // // //         //     ),
// // // // // // // // // // //         //   ),
// // // // // // // // // // //         // );
// // // // // // // // // // //       },
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget buildprofile(GetProfileModel model) {
// // // // // // // // // // //     return Scaffold(
// // // // // // // // // // //       body: Container(
// // // // // // // // // // //         child: SingleChildScrollView(
// // // // // // // // // // //           child: Column(
// // // // // // // // // // //             mainAxisSize: MainAxisSize.min,
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Stack(
// // // // // // // // // // //                 alignment: const FractionalOffset(0.98, 1.12),
// // // // // // // // // // //                 children: <Widget>[
// // // // // // // // // // //                   new Container(
// // // // // // // // // // //                       height: 150,
// // // // // // // // // // //                       color: kPrimaryColor,
// // // // // // // // // // //                       child: new Column(
// // // // // // // // // // //                         mainAxisSize: MainAxisSize.min,
// // // // // // // // // // //                         children: <Widget>[
// // // // // // // // // // //                           new Container(
// // // // // // // // // // //                               margin: const EdgeInsets.fromLTRB(
// // // // // // // // // // //                                   0.0, 20.0, 0.0, 0.0),
// // // // // // // // // // //                               child: new Column(children: <Widget>[
// // // // // // // // // // //                                 new Row(
// // // // // // // // // // //                                   mainAxisAlignment:
// // // // // // // // // // //                                       MainAxisAlignment.spaceBetween,
// // // // // // // // // // //                                   children: <Widget>[
// // // // // // // // // // //                                     new Row(
// // // // // // // // // // //                                       children: <Widget>[
// // // // // // // // // // //                                         new IconButton(
// // // // // // // // // // //                                             icon: new Icon(
// // // // // // // // // // //                                               Icons.arrow_back,
// // // // // // // // // // //                                               color: Colors.white,
// // // // // // // // // // //                                             ),
// // // // // // // // // // //                                             onPressed: () {
// // // // // // // // // // //                                               // Navigator.pop(
// // // // // // // // // // //                                               //     context, false);
// // // // // // // // // // //                                             }),
// // // // // // // // // // //                                       ],
// // // // // // // // // // //                                     ),
// // // // // // // // // // //                                   ],
// // // // // // // // // // //                                 ),
// // // // // // // // // // //                               ])),
// // // // // // // // // // //                         ],
// // // // // // // // // // //                       )),
// // // // // // // // // // //                   Column(
// // // // // // // // // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // // // // // // // // //                     children: [
// // // // // // // // // // //                       Row(
// // // // // // // // // // //                         mainAxisSize: MainAxisSize.min,
// // // // // // // // // // //                         mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //                         children: [
// // // // // // // // // // //                           // Container(
// // // // // // // // // // //                           //     margin: const EdgeInsets.only(top: 15),
// // // // // // // // // // //                           //     child: _profileImage()),
// // // // // // // // // // //                         ],
// // // // // // // // // // //                       )
// // // // // // // // // // //                     ],
// // // // // // // // // // //                   )
// // // // // // // // // // //                 ],
// // // // // // // // // // //               ),
// // // // // // // // // // //               _profileImage(),
// // // // // // // // // // //               10.height,
// // // // // // // // // // //               Padding(
// // // // // // // // // // //                   padding: const EdgeInsets.all(8.0),
// // // // // // // // // // //                   child: Container(
// // // // // // // // // // //                     height: double.infinity,
// // // // // // // // // // //                     width: double.infinity,
// // // // // // // // // // //                     child: ListView.builder(
// // // // // // // // // // //                       itemBuilder: (BuildContext context, int index) {
// // // // // // // // // // //                         return _infoContainer(model.data[index],
// // // // // // // // // // //                             HomeCubit.get(context).profileModel);
// // // // // // // // // // //                       },
// // // // // // // // // // //                       itemCount: 1,
// // // // // // // // // // //                     ),
// // // // // // // // // // //                   )),
// // // // // // // // // // //               16.height,
// // // // // // // // // // //               // _infoContainer(theme),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //         ),
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   // Widget buildprofile(GetProfileModel model) => Scaffold(
// // // // // // // // // // //   //       appBar: AppBar(
// // // // // // // // // // //   //         title: Text("الملف الشخصي"),
// // // // // // // // // // //   //       ),
// // // // // // // // // // //   //       body: Container(
// // // // // // // // // // //   //         child: SingleChildScrollView(
// // // // // // // // // // //   //           child: Column(
// // // // // // // // // // //   //             children: [
// // // // // // // // // // //   //               Stack(
// // // // // // // // // // //   //                 alignment: const FractionalOffset(0.98, 1.12),
// // // // // // // // // // //   //                 children: <Widget>[
// // // // // // // // // // //   //                   new Container(
// // // // // // // // // // //   //                       height: 150,
// // // // // // // // // // //   //                       color: kPrimaryColor,
// // // // // // // // // // //   //                       child: new Column(
// // // // // // // // // // //   //                         children: <Widget>[
// // // // // // // // // // //   //                           new Container(
// // // // // // // // // // //   //                               margin: const EdgeInsets.fromLTRB(
// // // // // // // // // // //   //                                   0.0, 20.0, 0.0, 0.0),
// // // // // // // // // // //   //                               child: new Column(children: <Widget>[
// // // // // // // // // // //   //                                 new Row(
// // // // // // // // // // //   //                                   mainAxisAlignment:
// // // // // // // // // // //   //                                       MainAxisAlignment.spaceBetween,
// // // // // // // // // // //   //                                   children: <Widget>[
// // // // // // // // // // //   //                                     new Row(
// // // // // // // // // // //   //                                       children: <Widget>[
// // // // // // // // // // //   //                                         new IconButton(
// // // // // // // // // // //   //                                             icon: new Icon(
// // // // // // // // // // //   //                                               Icons.arrow_back,
// // // // // // // // // // //   //                                               color: Colors.white,
// // // // // // // // // // //   //                                             ),
// // // // // // // // // // //   //                                             onPressed: () {
// // // // // // // // // // //   //                                               Navigator.pop(context, false);
// // // // // // // // // // //   //                                             }),
// // // // // // // // // // //   //                                       ],
// // // // // // // // // // //   //                                     ),
// // // // // // // // // // //   //                                   ],
// // // // // // // // // // //   //                                 ),
// // // // // // // // // // //   //                               ])),
// // // // // // // // // // //   //                         ],
// // // // // // // // // // //   //                       )),
// // // // // // // // // // //   //                   Column(
// // // // // // // // // // //   //                     mainAxisAlignment: MainAxisAlignment.end,
// // // // // // // // // // //   //                     children: [
// // // // // // // // // // //   //                       Container(child: Text("")),
// // // // // // // // // // //   //                       SizedBox(
// // // // // // // // // // //   //                         height: 25,
// // // // // // // // // // //   //                       ),
// // // // // // // // // // //   //                       Row(
// // // // // // // // // // //   //                         mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //   //                         children: [
// // // // // // // // // // //   //                           Container(
// // // // // // // // // // //   //                               margin: const EdgeInsets.only(top: 15),
// // // // // // // // // // //   //                               child: _profileImage(size.height)),
// // // // // // // // // // //   //                         ],
// // // // // // // // // // //   //                       )
// // // // // // // // // // //   //                     ],
// // // // // // // // // // //   //                   )
// // // // // // // // // // //   //                 ],
// // // // // // // // // // //   //               ),
// // // // // // // // // // //   //               // _profileImage(size.height),
// // // // // // // // // // //   //               10.height,
// // // // // // // // // // //   //               Padding(
// // // // // // // // // // //   //                 padding: const EdgeInsets.all(8.0),
// // // // // // // // // // //   //                 child: _infoContainer(),
// // // // // // // // // // //   //               ),
// // // // // // // // // // //   //               16.height,
// // // // // // // // // // //   //               // _infoContainer(theme),
// // // // // // // // // // //   //             ],
// // // // // // // // // // //   //           ),
// // // // // // // // // // //   //         ),
// // // // // // // // // // //   //       ),
// // // // // // // // // // //   //     );

// // // // // // // // // // //   Widget _profileImage() {
// // // // // // // // // // //     return Stack(
// // // // // // // // // // //       children: [
// // // // // // // // // // //         // Container(
// // // // // // // // // // //         //   margin: const EdgeInsets.only(bottom: 35),
// // // // // // // // // // //         //   width: double.infinity,
// // // // // // // // // // //         //   // height: height * 0.5,
// // // // // // // // // // //         //   // child: Image.asset("name"),
// // // // // // // // // // //         // ),
// // // // // // // // // // //         // Align(
// // // // // // // // // // //         //   alignment: Alignment.bottomCenter,
// // // // // // // // // // //         //   child: CircleAvatar(
// // // // // // // // // // //         //     backgroundImage: AssetImage(kDefaultProfileImage),
// // // // // // // // // // //         //     backgroundColor: kPrimaryColor,
// // // // // // // // // // //         //     radius: 35,
// // // // // // // // // // //         //   ),
// // // // // // // // // // //         // ),
// // // // // // // // // // //       ],
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   Widget _infoContainer(ProfileData model, GetProfileModel model1) {
// // // // // // // // // // //     return Container(
// // // // // // // // // // //       child: Column(
// // // // // // // // // // //         crossAxisAlignment: CrossAxisAlignment.center,
// // // // // // // // // // //         children: [
// // // // // // // // // // //           Text(model.name),
// // // // // // // // // // //           6.height,
// // // // // // // // // // //           Text(
// // // // // // // // // // //             model.userId,
// // // // // // // // // // //           ),
// // // // // // // // // // //           8.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Container(
// // // // // // // // // // //                 padding:
// // // // // // // // // // //                     const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
// // // // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // // // //                   color: Colors.green,
// // // // // // // // // // //                   borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 child: Text(
// // // // // // // // // // //                   "LV.25",
// // // // // // // // // // //                   // style:
// // // // // // // // // // //                   //     theme.textTheme.bodyText1.copyWith(color: Colors.white),
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ),
// // // // // // // // // // //               Container(
// // // // // // // // // // //                   padding: const EdgeInsets.symmetric(
// // // // // // // // // // //                       vertical: 2.0, horizontal: 4.0),
// // // // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // // // //                     color: Colors.green,
// // // // // // // // // // //                     borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                   child: Row(
// // // // // // // // // // //                     children: [
// // // // // // // // // // //                       // Text(
// // // // // // // // // // //                       //   "LV.25",
// // // // // // // // // // //                       //   style: theme.textTheme.bodyText1
// // // // // // // // // // //                       //       .copyWith(color: Colors.white),
// // // // // // // // // // //                       // ),
// // // // // // // // // // //                       Icon(
// // // // // // // // // // //                         Icons.bookmark_border_outlined,
// // // // // // // // // // //                         color: Colors.white,
// // // // // // // // // // //                         size: 16,
// // // // // // // // // // //                       )
// // // // // // // // // // //                     ],
// // // // // // // // // // //                   )),
// // // // // // // // // // //               Container(
// // // // // // // // // // //                 padding:
// // // // // // // // // // //                     const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
// // // // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // // // //                   color: Colors.green,
// // // // // // // // // // //                   borderRadius: BorderRadius.all(Radius.circular(16.0)),
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 child: Row(children: [
// // // // // // // // // // //                   Text(
// // // // // // // // // // //                     "مصر",
// // // // // // // // // // //                     // style:
// // // // // // // // // // //                     // theme.textTheme.bodyText1.copyWith(color: Colors.white),
// // // // // // // // // // //                   ),
// // // // // // // // // // //                   Icon(
// // // // // // // // // // //                     Icons.location_on_outlined,
// // // // // // // // // // //                     color: Colors.white,
// // // // // // // // // // //                     size: 16,
// // // // // // // // // // //                   )
// // // // // // // // // // //                 ]),
// // // // // // // // // // //               ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //           10.height,
// // // // // // // // // // //           Row(
// // // // // // // // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // // // //             children: [
// // // // // // // // // // //               Text(
// // // // // // // // // // //                 "الملف الشخصي فارع",
// // // // // // // // // // //               ),
// // // // // // // // // // //             ],
// // // // // // // // // // //           ),
// // // // // // // // // // //           8.height,
// // // // // // // // // // //           Padding(
// // // // // // // // // // //             padding: const EdgeInsets.all(15.0),
// // // // // // // // // // //             child: Row(
// // // // // // // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // // // // // //               children: [
// // // // // // // // // // //                 Column(
// // // // // // // // // // //                   children: [
// // // // // // // // // // //                     Text("1"),
// // // // // // // // // // //                     4.height,
// // // // // // // // // // //                     Text("زار"),
// // // // // // // // // // //                   ],
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 Column(
// // // // // // // // // // //                   children: [
// // // // // // // // // // //                     Text(model1.follow.toString()),
// // // // // // // // // // //                     4.height,
// // // // // // // // // // //                     Text("متابعة"),
// // // // // // // // // // //                   ],
// // // // // // // // // // //                 ),
// // // // // // // // // // //                 Column(
// // // // // // // // // // //                   children: [
// // // // // // // // // // //                     Text(model1.followMe.toString()),
// // // // // // // // // // //                     4.height,
// // // // // // // // // // //                     Text("متابعين"),
// // // // // // // // // // //                   ],
// // // // // // // // // // //                 ),
// // // // // // // // // // //               ],
// // // // // // // // // // //             ),
// // // // // // // // // // //           ),
// // // // // // // // // // //         ],
// // // // // // // // // // //       ),
// // // // // // // // // // //     );
// // // // // // // // // // //   }

// // // // // // // // // // //   // Widget _personalInfo(double width) {
// // // // // // // // // // //   //   return Container(
// // // // // // // // // // //   //     child: Column(
// // // // // // // // // // //   //       children: [
// // // // // // // // // // //   //         Container(
// // // // // // // // // // //   //           width: double.infinity,
// // // // // // // // // // //   //           padding:
// // // // // // // // // // //   //               const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
// // // // // // // // // // //   //           decoration: BoxDecoration(
// // // // // // // // // // //   //             color: Colors.grey,
// // // // // // // // // // //   //           ),
// // // // // // // // // // //   //           child: Text(
// // // // // // // // // // //   //             "المعلومات الشخصية",
// // // // // // // // // // //   //           ),
// // // // // // // // // // //   //         ),
// // // // // // // // // // //   //         16.height,
// // // // // // // // // // //   //         Row(
// // // // // // // // // // //   //           children: [
// // // // // // // // // // //   //             SizedBox(
// // // // // // // // // // //   //               width: width / 3,
// // // // // // // // // // //   //               child: Text(""),
// // // // // // // // // // //   //             ),
// // // // // // // // // // //   //             SizedBox(
// // // // // // // // // // //   //               width: width / 3 - 28,
// // // // // // // // // // //   //               child: Text(""),
// // // // // // // // // // //   //             )
// // // // // // // // // // //   //           ],
// // // // // // // // // // //   //         ),
// // // // // // // // // // //   //         Divider(),
// // // // // // // // // // //   //         10.height,
// // // // // // // // // // //   //         Row(
// // // // // // // // // // //   //           children: [
// // // // // // // // // // //   //             SizedBox(
// // // // // // // // // // //   //               width: width / 3,
// // // // // // // // // // //   //               child: Text(""),
// // // // // // // // // // //   //             ),
// // // // // // // // // // //   //             SizedBox(
// // // // // // // // // // //   //               width: width / 3 - 28,
// // // // // // // // // // //   //               child: Text(""),
// // // // // // // // // // //   //             )
// // // // // // // // // // //   //           ],
// // // // // // // // // // //   //         ),
// // // // // // // // // // //   //         Divider(),
// // // // // // // // // // //   //         10.height,
// // // // // // // // // // //   //         Row(
// // // // // // // // // // //   //           children: [
// // // // // // // // // // //   //             SizedBox(
// // // // // // // // // // //   //               width: width / 3,
// // // // // // // // // // //   //               child: Text(""),
// // // // // // // // // // //   //             ),
// // // // // // // // // // //   //             SizedBox(
// // // // // // // // // // //   //               width: width / 3 - 28,
// // // // // // // // // // //   //               child: Text(""),
// // // // // // // // // // //   //             ),
// // // // // // // // // // //   //           ],
// // // // // // // // // // //   //         ),
// // // // // // // // // // //   //       ],
// // // // // // // // // // //   //     ),
// // // // // // // // // // //   //   );
// // // // // // // // // // //   // }
// // // // // // // // // // // }

// // // // // // // import 'package:flutter/material.dart';

// // // // // // // class MyGridView extends StatefulWidget {
// // // // // // //   @override
// // // // // // //   _MyGridViewState createState() => _MyGridViewState();
// // // // // // // }

// // // // // // // class _MyGridViewState extends State<MyGridView> {
// // // // // // //   // set an int with value -1 since no card has been selected
// // // // // // //   int selectedCard = -1;

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return GridView.builder(
// // // // // // //         shrinkWrap: false,
// // // // // // //         scrollDirection: Axis.vertical,
// // // // // // //         itemCount: 10,
// // // // // // //         gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
// // // // // // //           crossAxisCount: 2,
// // // // // // //           childAspectRatio: MediaQuery.of(context).size.width /
// // // // // // //               (MediaQuery.of(context).size.height / 3),
// // // // // // //         ),
// // // // // // //         itemBuilder: (BuildContext context, int index) {
// // // // // // //           return GestureDetector(
// // // // // // //             onTap: () {
// // // // // // //               setState(() {
// // // // // // //                 // ontap of each card, set the defined int to the grid view index
// // // // // // //                 selectedCard = index;
// // // // // // //               });
// // // // // // //             },
// // // // // // //             child: Card(
// // // // // // //               // check if the index is equal to the selected Card integer
// // // // // // //               color: selectedCard == index ? Colors.blue : Colors.amber,
// // // // // // //               child: Container(
// // // // // // //                 height: 200,
// // // // // // //                 width: 200,
// // // // // // //                 child: Center(
// // // // // // //                   child: Text(
// // // // // // //                     '$index',
// // // // // // //                     style: TextStyle(
// // // // // // //                       fontSize: 20,
// // // // // // //                       color: Colors.white,
// // // // // // //                       fontWeight: FontWeight.w500,
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           );
// // // // // // //         });
// // // // // // //   }
// // // // // // // }

// // // // // // import 'package:flutter/material.dart';

// // // // // // class App extends StatefulWidget {
// // // // // //   @override
// // // // // //   _AppState createState() => _AppState();
// // // // // // }

// // // // // // class _AppState extends State<App> {
// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     // TODO: implement initState
// // // // // //     super.initState();
// // // // // //   }

// // // // // //   String country_id;
// // // // // //   List<String> country = [
// // // // // //     "America",
// // // // // //     "Brazil",
// // // // // //     "Canada",
// // // // // //     "India",
// // // // // //     "Mongalia",
// // // // // //     "USA",
// // // // // //     "China",
// // // // // //     "Russia",
// // // // // //     "Germany"
// // // // // //   ];

// // // // // //   // @override
// // // // // //   // Widget build(BuildContext context) {
// // // // // //   //   return Scaffold(
// // // // // //   //     appBar: AppBar(
// // // // // //   //       title: Text("Dropdown Form"),
// // // // // //   //     ),
// // // // // //   //     body: Container(
// // // // // //   //       padding: EdgeInsets.all(15.0),
// // // // // //   //       child: Column(
// // // // // //   //           crossAxisAlignment: CrossAxisAlignment.stretch,
// // // // // //   //           children: <Widget>[
// // // // // //   //             DropDownField(
// // // // // //   //               onValueChanged: (dynamic value) {
// // // // // //   //                 country_id = value;
// // // // // //   //               },
// // // // // //   //               value: country_id,
// // // // // //   //               required: false,
// // // // // //   //               hintText: 'Choose a country',
// // // // // //   //               labelText: 'Country',
// // // // // //   //               items: country,
// // // // // //   //             ),
// // // // // //   //           ]),
// // // // // //   //     ),
// // // // // //   //   );
// // // // // //   // }

// // // // // import 'package:flutter/material.dart';

// // // // // class HomePage extends StatelessWidget {
// // // // //   final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
// // // // //   final List<String> _names = [
// // // // //     'Liam',
// // // // //     'Noah',
// // // // //     'Oliver',
// // // // //     'William',
// // // // //     'Elijah',
// // // // //     'James',
// // // // //     'Benjamin',
// // // // //     'Lucas',
// // // // //     'Mason',
// // // // //     'Ethan',
// // // // //     'Alexander'
// // // // //   ];

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       key: _scaffoldkey,
// // // // //       appBar: AppBar(
// // // // //         title: Text('Pop Menu with List'),
// // // // //       ),
// // // // //       body: ListView.builder(
// // // // //         itemBuilder: (_, i) {
// // // // //           String name = _names[i];
// // // // //           return ListTile(
// // // // //             title: Text('$name'),
// // // // //             trailing: PopupMenuButton(
// // // // //               icon: Icon(Icons.more_vert),
// // // // //               itemBuilder: (context) {
// // // // //                 return [
// // // // //                   PopupMenuItem(
// // // // //                     value: 'edit',
// // // // //                     child: Text('Edit'),
// // // // //                   ),
// // // // //                   PopupMenuItem(
// // // // //                     value: 'delete',
// // // // //                     child: Text('Delete'),
// // // // //                   )
// // // // //                 ];
// // // // //               },
// // // // //               // onSelected: (String value) =>
// // // // //               //     actionPopUpItemSelected(value, name),
// // // // //             ),
// // // // //           );
// // // // //         },
// // // // //         itemCount: _names.length,
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   void actionPopUpItemSelected(String value, String name) {
// // // // //     _scaffoldkey.currentState.hideCurrentSnackBar();
// // // // //     String message;
// // // // //     if (value == 'edit') {
// // // // //       message = 'You selected edit for $name';
// // // // //     } else if (value == 'delete') {
// // // // //       message = 'You selected delete for $name';
// // // // //     } else {
// // // // //       message = 'Not implemented';
// // // // //     }
// // // // //     final snackBar = SnackBar(content: Text(message));
// // // // //     _scaffoldkey.currentState.showSnackBar(snackBar);
// // // // //   }
// // // // // }

// // // // import 'dart:convert';

// // // // import 'package:flutter/material.dart';
// // // // import 'package:http/http.dart' as http ;

// // // // class MyApp extends StatefulWidget {
// // // //   @override
// // // //   _MyAppState createState() => _MyAppState();
// // // // }

// // // // class _MyAppState extends State<MyApp> {
// // // //   String _mySelection;

// // // //   final String url = "http://webmyls.com/php/getdata.php";

// // // //   List data = List(); //edited line

// // // //   Future<String> getSWData() async {
// // // //     var res = await http
// // // //         .get(parse.encodeFull(url), headers: {"Accept": "application/json"});
// // // //     var resBody = json.decode(res.body);

// // // //     setState(() {
// // // //       data = resBody;
// // // //     });

// // // //     print(resBody);

// // // //     return "Sucess";
// // // //   }

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     this.getSWData();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return new Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text("Hospital Management"),
// // // //       ),
// // // //       body: new Center(
// // // //         child: new DropdownButton(
// // // //           items: data.map((item) {
// // // //             return new DropdownMenuItem(
// // // //               child: new Text(item['name']),
// // // //               value: item['id'].toString(),
// // // //             );
// // // //           }).toList(),
// // // //           onChanged: (newVal) {
// // // //             setState(() {
// // // //               _mySelection = newVal;
// // // //             });
// // // //           },
// // // //           value: _mySelection,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'dart:convert';
// // // import 'package:http/http.dart' as http;

// // // import 'package:flutter/material.dart';

// // // class MyHomePage extends StatefulWidget {
// // //   @override
// // //   _MyHomePageState createState() => _MyHomePageState();
// // // }

// // // class _MyHomePageState extends State<MyHomePage> {
// // //   @override
// // //   void initState() {
// // //     _getStateList();
// // //     super.initState();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Dynamic DropDownList REST API'),
// // //       ),
// // //       body: Column(
// // //         mainAxisAlignment: MainAxisAlignment.start,
// // //         children: <Widget>[
// // //           Container(
// // //             alignment: Alignment.topCenter,
// // //             margin: EdgeInsets.only(bottom: 100, top: 100),
// // //             child: Text(
// // //               'KDTechs',
// // //               style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
// // //             ),
// // //           ),
// // //           //======================================================== State

// // //           Container(
// // //             padding: EdgeInsets.only(left: 15, right: 15, top: 5),
// // //             color: Colors.white,
// // //             child: Row(
// // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //               children: <Widget>[
// // //                 Expanded(
// // //                   child: DropdownButtonHideUnderline(
// // //                     child: ButtonTheme(
// // //                       alignedDropdown: true,
// // //                       child: DropdownButton<String>(
// // //                         value: _myState,
// // //                         iconSize: 30,
// // //                         icon: (null),
// // //                         style: TextStyle(
// // //                           color: Colors.black54,
// // //                           fontSize: 16,
// // //                         ),
// // //                         hint: Text('Select State'),
// // //                         onChanged: (String newValue) {
// // //                           setState(() {
// // //                             _myState = newValue;
// // //                             _getCitiesList();
// // //                             print(_myState);
// // //                           });
// // //                         },
// // //                         items: statesList?.map((item) {
// // //                               return new DropdownMenuItem(
// // //                                 child: new Text(item['name']),
// // //                                 value: item['id'].toString(),
// // //                               );
// // //                             })?.toList() ??
// // //                             [],
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //           SizedBox(
// // //             height: 30,
// // //           ),

// // //           //======================================================== City

// // //           Container(
// // //             padding: EdgeInsets.only(left: 15, right: 15, top: 5),
// // //             color: Colors.white,
// // //             child: Row(
// // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //               children: <Widget>[
// // //                 Expanded(
// // //                   child: DropdownButtonHideUnderline(
// // //                     child: ButtonTheme(
// // //                       alignedDropdown: true,
// // //                       child: DropdownButton<String>(
// // //                         value: _myCity,
// // //                         iconSize: 30,
// // //                         icon: (null),
// // //                         style: TextStyle(
// // //                           color: Colors.black54,
// // //                           fontSize: 16,
// // //                         ),
// // //                         hint: Text('Select City'),
// // //                         onChanged: (String newValue) {
// // //                           setState(() {
// // //                             _myCity = newValue;
// // //                             print(_myCity);
// // //                           });
// // //                         },
// // //                         items: citiesList?.map((item) {
// // //                               return new DropdownMenuItem(
// // //                                 child: new Text(item['name']),
// // //                                 value: item['id'].toString(),
// // //                               );
// // //                             })?.toList() ??
// // //                             [],
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   //=============================================================================== Api Calling here

// // // //CALLING STATE API HERE
// // // // Get State information by API
// // //   List statesList;
// // //   String _myState;

// // //   String stateInfoUrl = 'http://cleanions.bestweb.my/api/location/get_state';
// // //   Future<String> _getStateList() async {
// // //     await http.post(Uri.parse(stateInfoUrl), headers: {
// // //       'Content-Type': 'application/x-www-form-urlencoded'
// // //       'bareer'
// // //     }, body: {
// // //       "api_key": '25d55ad283aa400af464c76d713c07ad',
// // //     }).then((response) {
// // //       var data = json.decode(response.body);

// // // //      print(data);
// // //       setState(() {
// // //         statesList = data['state'];
// // //       });
// // //     });
// // //   }

// // //   // Get State information by API
// // //   List citiesList;
// // //   String _myCity;

// // //   String cityInfoUrl =
// // //       'http://cleanions.bestweb.my/api/location/get_city_by_state_id';
// // //   Future<String> _getCitiesList() async {
// // //     await http.post(Uri.parse(cityInfoUrl), headers: {
// // //       'Content-Type': 'application/x-www-form-urlencoded'
// // //     }, body: {
// // //       "api_key": '25d55ad283aa400af464c76d713c07ad',
// // //       "state_id": _myState,
// // //     }).then((response) {
// // //       var data = json.decode(response.body);

// // //       setState(() {
// // //         citiesList = data['cities'];
// // //       });
// // //     });
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:project/dioHelper.dart';
// // import 'package:project/models/roomUser.dart';
// // import 'package:project/utils/constants.dart';
// // import 'dart:convert';

// // import 'package:project/view/home/states.dart';

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// //   void initState() {
// //     getroomuser(id: '44');
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Dynamic DropDownList REST API'),
// //       ),
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.start,
// //         children: <Widget>[
// //           Container(
// //             alignment: Alignment.topCenter,
// //             margin: EdgeInsets.only(bottom: 100, top: 100),
// //             child: Text(
// //               'KDTechs',
// //               style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
// //             ),
// //           ),
// //           //======================================================== State

// //           Container(
// //             padding: EdgeInsets.only(left: 15, right: 15, top: 5),
// //             color: Colors.white,
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: <Widget>[
// //                 Expanded(
// //                   child: DropdownButtonHideUnderline(
// //                     child: ButtonTheme(
// //                       alignedDropdown: true,
// //                       child: DropdownButton<String>(
// //                         value: _myState,
// //                         iconSize: 30,
// //                         icon: (null),
// //                         style: TextStyle(
// //                           color: Colors.black54,
// //                           fontSize: 16,
// //                         ),
// //                         hint: Text('Select State'),
// //                         onChanged: (String newValue) {
// //                           setState(() {
// //                             _myState = newValue;
// //                             getroomuser(id: '44');
// //                             print(_myState);
// //                           });
// //                         },
// //                         items: statesList?.map((item) {
// //                               return new DropdownMenuItem(
// //                                 child: new Text(item['name']),
// //                                 value: item['id'].toString(),
// //                               );
// //                             })?.toList() ??
// //                             [],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(
// //             height: 30,
// //           ),

// //           //======================================================== City

// //           // Container(
// //           //   padding: EdgeInsets.only(left: 15, right: 15, top: 5),
// //           //   color: Colors.white,
// //           //   child: Row(
// //           //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           //     children: <Widget>[
// //           //       Expanded(
// //           //         child: DropdownButtonHideUnderline(
// //           //           child: ButtonTheme(
// //           //             alignedDropdown: true,
// //           //             child: DropdownButton<String>(
// //           //               value: _myCity,
// //           //               iconSize: 30,
// //           //               icon: (null),
// //           //               style: TextStyle(
// //           //                 color: Colors.black54,
// //           //                 fontSize: 16,
// //           //               ),
// //           //               hint: Text('Select City'),
// //           //               onChanged: (String newValue) {
// //           //                 setState(() {
// //           //                   _myCity = newValue;
// //           //                   print(_myCity);
// //           //                 });
// //           //               },
// //           //               items: citiesList?.map((item) {
// //           //                     return new DropdownMenuItem(
// //           //                       child: new Text(item['name']),
// //           //                       value: item['id'].toString(),
// //           //                     );
// //           //                   })?.toList() ??
// //           //                   [],
// //           //             ),
// //           //           ),
// //           //         ),
// //           //       ),
// //           //     ],
// //           //   ),
// //           // ),
// //         ],
// //       ),
// //     );
// //   }

// //   //=============================================================================== Api Calling here

// // //CALLING STATE API HERE
// // // Get State information by API
// //   InRoomUserModelModel roomUserModelModel;
// //   List<InRoomUserModelModel> inroomList = [];
// //   List statesList;
// //   String _myState;
// //   void getroomuser({@required id}) async {
// //     // emit(InroomLoadingStates());

// //     await DioHelper.getdata(url: 'rooms/44/users', token: token).then((value) {
// //       roomUserModelModel = InRoomUserModelModel.fromJson(value.data);
// //       print(value.data);
// //       value.data.forEach((element) {
// //         inroomList.add(InRoomUserModelModel.fromJson(element.data()));
// //       });

// //       print(inroomList.first.data.first.name);

// //       setState(() {
// //         statesList = value.data['data'];
// //       });

// //       // for (int i = 0; i < roomUserModel.data.length; i++) {
// //       //   inroomList.add(InRoomUserModelModel.fromJson(value.data()));
// //       //   print(inroomList.first.data.first.name);
// //       // }

// //       // emit(InroomSuccessStates());
// //     }).catchError((error) {
// //       print(error.toString());
// //       // emit(InroomErrorState());
// //     });
// //   }

// // //   List statesList;
// // //   String _myState;

// // //   String stateInfoUrl = 'http://cleanions.bestweb.my/api/location/get_state';
// // //   Future<String> _getStateList() async {
// // //     await http.post(Uri.parse(stateInfoUrl), headers: {
// // //       'Content-Type': 'application/x-www-form-urlencoded'
// // //     }, body: {
// // //       "api_key": '25d55ad283aa400af464c76d713c07ad',
// // //     }).then((response) {
// // //       var data = json.decode(response.body);

// // // //      print(data);
// // //       setState(() {
// // //         statesList = data['state'];
// // //       });
// // //     });
// // //   }

// // //   // Get State information by API
// // //   List citiesList;
// // //   String _myCity;

// // //   String cityInfoUrl =
// // //       'http://cleanions.bestweb.my/api/location/get_city_by_state_id';
// // //   Future<String> _getCitiesList() async {
// // //     await http.post(Uri.parse(cityInfoUrl), headers: {
// // //       'Content-Type': 'application/x-www-form-urlencoded'
// // //     }, body: {
// // //       "api_key": '25d55ad283aa400af464c76d713c07ad',
// // //       "state_id": _myState,
// // //     }).then((response) {
// // //       var data = json.decode(response.body);

// // //       setState(() {
// // //         citiesList = data['cities'];
// // //       });
// // //     });
// // //   }
// // }

// // import 'dart:convert';
// // import 'dart:ffi';

// // import 'package:flutter/material.dart';
// // import 'package:project/dioHelper.dart';
// // import 'package:project/utils/constants.dart';

// // class DynamicDrop extends StatefulWidget {
// //   const DynamicDrop({Key key}) : super(key: key);

// //   @override
// //   State<DynamicDrop> createState() => _DynamicDropState();
// // }

// // class _DynamicDropState extends State<DynamicDrop> {
// //   String selectedname;
// //   List data = List();
// //   Future getAllName() async {
// //     await DioHelper.getdata(url: 'rooms/44/users', token: token).then((value) {
// //       var jsonbody = value.data;
// //       var jsondata = json.decode(jsonbody);

// //       setState(() {
// //         data = jsondata;
// //       });
// //       print(jsondata);
// //     });
// //   }

// //   void initstate() {
// //     super.initState();
// //     getAllName();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project/utils/constants.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .65,
              color: Colors.blue,
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .35,
              color: Colors.white,
              child: Center(
                child: Text("aaaaa"),
              ),
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .58,
              right: 20.0,
              left: 20.0),
          child: new Container(
            // height: 200.0,
            // width: MediaQuery.of(context).size.width,
            child: CircleAvatar(
              child: Image.asset("assets/images/Profile Image.png"),
              backgroundColor: kPrimaryColor,
              radius: 50,
            ),
          ),
        )
      ],
    );
  }
}

// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Material(
//           child: InkWell(onTap: () {
//             showModalBottomSheet(
//                 // expand: false,
//                 context: context,
//                 builder: (context) => Container(
//                       color: Colors.blue,
//                     ));
//           }),
//         ),
//         Align(
//           alignment: Alignment.bottomRight,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Ink(
//               decoration: const ShapeDecoration(
//                 color: Colors.lightBlue,
//                 shape: CircleBorder(),
//               ),
//               child: IconButton(
//                 icon: const Icon(Icons.add),
//                 color: Colors.black,
//                 onPressed: () {},
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
