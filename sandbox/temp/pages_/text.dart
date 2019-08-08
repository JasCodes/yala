import 'package:flutter/material.dart';
import 'package:yala/navigation/screen.dart';

class TextPage extends StatefulWidget {
  const TextPage({Key key, this.screen}) : super(key: key);

  final Screen screen;

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: 'sample text: ${widget.screen.title}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.screen.title),
        // backgroundColor: widget.screen.color,
      ),
      // backgroundColor: widget.screen.color[50],
      body: Container(
        padding: const EdgeInsets.all(32.0),
        alignment: Alignment.center,
        child: TextField(controller: _textController),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
