
import 'package:shared_preferences/shared_preferences.dart';

class user_Shered_Controller{

static  SharedPreferences? sharedPreference;


  Future initSharedPreferences()async{
   sharedPreference=await SharedPreferences.getInstance();
  }
Future set_Name({String? user_id,})async{
  await sharedPreference!.setString('action', "${user_id}");
}

 String? get_name() {
  final String? action = sharedPreference!.getString('action');

  return   action;
}
clear()async{
  final success = await sharedPreference!.remove('action');
  return success;
}

}