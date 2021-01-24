import 'package:flutter/cupertino.dart';
import '../../../blocs/imc_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cálculo de IMC"),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CupertinoTextField(
              placeholder: "Altura (cm)",
              controller: bloc.heightController,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CupertinoTextField(
              placeholder: "Peso (kg)",
              controller: bloc.weightController,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              bloc.result,
              textAlign: TextAlign.center,
            ),
          ),
          CupertinoButton.filled(
            child: Text("Calcular"),
            onPressed: () {
              setState(() {
                bloc.calculate();
              });
            },
          ),
        ],
      ),
    );
  }
}
