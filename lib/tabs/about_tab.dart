import 'package:shngrc/config/assets.dart';
import 'package:shngrc/config/constats.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:shngrc/widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.network('https://pbs.twimg.com/profile_images/1223810410945474566/-ZwShY_i_400x400.jpg').image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Shania Gracia',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Member of JKT48 Team KIII.',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text('Twitter'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'SHNGRC'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'SHNGRC'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}