import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController{

  var dataListSundayaApp = [
    {"img": "assets/images/splashscreen.png"},
    {"img": "assets/images/login.png"},
    {"img": "assets/images/register.png"},
    {"img": "assets/images/home.png"},
    {"img": "assets/images/apps.png"},
    {"img": "assets/images/systemsdata.png"},
    {"img": "assets/images/survey.png"},
    {"img": "assets/images/contact.png"},
  ];

  var dataListSundayaDesktop = [
    {"img": "assets/images/desktop_login.png"},
    {"img": "assets/images/dekstop_home.png"},
    {"img": "assets/images/desktop_profile.png"},
    {"img": "assets/images/desktop_systemsdata.png"},
    {"img": "assets/images/dekstop_requestrole.png"},
  ];
  var urlSundayaApp = "https://www.figma.com/file/b8Hf3Vllh4PP0QVZsJerxc/Sundaya-App?node-id=201%3A4610";
  var urlSundayaDesktop = "https://www.figma.com/file/b8Hf3Vllh4PP0QVZsJerxc/Sundaya-App?node-id=2%3A10981";

  static const url = "https://wa.me/+6281386681092";
  // var encoded = Uri.encodeFull(url);
  var phone = "+6281386681092";

void clickToChat(){
  launchUrl(Uri.parse(url));
}

}