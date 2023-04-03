import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:too_see/widgets/locationUser.dart';
import 'package:too_see/widgets/mapScreen.dart';
import 'dart:async';


final Completer<GoogleMapController>_controller=
      Completer<GoogleMapController>();
 
    
 const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffC4EEF2),
        child: Container(
          margin: const EdgeInsets.only(top: 59),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color(0xffFFFFFF),
          ),
          child: Container(
            child: Column(
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                             Text(
                              
                              'GPS',
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'cairo-Bold',
                                color: Color(0xff16558C),
                              ),
                            ),
                          
                            Spacer(),
                             GestureDetector(
                              onTap: (){
                        Navigator.pop(context);
                      },child: Image(image: AssetImage("icons/back-button.png"))),
                          
                        ],
                      ),),
                      Container(
      width: 340,
      height: 400,
      
      child: mapScreen()
        
      ),
            
                SizedBox(
                  height: 10,
                  
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Container(
                    height: 171,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xff699EBF).withOpacity(0.8),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          'Send location to',
                          style: TextStyle(
                              fontFamily: 'Notosans-semiBold',
                              fontSize: 16,
                              color: Color(0xfffFFFFFF)),
                        ),
                        SizedBox(
                          height: 5,
                          
                        ),
                        Expanded(
                          child:  ListView.builder(
      
                  scrollDirection: Axis.horizontal,
                  
                  itemBuilder: ((context, index) {
                   return Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: const locationUser(),
                   );
                     
                                       }),),
                        )
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
