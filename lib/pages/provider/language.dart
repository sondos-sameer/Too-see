import 'package:flutter/cupertino.dart';
import 'package:too_see/main.dart';


class Language extends ChangeNotifier{
  String? _lang= language;

  getLanguage(){
    return _lang;
  }

    setLanguage(String lang){
    _lang=lang;
    notifyListeners();
  }

  String tGallery(){
    if(getLanguage()=='EN'){
      return "Gallery";
      
    }
    else{
      return "المعرض";
      
    }
  }
   String tGPS(){
    if(getLanguage()=='EN'){
      return "GPS";
      
    }
    else{
      return "الموقع";
      
    }
  }

   String tCHAT(){
    if(getLanguage()=='EN'){
      return "CHAT";
      
    }
    else{
      return "المحادثة";
      
    }
  }

     String tScroll(){
    if(getLanguage()=='EN'){
      return "Scroll left or right to find \n the image you capture";
      
    }
    else {
      return" قم بالتمرير الى اليسار او اليمين \nللعثور على الصور التي قمت بإلتقاطها";
      
    }
  }


   String tsend(){
    if(getLanguage()=='EN'){
      return 'Send location to';
    }
    else {
      return"إرسال موقعك الى";
      
    }
  }

       String tRecorde(){
    if(getLanguage()=='EN'){
      return "Recorde";
      
    }
    else {
      return"تسجيل";
      
    }
  }

    String tlocation(){
    if(getLanguage()=='EN'){
      return "Location";
      
    }
    else {
      return"الموقع";
      
    }
  }

  
         String tVedio(){
    if(getLanguage()=='EN'){
      return "Vedio";
      
    }
    else {
      return"فيديو";
      
    }
  } 

       String tGender(){
    if(getLanguage()=='EN'){
      return "Gender of voice";
      
    }
    else {
      return"نوع الصوت";
      
    }
  } 
  
       String tlang(){
    if(getLanguage()=='EN'){
      return "language";
      
    }
    else {
      return"اللغة";
      
    }
  } 

         String tsignout(){
    if(getLanguage()=='EN'){
      return "sign out";
      
    }
    else {
      return"تسجيل الخروج";
      
    }
  } 

   String tMale(){
    if(getLanguage()=='EN'){
      return "Male";
      
    }
    else{
      return "ذكر";
      
    }
}

 String tFemale(){
    if(getLanguage()=='EN'){
      return "Female";
      
    }
    else{
      return"انثى"; 
      
    }}
    }