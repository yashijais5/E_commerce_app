import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showMessage(String message)
{
  Fluttertoast.showToast(
        msg: message,
       
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

}

showLoaderDialog(BuildContext context){

  AlertDialog alert = AlertDialog(
    content: Builder(builder:(context){
return SizedBox(
  width:100,
  child:Column(
    mainAxisSize: MainAxisSize.min,

children:[
  const CircularProgressIndicator(
    color: Colors.red,
  ),
  const SizedBox( height:18,),
  Container(
    margin:const EdgeInsets.only(left:7),
    child: const Text('Loading'),
  )
]  )
);
    })
  );
  showDialog( barrierDismissible: false,
  context:context,
  builder:(BuildContext context){
    return alert;
  },);
}
// String getMessageFromErrorCode(String errorCode){
//   Switch(errorCode){
//   case "ERROR_EMAIL_ALREADY_IN_USE":
//   return "email fjfbr";
// }}

bool loginValidation(String email,password)
{
  if(email.isEmpty && password.isEmpty)
  {
    showMessage("Both Fields are empty");
    return false;
  }
  else if(email.isEmpty)
  {
    showMessage("Email is Empty");
    return false;
  }
  else if(password.isEmpty)
  {
    showMessage("Email is Empty");
    return false;
  }
  else{
    return true;
  }
}