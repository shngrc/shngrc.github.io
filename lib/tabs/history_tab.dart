import 'package:flutter/material.dart';

class HistoryTab extends StatefulWidget{
  @override
  _StepperState createState() => _StepperState();
}

class _StepperState extends State<HistoryTab>{
  int _currentStep = 0;
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints.expand(height: 500),
        child:
          Stepper(
            type: StepperType.vertical,
            currentStep: _currentStep,
            onStepTapped: (int step) => setState(() => _currentStep = step),
            onStepContinue: _currentStep < 10 ? () => setState(() => _currentStep += 1) : null,
            onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
            steps: [
              Step(
                title: Text('15.03.2014'),
                content: Text('Lolos Final Audisi JKT48 Gen 3'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('18.03.2014'),
                content: Text('Gracia mengikuti event Handshake Pertama Kali'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('24.03.2014'),
                content: Text('Gracia membawakan unit Tenshi no Shippo'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('24.01.2015'),
                content: Text('Terpilih sebagai member Tim T JKT48'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 3 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('15.03.2015'),
                content: Text('Shonici setlist TwT, membawakan Unit Song Glory Days'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 4 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('18.12.2015'),
                content: Text('Masuk Undergirls Single 12 JKT48'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 5 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('27.02.2016'),
                content: Text('Meraih peringkat 9 SSK Single 13'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 6 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('11.08.2016'),
                content: Text('Shania Gracia dipindahkan ke Tim KIII'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 7 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('22.03.2017'),
                content: Text('Meraih Peringkat 4 SSK Single 17'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 8 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('17.11.2018'),
                content: Text('Meraih Peringkat 8 SSK Single 20'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 9 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('30.11.2019'),
                content: Text('Meraih Peringkat 10 SSK Single Original'),
                isActive: _currentStep >= 0,
                state: _currentStep >= 10 ? StepState.complete : StepState.disabled,
              ),
            ],
          ),
      ),
    );
  }
}