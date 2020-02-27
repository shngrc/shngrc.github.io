import 'package:flutter/material.dart';
import 'package:shngrc/models/photo_model.dart';

class FotoWidget extends StatelessWidget {
  final Foto _foto;
  final double _bottomPadding;
  FotoWidget(this._foto,this._bottomPadding );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
        margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,_bottomPadding),
        child:InkWell(
          child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                  flex: 40,
                  child: Image.asset(
                    _foto.image,
                    fit: BoxFit.cover,
                    
                  )),
            ],
          ),
        ),
      ),
    );
  }
}