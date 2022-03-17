import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class DetailPage extends StatelessWidget {
  // final Menu menu;
 final String name;
 final String location;
 final String stars;
 final String roomPrice;
 final String websiteLink;
 final List<String> imageUrl;
 final List<String> facility;
 final List<String> iconFacility;

  const DetailPage({
    Key? key,
    required this.name,
    required this.location,
    required this.stars,
    required this.roomPrice,
    required this.websiteLink,
    required this.imageUrl,
    required this.facility,
    required this.iconFacility
  }) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(name),
     ),
     body: Container(
       margin: const EdgeInsets.only(left: 50.0, right: 50.0),
       child: Center(
         child: Column(
             children: [
               Container(
                 margin: EdgeInsets.symmetric(vertical: 2.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Column(
                       children: <Widget>[
                         SizedBox(height: 4.0),
                         Text(
                           name,
                           style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                         SizedBox(height: 8.0),
                         Text(
                           location,
                           style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                         SizedBox(height: 8.0),
                         Text(
                           stars,
                           style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 height: 150,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: imageUrl.map((url) {
                     return Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                         child: Image.network(url),
                       ),
                     );
                   }).toList(),
                 ),
               ),
               SizedBox(height: 10),
               Text("${facility}",style: TextStyle(fontWeight: FontWeight.normal),),
               _downloadButton(context)
             ]
         ),
       ),
     ),
   );
 }
 Widget _downloadButton(BuildContext context) {
   return Container(
     padding: EdgeInsets.symmetric(horizontal: 20,
         vertical: 10),
     width: MediaQuery.of(context).size.width,
     child: ElevatedButton(
       onPressed: () {
         String text = "Undifined Link";
         SnackBar snackBar = SnackBar(
           content: Text(text),
         );

         ScaffoldMessenger.of(context).showSnackBar(snackBar);
       },
       child: const Text(' Go to Website'),
     ),
   );
 }
}
