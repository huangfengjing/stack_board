import 'package:flutter/material.dart';
import 'package:stack_board/src/core/stack_board_item/stack_item_status.dart';
import 'package:stack_board/src/stack_board_items/items/stack_image_item.dart';

class StackImageCase extends StatelessWidget {
  const StackImageCase({
    Key? key,
    required this.item,
  }) : super(key: key);

  final StackImageItem item;

  ImageItemContent get content => item.content!;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        initialValue: item.content?.url,
        onChanged: (String url) {
          item.setUrl(url);
        },
      ),
    );
  }
}
