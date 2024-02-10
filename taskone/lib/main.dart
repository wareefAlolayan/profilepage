// ignore_for_file: prefer_const_constructors, duplicate_ignore, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }}

  class HomePage extends StatefulWidget {
    const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override 
     Widget build(BuildContext context){
        return Scaffold(
      appBar: AppBar(
       flexibleSpace: Image(
          image: AssetImage('img/appbarbg.jpg'),
          fit: BoxFit.cover,
        ),
          backgroundColor: Colors.transparent,
        title: Text(
          "Profile Page",
          style: GoogleFonts.montserrat(textStyle:TextStyle(fontSize:25, color: Color.fromARGB(255, 73, 53, 72),),fontWeight: FontWeight.bold ),
        ),
        centerTitle: true,
        leading: IconButton(
              onPressed: () {},
              icon:Icon(
          Icons.arrow_back_ios,
          size: 26,
          color:Colors.white,
        ),),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit, size: 20, color: Colors.white)),
             
        ],
      ),
      body: Container(
  color: Color.fromRGBO(240, 230, 230, 1), // Set the background color of the body
  child: SingleChildScrollView(
      child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            SizedBox(height: 20),
             Center(
              child: CircleAvatar(backgroundImage: AssetImage("img/pfp.jpg"), radius: 100, ),
            ),
                SizedBox(height: 20),
            itemofp("Your Name","Wareef Alolayan",Icons.person),
                SizedBox(height: 20),
            itemofp("Your Phone Number","+966539******",Icons.phone),
                SizedBox(height: 20),
            itemofp("Your Location","Qassim",Icons.location_pin),
                SizedBox(height: 20),
            itemofp("Your Email","wareef@gmail.com",Icons.mail_sharp),
                SizedBox(height: 200),
          ]
        ),
      ),
      ),
    );
     
      
     }
     
     Card itemofp(String T , String ST , IconData ic) {
      return Card(
              child: Container (
                decoration: BoxDecoration(color: Color.fromARGB(255, 176, 187, 202),borderRadius: BorderRadius.circular(30),boxShadow: [BoxShadow(
                             color: Colors.grey.withOpacity(0.5), // Shadow color
                             spreadRadius: 5, // Spread radius
                             blurRadius: 7, // Blur radius
                             offset: Offset(0, 3),  ),  
                                           ],),
                  height: 80,
                  width: 400,
                  margin: EdgeInsets.only(left:15,right:15),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(3),
                  child: ListTile(//هذي وظيفته تقسم لك الودجن نفسه وتحط جوات زي مثلا تايتل وسب تايتل
                    leading: Icon(ic, color: Colors.white,size: 35,),
                    title: Text(T,style: GoogleFonts.robotoMono(textStyle:TextStyle(fontSize:15,color: Color.fromARGB(255, 48, 44, 44)), ),),
                    subtitle: Text(ST,style: GoogleFonts.robotoCondensed(textStyle:TextStyle(fontSize:20,color: Color.fromARGB(255, 24, 22, 22)), ),)
                         ),
              ),
         );
      }
   }
     