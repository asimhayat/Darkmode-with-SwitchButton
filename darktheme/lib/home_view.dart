import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomeView extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggleTheme;

  const HomeView({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Theme Application"),
        actions: [
          FlutterSwitch(
            value: widget.isDarkMode,
            onToggle: widget.onToggleTheme,
            activeColor: widget.isDarkMode
                ? Colors.black54
                : Theme.of(context)
                    .primaryColor, // Change the activeColor based on dark mode
            width: 60.0,
            height: 30.0,
            toggleSize: 30.0,
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Flutter Theme Application",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
