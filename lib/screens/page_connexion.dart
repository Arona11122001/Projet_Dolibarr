
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dolibarr_project/screens/page_accueil.dart';
import 'package:dolibarr_project/screens/home_screen.dart';
import 'package:dolibarr_project/screens/mdp_oublie.dart';
import 'package:dolibarr_project/screens/page_inscription.dart';


const Color  d_blue = Color(0xFF263c5c);


class PageConnexion extends StatelessWidget {
  const PageConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.arrow_back,
            color: const Color(0xFF000000),
            size: 30,
          ), 
          onPressed: () { 
            Navigator.push(
              context, 
              MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                  ),
            );
           },
        ),
      ),
        // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: SafeArea(
        child: Center(
          child: Column(
            
            // ignore: prefer_const_literals_to_create_immutables
            children: [
             
              // logo de Dolibarr
            
              Container(
                margin: const EdgeInsets.only(top: 60,bottom: 40),
              child: Image.asset(
                'assets/images/1.png',
                  
                   scale: 1.5,
               ), 
             ),
            //Sconst SizedBox(height: 20,),
             Container( 
              child: Column(
                children: [
                 Container(
              
                 ),
                  Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Identifiant',
                    hintStyle: TextStyle(
                      fontSize: 19,
                    ),
                    
                     suffixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.all(10),
                    
                  ) ,

                ),
              ),
                 Container(
                
                 ),
 Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                   suffixIcon: Icon(Icons.vpn_key),
                //    contentPadding: EdgeInsets.only(left: 10,bottom:0),
                    
                       
                  ) ,

                ),
                
              ),
            
                Container(
                margin: const EdgeInsets.only(top: 60),

                child: Row(
                  
                mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
            // const  SizedBox(width: 100 ),
                ElevatedButton( child: Text('Se Connecter',
                  style: GoogleFonts.poppins(
                  color: Colors.white,
                 fontSize: 20,
                // fontWeight: FontWeight.w500,
                   ),
                  ),
                 onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => PageAccueil(),
                    ),
                    );
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), backgroundColor: d_blue,
                  padding: EdgeInsets.all( 10)
                  

                ),
                
               
                 ) ]),
          ),
          ]),
            ),
  Row(
                // ignore: prefer_const_constructors
                mainAxisAlignment: MainAxisAlignment.center,
           
               children: 
                [
                  
            
                Align(
                  child: Container(
                    
                     margin: EdgeInsets.only(top: 10),
                       child: TextButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                               MaterialPageRoute(
                      builder: (context) => PageMdpOublie(),
                    ),);
  },
                  // child: Expanded(
  
   child: Center(
    
    child: Text(
                "Mot de passe oublie?",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 112, 143, 168),
                 // fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
  ),),)
        ),]
        ),
        Row(
                // ignore: prefer_const_constructors
                mainAxisAlignment: MainAxisAlignment.center,
           
               children: 
                [
                  
            
                Align(
                  child: Container(
                    
                     margin: EdgeInsets.only(top: 10),
                       child: TextButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                               MaterialPageRoute(
                      builder: (context) => PageInscription(),
                    ),);
  },
                  // child: Expanded(
  
   child: Center(
    
    child: Text(
                "Vous n'avez pas de compte?",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 112, 143, 168),
                 // fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
  ),),)
        ),]
        ),
        

            
        ]  ),
        ),
        ), )
     
      );
      
    
  }
}
