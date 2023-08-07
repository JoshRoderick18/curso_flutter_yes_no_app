import 'package:flutter/material.dart';

class ResponseMessageBubble extends StatelessWidget {
  const ResponseMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Necesito que vengas a laburar el domingo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBubble(),

        // TODO: Add the image
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://yesno.wtf/assets/no/29-6bf57c5bf3fed2dcdbed64afff7a7930.gif");
  }
}
