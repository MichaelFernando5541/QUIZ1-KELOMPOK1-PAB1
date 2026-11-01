import 'package:flutter/material.dart';

PreferredSizeWidget buildCustomAppBar(){
    return AppBar(
        title:const Text('Kuliner Nusantara',style:TextStyle(color:Colors.white)),
        backgroundColor:Colors.orange,
        actions:[
            IconButton(
                icon:const Icon(Icons.notifications_none,color:Colors.white),
                onPressed:(){},
            ),
            const Padding(
                padding:EdgeInsets.only(right:12.0),
                child:CircleAvatar(
                    backgroundColor:Colors.white,
                    child:Icon(Icon.Person,color:Colors.orange),
                ),
            ),
        ],
    );
}
