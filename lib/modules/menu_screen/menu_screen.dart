import 'package:flutter/material.dart';
import 'package:meal/shared/components/components.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);
static final String id = 'menuscreen';
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Transform.scale(
        scale: 1.4,
        child: FloatingActionButton(

backgroundColor: Colors.grey,
  onPressed: (){},child: Icon(

            Icons.home
,size: 40,
),),
      ),
      bottomNavigationBar: BottomAppBar(
      // color: Colors.deepOrange,

        elevation: 50,

        notchMargin: 30,
        shape: CircularNotchedRectangle(



      ),
      child: Container(
        height: 80,

child: Row(

  mainAxisAlignment: MainAxisAlignment.spaceBetween
  ,
  children: [
Row(mainAxisAlignment: MainAxisAlignment.start,
  children: [
        MaterialButton(
      minWidth: 40,
      onPressed: (){},
    child: Column
      (
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(Icons.dashboard),
      Text('Menu')
    ],)
      ,
    ),
        MaterialButton(
          minWidth: 40,
          onPressed: (){},
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(Icons.shopping_bag),
              Text('Offers')
            ],)
          ,
        ),
  ],
),

    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MaterialButton(
          minWidth: 40,
          onPressed: (){},
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(Icons.person),
              Text('Profile')
            ],)
          ,
        ),MaterialButton(
          minWidth: 40,
          onPressed: (){},
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(Icons.read_more),
              Text('More')
            ],)
          ,
        ),
      ],
    ),


],),
      ),

      ),
//       body: Padding(
//         padding: const EdgeInsets.all(15),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Menu'),
//                   IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
//
//                 ],
//               ),
//               CustomTextField(hintText: 'Search food', keyboardType: TextInputType.text)
//
// ,
//
//              //  Stack(
//              // children: [
//              //   Align(
//              //     alignment: AlignmentDirectional.bottomStart,
//              //
//              //     child: Container(
//              //       height: 200,
//              //       width: 100,
//              //       decoration: BoxDecoration(
//              //
//              //         color: Colors.deepOrange
//              //
//              //       ),
//              //
//              //     ),
//              //   )
//              //
//              //
//              // ],
//              //  )
//             ],
//
//           ),
//
//         ),
//       ),
    );
  }
}
