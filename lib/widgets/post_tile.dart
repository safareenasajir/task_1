import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final String profileimg;
  final String username;
  final String time;
  final String postimg;

  const PostTile({required this.profileimg,required this.username,required this.time,required this.postimg,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [  Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(profileimg),),
                  const SizedBox(width: 10,),
                  Text(username,style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 10,),
        
                  Text(time),
                  const Spacer(),
                  const Icon(Icons.more_vert)
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 400,
                  
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),image: DecorationImage(image: AssetImage(postimg),fit: BoxFit.cover)) ,
                  ),
              ),
                const Row(
                  
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 10,),
                    Icon(Icons.comment),
                    SizedBox(width: 10,),
                    Icon(Icons.share),
                    Spacer(),
                    Icon(Icons.save),
        
                  ],
                ),],
             );
  }
}