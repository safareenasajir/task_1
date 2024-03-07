import 'package:flutter/material.dart';
import 'package:task1/datas.dart';
import 'package:task1/widgets/post_tile.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    Datas data = Datas();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 216, 223),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child:  const Row(
                children: [Icon(Icons.menu), Spacer(), Icon(Icons.send)],
              ),
            ),
             Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(color: Colors.black38),
                    ),
                    Text(
                      "Roger",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                OutlinedButton.icon(onPressed: (){}, 
                label: const Text('Add content',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                icon: const Icon(Icons.add),

                )
                // button
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 4.0),
              child: Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 5,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: data.item.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image:  DecorationImage(
                              image: AssetImage(data.item[index]['postimg']),
                              fit: BoxFit.cover),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CircleAvatar(backgroundImage: AssetImage(data.item[index]['profileimg']),),
                            const SizedBox(width: 10,),
                            Text(data.item[index]['username'],style: const TextStyle(color: Colors.white),),
                            const SizedBox(width: 10,),

                            Text(data.item[index]['time'],style: const TextStyle(color: Colors.white),)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return PostTile(
                      profileimg: data.item[index]['profileimg'],
                      username: data.item[index]['username'],
                      time: data.item[index]['time'],
                      postimg: data.item[index]['postimg']);
                },
              ),
            )
           
          ],
        ),
      ),
    );
  }
}
