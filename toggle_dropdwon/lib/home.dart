import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<bool> toggle = [true, false];
  bool toggle1 = false;
  String dropdown = "red";
  String radiobutton = "menu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 246, 247),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          ToggleButtons(
            fillColor: const Color.fromARGB(255, 96, 56, 253),
            borderRadius: BorderRadius.circular(10),
            isSelected: toggle,
            onPressed: (int index) {
              setState(() {
                toggle[index] = !toggle[index];
              });
            },
            children: const [Text('on'), Text('off')],
          ),
          const SizedBox(height: 10),
          ToggleButtons(
              fillColor: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
              isSelected: [toggle1, !toggle1],
              onPressed: (index) {
                setState(() {
                  if (index == 0) {
                    toggle1 = !toggle1;
                  } else {
                    toggle1 = !toggle1;
                  }
                });
              },
              children: const [Text("on"), Text("off")]),
          const SizedBox(
            height: 20,
          ),
          DropdownButton<String>(
              focusColor: Colors.amberAccent,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              borderRadius: BorderRadius.circular(10),
              dropdownColor: const Color.fromARGB(255, 219, 221, 228),
              value: dropdown,
              items: const [
                DropdownMenuItem<String>(value: "red", child: Text("read")),
                DropdownMenuItem<String>(value: "blue", child: Text("blue")),
                DropdownMenuItem<String>(value: "blue", child: Text("green")),
              ],
              onChanged: (String? newvalue) {
                setState(() {
                  dropdown = newvalue!;
                });
              }),
          RadioListTile<String>(
              title: const Text("read"),
              value: "1",
              groupValue: radiobutton,
              onChanged: (newvalue) {
                setState(() {
                  radiobutton = newvalue!;
                });
              }),
          RadioListTile<String>(
              title: const Text("blue"),
              value: "2",
              groupValue: radiobutton,
              onChanged: (newvalue) {
                setState(() {
                  radiobutton = newvalue!;
                });
              }),
          RadioListTile<String>(
            title: const Text("green"),
            value: "3",
            groupValue: radiobutton,
            onChanged: (value) {
              setState(() {
                radiobutton = value!;
              });
            },
          ),
        ],
      )),
    );
  }
}
