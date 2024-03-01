import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 238, 216, 223),
      body: 
      
      
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(Icons.send)
                  ],
                ),
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello,",style: TextStyle(color: Colors.black38),),
                      Text("Roger",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Spacer(),
                  // button
        
                  
                ],
              ),
               Row(
                children: [
                  ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 200,
                    color: Colors.black,
                  )

                  
                ],
              ),
                ],
              ),
              
              const Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage('assets/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),),
                  SizedBox(width: 10,),
                  Text("Trevor",style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 10,),
        
                  Text("15m"),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
              
              Container(
                height: 200,
                width: 500,
                child: Image.asset("assets/image2.jpg.jpg")),
                const Row(
                  
                  children: [
                    Icon(Icons.heart_broken),
                    SizedBox(width: 10,),
                    Icon(Icons.comment_bank_rounded),
                    SizedBox(width: 10,),
                    Icon(Icons.share),
                    Spacer(),
                    Icon(Icons.save),
        
                  ],
                ),
                const Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage('assets/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),),
                  SizedBox(width: 10,),
                  Text("Aspen",style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 10,),
        
                  Text("1hr"),
                  Spacer(),
                  Icon(Icons.more_vert)
                  ],
                ),
                Container(
                height: 200,
                width: 500,
                child: Image.asset("assets/image2.jpg.jpg")),
                const Row(
                  
                  children: [
                    Icon(Icons.heart_broken),
                    SizedBox(width: 10,),
                    Icon(Icons.comment_bank_rounded),
                    SizedBox(width: 10,),
                    Icon(Icons.share),
                    Spacer(),
                    Icon(Icons.save),
        
                  ],
                ),
                 const Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage('assets/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),),
                  SizedBox(width: 10,),
                  Text("Cristofer",style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 10,),
        
                  Text("2hr"),
                  Spacer(),
                  Icon(Icons.more_vert)
                  ],
                ),
                Container(
                height: 200,
                width: 500,
                child: Image.asset("assets/sunset-1373171_1280.jpg")),
                 const Row(
                  
                  children: [
                    Icon(Icons.heart_broken),
                    SizedBox(width: 10,),
                    Icon(Icons.comment_bank_rounded),
                    SizedBox(width: 10,),
                    Icon(Icons.share),
                    Spacer(),
                    Icon(Icons.save),
        
                  ],
                ),
                
              
            ],
          ),
        ),
      ),
    );
  }
}