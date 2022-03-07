import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class profila extends StatefulWidget {
  const profila({Key? key}) : super(key: key);

  @override
  State<profila> createState() => _profilaState();
}

class _profilaState extends State<profila> {
  int _focusedIndex = 0;

  List data = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];

  void _onItemFocus(ColoredBox) {
    setState(() {
      _focusedIndex = 0;
    });
  }

  Widget _buildItemList(BuildContext context, int index) {
    if (index == data.length)
      return Center(
        child: Container(
            height: 300, color: Colors.red, child: CircularProgressIndicator()),
      );

    return Center(
      child: Container(
          width: 150,
          height: 200,
          color: Colors.black,
          child: Icon(Icons.add, color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Horizontal list',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: ScrollSnapList(
              background: Colors.red,
              onItemFocus: _onItemFocus,
              itemBuilder: _buildItemList,
              itemSize: 150,
              dynamicItemSize: true,
              onReachEnd: () {
                print('Done!');
              },
              itemCount: data.length,
            )),
          ],
        ),
      ),
    );
  }
}
