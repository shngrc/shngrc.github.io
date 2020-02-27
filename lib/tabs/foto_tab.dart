import 'package:flutter/material.dart';
import 'package:shngrc/config/photo.dart';
import 'package:shngrc/models/photo_model.dart';
import 'package:shngrc/widgets/foto_widget.dart';
import 'package:shngrc/widgets/responsive_widget.dart';

class FotoTab extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ResponsiveWidget(
      largeScreen: GridView.count(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        crossAxisCount: 6,
        crossAxisSpacing: 5,
        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height),
        children: List.generate(
           foto.length, (index) => FotoWidget(foto[index], 0)),
        ),
         smallScreen: ListView.builder(
          itemCount: foto.length,
          itemBuilder: (context, index) => FotoWidget(
              foto[index], (index == foto.length - 1 ? 16.0 : 0))),
    );
  }
}