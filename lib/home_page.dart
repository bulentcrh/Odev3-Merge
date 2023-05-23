import 'package:flutter/material.dart';
import 'package:learning_app/project_images.dart';
import 'package:learning_app/project_padding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 239, 237, 237),
     body: Padding(
       padding: ProjectPadding().generalPagePadding,
       child: Column(
        children: [
           _TitleTextModel(),
          _SearchAndFilterBar(),
          SizedBox(height: 20),


          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.indigo,
            child: SizedBox(
              height: 160,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: ProjectPadding().offerTextPadding,
                    child: Column(  
                      crossAxisAlignment: CrossAxisAlignment.start,            
                      children: [
                        Text(
                          "For a short time", 
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white, fontSize: 13, fontStyle: FontStyle.italic  )),
                            SizedBox(height: 2),
                          Text(
                          "30% OFF", 
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 37 )),
                            SizedBox(height: 2),
                          Text(
                          "Fall our Courses", 
                          style: Theme.of(context).textTheme.headline3?.copyWith(
                            color: Colors.white, fontSize: 17, fontStyle: FontStyle.italic)),
                            SizedBox(height: 10),
                    
                            //CustomButton
                            _CustomOfferButton(),
                      ],
                    ),
                  ),
                   Container(
            child: Image.asset(
              ProjectImages().cardImage,
              height: 100,
              width: 100,                
            ),
          ),  
                ],
              ),
            ),
          ),
        ],
       ),
     ),
    );
  }
}

class _CustomOfferButton extends StatelessWidget {
  const _CustomOfferButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
       onPressed: () {}, 
       child: Text("Offer Now Get",
       style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.red, fontWeight: FontWeight.bold)),
       style: ElevatedButton.styleFrom(backgroundColor: Colors.white , shape: const StadiumBorder()),
      ),
    );
  }
}

class _SearchAndFilterBar extends StatelessWidget {
  const _SearchAndFilterBar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // SEARCH BAR
        Container(    
          padding: ProjectPadding().sarchPadding,   
          height: 55,
          width: (MediaQuery.of(context).size.width - 130.0),
          decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(12)
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, size: 30, color: Colors.grey.shade600),
              hintText: "Search", 
              hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
        ),
        // FİLTER CONTAİNER
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)),
          child: IconButton(onPressed: () {}, 
          icon: Icon(Icons.filter_list, size: 40, color: Colors.grey.shade600),

          ),
        ),
     
      ],
    );
  }
}

class _TitleTextModel extends StatelessWidget {
  const _TitleTextModel({ Key? key,}) : super(key: key);

  final String _titleText = "Hello, Henry";
  final String _subtitleText = "Let's Upgrade your skill.";

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 120,
     //color: Colors.red,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Padding(
           padding: ProjectPadding().titleTextPadding,
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [           
               Text(
                 _titleText,
                  style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black)),
               Text(
                 _subtitleText, 
                 style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.grey.shade600), ),
             ],
           ),
         ),
         //PROFİL BUTTON
         Container(
           padding: ProjectPadding().profileImagePadding,
           height: 60,
           width: 60,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
             image: DecorationImage(
               image: AssetImage(ProjectImages().kovboyImage),
               fit: BoxFit.fitWidth,
             ),
           ),  
         ),
       ],     
     ),
    );
  }
}