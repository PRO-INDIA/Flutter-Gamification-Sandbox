import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Offers extends StatelessWidget {
  const Offers({super.key, required this.Data});
  final Data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: Colors.grey,
              width: 0.1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              width: 400.0,
              margin: EdgeInsets.only(right: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          Data[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Data[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(Data[index].subTitle),
                              Data[index].button
                            ]),
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
