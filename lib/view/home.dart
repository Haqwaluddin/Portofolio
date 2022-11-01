import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/presentation/home_controller.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  var _getData = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if(constraints.maxWidth >= 700){
              return webScreen();
            } else{
              return mobileScreen();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getData.clickToChat();
          },
        backgroundColor: Colors.lightGreenAccent.withOpacity(0.2),
        child: Image.asset("assets/images/WhatsApp_icon.png"),
    ),);
  }

  Widget webScreen(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 650,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: Get.height,
                width: Get.width,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                          height: 200,
                          width: 200,
                          child: Image.asset("assets/images/IMG_0077.jpg",fit: BoxFit.cover,)),
                    ),
                    SizedBox(height: 20),
                    Text("About Me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text("Enthusiastic mobile developer eager to contribute to team success through hard work, attention to detail and excellent organizational skills. Motivated to learn, grow and excel in IT"),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text("Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)),
                              Expanded(
                                  flex: 3,
                                  child: Text(": Hafiz Aqwaluddin")),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(child: Text("Birth",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)),
                              Expanded(
                                  flex: 3,
                                  child: Text(": Bogor, 2 January 1997")),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(child: Text("Gender",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)),
                              Expanded(
                                  flex: 3,
                                  child: Text(": Male")),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(child: Text("Email",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)),
                              Expanded(
                                  flex: 3,
                                  child: Text(": haqwaluddin@gmail.com")),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: Text("Education",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)),
                              Expanded(
                                  flex: 3,
                                  child: Text(": S.Komp, Ilmu Komputer, Universitas Pakuan Bogor, 2015-2019",overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: Text("Other Training",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)),
                              Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(": 1. Digital Talent Scholarship (Android Pemula) (2019)",overflow: TextOverflow.ellipsis),
                                      Text("  2. IDCamp dicoding academy (Flutter Pemula) (2022)",overflow: TextOverflow.ellipsis),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: Text("Summary of Skills",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)),
                              Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(": 1. Flutter (Dart)"),
                                      Text("  2. Native (Java)"),
                                      Text("  3. Outsystems"),
                                      Text("  4. Photoshop"),
                                      Text("  5. UI/UX (Figma)"),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 650,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.7),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text("Sundaya App (Available in Google Play Store)",overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _getData.dataListSundayaApp.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              height: 100,
                              width: 200,
                              color: Colors.red,
                              child: Image.asset("${_getData.dataListSundayaApp[index]["img"]}",fit: BoxFit.fill),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Sundaya App adalah Sebuah aplikasi untuk partner yang memasang solar panel dan juga untuk partner seperti sales,teknisi dan surveyor,"
                        "didalamnya terdapat beberapa fitur seperti \n1. System Data : Untuk partner yang memasang solar panel, system data ini adalah sebuah sistem"
                        "monitoring untuk memonitoring solar panel,datanya ada harian, bulanan dan tahunan.Ada juga adanya info penghematan berapa uang yang kita keluarkan ketika kita hanya memakai pln saja"
                        "dengan kita memasang solar panel.\n"
                        "2. Contact: Sebuah fitur untuk sales, teknisi dan surveyor ketika ingin berkomunikasi dengan yang sudah terdaftar di aplikasi.\n"
                        "3. System Configurator : Sebuah fitur ketika kita akan memasang solar panel disini kita bisa mensimulasi berapa kwh listrik yang tersedia di pelanggan dan"
                        "berapa yang cocok kita akan pasangkan solar panelnya.\n"
                        "4. My jobs : sebuah fitur untuk teknisi atau surveyor untuk mengetahui job mereka.\n"
                        "5. Ev Map : Sebuah fitur untuk mengetahui ada dimana saja stasiun charger mobil atau motor listrik\n"
                        "6. CRM,BID,Project : Aplikasi untuk sistem survey"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red
                          ),
                          onPressed: (){
                            js.context.callMethod('open', ['${_getData.urlSundayaApp}']);
                          },
                          child: Text("More Details")),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 600,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.7),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text("Sundaya Admin Desktop App",overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _getData.dataListSundayaDesktop.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              height: 100,
                              width: 450,
                              color: Colors.red,
                              child: Image.asset("${_getData.dataListSundayaDesktop[index]["img"]}",fit: BoxFit.fill),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Sundaya Desktop App adalah Sebuah aplikasi untuk internal untuk menerima request role yang disediakan di aplikasi sundaya app dan untuk adminnya system data,"
                        "didalamnya terdapat beberapa fitur seperti \n1. System Data : Untuk admin melihat kondisi solar panel yang terpasang, system data ini adalah sebuah sistem"
                        "monitoring untuk memonitoring solar panel,datanya ada harian, bulanan dan tahunan.Ada juga adanya info penghematan berapa uang yang kita keluarkan ketika kita hanya memakai pln saja"
                        "dengan kita memasang solar panel.\n"
                        "2. Contact: Sebuah fitur untuk sales, teknisi dan surveyor ketika ingin berkomunikasi dengan yang sudah terdaftar di aplikasi.\n"
                        "3. System Configurator : Sebuah fitur ketika kita akan memasang solar panel disini kita bisa mensimulasi berapa kwh listrik yang tersedia di pelanggan dan"
                        "berapa yang cocok kita akan pasangkan solar panelnya.\n"
                        "4. My jobs : sebuah fitur untuk teknisi atau surveyor untuk mengetahui job mereka.\n"
                        "5. Ev Map : Sebuah fitur untuk mengetahui ada dimana saja stasiun charger mobil atau motor listrik\n"
                        "6. CRM,BID,Project : Aplikasi untuk sistem survey"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red
                          ),
                          onPressed: (){
                            js.context.callMethod('open', ['${_getData.urlSundayaDesktop}']);
                          },
                          child: Text("More Details")),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

   Widget mobileScreen(){
     return Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         Container(
           height: 650,
           width: double.infinity,
           child: Padding(
             padding: const EdgeInsets.all(10),
             child: ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10)),
               child: Container(
                 height: Get.height,
                 width: Get.width,
                 color: Colors.grey.withOpacity(0.1),
                 child: Column(
                   children: [
                     SizedBox(height: 20),
                     ClipRRect(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       child: Container(
                           height: 200,
                           width: 200,
                           child: Image.asset("assets/images/IMG_0077.jpg",fit: BoxFit.cover,)),
                     ),
                     SizedBox(height: 20),
                     Text("About Me",
                       style: TextStyle(
                           fontWeight: FontWeight.bold
                       ),),
                     Padding(
                       padding: const EdgeInsets.all(8),
                       child: Text("Enthusiastic mobile developer eager to contribute to team success through hard work, attention to detail and excellent organizational skills. Motivated to learn, grow and excel in IT"),
                     ),
                     SizedBox(height: 10),
                     Padding(
                       padding: const EdgeInsets.all(10),
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Expanded(child: Text("Name",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold
                                 ),)),
                               Expanded(
                                   flex: 3,
                                   child: Text(": Hafiz Aqwaluddin")),
                             ],
                           ),
                           SizedBox(height: 10),
                           Row(
                             children: [
                               Expanded(child: Text("Birth",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold
                                 ),)),
                               Expanded(
                                   flex: 3,
                                   child: Text(": Bogor, 2 January 1997")),
                             ],
                           ),
                           SizedBox(height: 10),
                           Row(
                             children: [
                               Expanded(child: Text("Gender",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold
                                 ),)),
                               Expanded(
                                   flex: 3,
                                   child: Text(": Male")),
                             ],
                           ),
                           SizedBox(height: 10),
                           Row(
                             children: [
                               Expanded(child: Text("Email",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold
                                 ),)),
                               Expanded(
                                   flex: 3,
                                   child: Text(": haqwaluddin@gmail.com")),
                             ],
                           ),
                           SizedBox(height: 10),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Expanded(child: Text("Education",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold
                                 ),)),
                               Expanded(
                                   flex: 3,
                                   child: Text(": S.Komp, Ilmu Komputer, Universitas Pakuan Bogor, 2015-2019",overflow: TextOverflow.ellipsis)),
                             ],
                           ),
                           SizedBox(height: 10),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Expanded(child: Text("Other Training",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold
                                 ),)),
                               Expanded(
                                   flex: 3,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(": 1. Digital Talent Scholarship (Android Pemula) (2019)",overflow: TextOverflow.ellipsis),
                                       Text("  2. IDCamp dicoding academy (Flutter Pemula) (2022)",overflow: TextOverflow.ellipsis),
                                     ],
                                   )),
                             ],
                           ),
                           SizedBox(height: 10),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Expanded(child: Text("Summary of Skills",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold
                                 ),)),
                               Expanded(
                                   flex: 3,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(": 1. Flutter (Dart)"),
                                       Text("  2. Native (Java)"),
                                       Text("  3. Outsystems"),
                                       Text("  4. Photoshop"),
                                       Text("  5. UI/UX (Figma)"),
                                     ],
                                   )),
                             ],
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(10),
           child: ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(10)),
             child: Container(
               height: 800 ,
               width: double.infinity,
               color: Colors.grey.withOpacity(0.7),
               child: Column(
                 children: [
                   SizedBox(height: 20),
                   Text("Sundaya App (Available in Google Play Store)",overflow: TextOverflow.ellipsis,
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                     ),),
                   Expanded(
                     child: ListView.builder(
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       itemCount: _getData.dataListSundayaApp.length,
                       itemBuilder: (BuildContext context, int index) {
                         return Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: ClipRRect(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             child: Container(
                               height: 100,
                               width: 200,
                               color: Colors.red,
                               child: Image.asset("${_getData.dataListSundayaApp[index]["img"]}",fit: BoxFit.fill),
                             ),
                           ),
                         );
                       },
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.all(10),
                     child: Text("Sundaya App adalah Sebuah aplikasi untuk partner yang memasang solar panel dan juga untuk partner seperti sales,teknisi dan surveyor,"
                         "didalamnya terdapat beberapa fitur seperti \n1. System Data : Untuk partner yang memasang solar panel, system data ini adalah sebuah sistem"
                         "monitoring untuk memonitoring solar panel,datanya ada harian, bulanan dan tahunan.Ada juga adanya info penghematan berapa uang yang kita keluarkan ketika kita hanya memakai pln saja"
                         "dengan kita memasang solar panel.\n"
                         "2. Contact: Sebuah fitur untuk sales, teknisi dan surveyor ketika ingin berkomunikasi dengan yang sudah terdaftar di aplikasi.\n"
                         "3. System Configurator : Sebuah fitur ketika kita akan memasang solar panel disini kita bisa mensimulasi berapa kwh listrik yang tersedia di pelanggan dan"
                         "berapa yang cocok kita akan pasangkan solar panelnya.\n"
                         "4. My jobs : sebuah fitur untuk teknisi atau surveyor untuk mengetahui job mereka.\n"
                         "5. Ev Map : Sebuah fitur untuk mengetahui ada dimana saja stasiun charger mobil atau motor listrik\n"
                         "6. CRM,BID,Project : Aplikasi untuk sistem survey"),
                   ),
                   Align(
                     alignment: Alignment.bottomRight,
                     child: Padding(
                       padding: const EdgeInsets.all(10),
                       child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               primary: Colors.red
                           ),
                           onPressed: (){
                             js.context.callMethod('open', ['${_getData.urlSundayaApp}']);
                           },
                           child: Text("More Details")),
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(10),
           child: ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(10)),
             child: Container(
               height: 800,
               width: double.infinity,
               color: Colors.grey.withOpacity(0.7),
               child: Column(
                 children: [
                   SizedBox(height: 20),
                   Text("Sundaya Admin Desktop App",overflow: TextOverflow.ellipsis,
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                     ),),
                   Expanded(
                     child: ListView.builder(
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       itemCount: _getData.dataListSundayaDesktop.length,
                       itemBuilder: (BuildContext context, int index) {
                         return Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: ClipRRect(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             child: Container(
                               height: 100,
                               width: 450,
                               color: Colors.red,
                               child: Image.asset("${_getData.dataListSundayaDesktop[index]["img"]}",fit: BoxFit.fill),
                             ),
                           ),
                         );
                       },
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.all(10),
                     child: Text("Sundaya Desktop App adalah Sebuah aplikasi untuk internal untuk menerima request role yang disediakan di aplikasi sundaya app dan untuk adminnya system data,"
                         "didalamnya terdapat beberapa fitur seperti \n1. System Data : Untuk admin melihat kondisi solar panel yang terpasang, system data ini adalah sebuah sistem"
                         "monitoring untuk memonitoring solar panel,datanya ada harian, bulanan dan tahunan.Ada juga adanya info penghematan berapa uang yang kita keluarkan ketika kita hanya memakai pln saja"
                         "dengan kita memasang solar panel.\n"
                         "2. Contact: Sebuah fitur untuk sales, teknisi dan surveyor ketika ingin berkomunikasi dengan yang sudah terdaftar di aplikasi.\n"
                         "3. System Configurator : Sebuah fitur ketika kita akan memasang solar panel disini kita bisa mensimulasi berapa kwh listrik yang tersedia di pelanggan dan"
                         "berapa yang cocok kita akan pasangkan solar panelnya.\n"
                         "4. My jobs : sebuah fitur untuk teknisi atau surveyor untuk mengetahui job mereka.\n"
                         "5. Ev Map : Sebuah fitur untuk mengetahui ada dimana saja stasiun charger mobil atau motor listrik\n"
                         "6. CRM,BID,Project : Aplikasi untuk sistem survey"),
                   ),
                   Align(
                     alignment: Alignment.bottomRight,
                     child: Padding(
                       padding: const EdgeInsets.all(10),
                       child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               primary: Colors.red
                           ),
                           onPressed: (){
                             js.context.callMethod('open', ['${_getData.urlSundayaDesktop}']);
                           },
                           child: Text("More Details")),
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),
       ],
     );
   }
}
