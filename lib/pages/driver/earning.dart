import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var names = [
      'muhammad',
      'ali',
      'sultan',
      'king',
      'hing',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring',
      'ring'
    ];
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        // body: LayoutBuilder(
        //   builder: (context, constraints) {
        //     return SingleChildScrollView(
        //       child: Column(
        //         children: [
        //           Container(
        //             height: constraints.maxHeight * 0.3,
        //             width: constraints.maxWidth,
        //             color: Colors.black,
        //             child: Stack(
        //               alignment:
        //                   Alignment.bottomRight, // Aligns text to bottom-right
        //               children: [
        //                 Center(
        //                   child: Column(
        //                     // crossAxisAlignment: CrossAxisAlignment.start,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         'Total Earnings',
        //                         textScaleFactor: 1.8,
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.w300,
        //                           color: Colors.white,
        //                         ),
        //                       ),
        //                       Text(
        //                         '\$1000.00',
        //                         textScaleFactor: 2.5,
        //                         style: TextStyle(
        //                           color: Colors.white,
        //                           fontWeight: FontWeight.normal,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 Positioned(
        //                   bottom: 16.0,
        //                   right: 16.0,
        //                   child: Text(
        //                     'Total Trips   50',
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontWeight: FontWeight.normal,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           ListView.separated(
        //             shrinkWrap: true,
        //             physics: NeverScrollableScrollPhysics(),
        //             itemBuilder: (context, index) {
        //               return ListTile(
        //                 leading: Image.asset('images/driver1.png'),
        //                 trailing: Column(
        //                   children: [
        //                     Text(
        //                       '50\$',
        //                       textScaleFactor: 1.6,
        //                       style: TextStyle(color: Colors.green[900]),
        //                     ),
        //                     Text(
        //                       '2023-12-15',
        //                       style: TextStyle(color: Colors.grey),
        //                     )
        //                   ],
        //                 ),
        //                 title: Text(
        //                   names[index],
        //                 ),
        //                 subtitle: Text('Kathmandu-Pokhara(100KM)'),
        //               );
        //             },
        //             itemCount: names.length,
        //             separatorBuilder: (context, index) {
        //               return Divider(
        //                 // height: 100,
        //                 thickness: 2,
        //               );
        //             },
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        // ),
        );
  }
}
