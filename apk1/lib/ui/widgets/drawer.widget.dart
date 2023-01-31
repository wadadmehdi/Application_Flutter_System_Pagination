import 'package:apk1/config/global.params.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.green

                      ]
                  )
              ),

              child: Center(
                  child: Center(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        CircleAvatar(

                          backgroundImage: AssetImage("images/rca.png"),

                          radius: 30,
                          backgroundColor: Colors.white,





                        ),

                        CircleAvatar(

                          backgroundImage: AssetImage("images/logo.png"),
                          radius: 50,
                          backgroundColor: Colors.white,



                        ),


                      ],
                      

                    ),

                  )

              )
          ),
                  



        ...(GlobalParams.menus as List).map((item) {
          return    Column(
            children: [
              ListTile(
                title: Text('${item['title']}', style: TextStyle(fontSize: 22),),
                leading: item['icon'],
                trailing: Icon(Icons.arrow_right, color: Colors.green,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "${item['route']}");
                },
              ),
              Divider(color: Colors.green,height: 4,)
            ],
          );

        })

        ],
      ),
    );
  }
}