import 'package:flutter/material.dart';
import 'package:untitled11/constance.dart';
class HomwePage extends StatefulWidget {
  const HomwePage({Key? key}) : super(key: key);

  @override
  State<HomwePage> createState() => _HomwePageState();
}

class _HomwePageState extends State<HomwePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: Column(
          children: [

            
            Center(child: Text(user_Shered_Controller().get_name()??"",style: TextStyle(fontWeight: FontWeight.bold),)),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              user_Shered_Controller().set_Name( user_id: "ammu");
            }, child: Text("add data")),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              user_Shered_Controller().get_name();
              setState(() {

              });
            }, child: Text("get data")),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              user_Shered_Controller().clear();
              setState(() {

              });
            }, child: Text("clear data")),
          ],
        ),
      ),
    );
  }
}
