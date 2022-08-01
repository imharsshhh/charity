import 'package:flutter/material.dart';

class ImageCardWidget extends StatefulWidget {
  const ImageCardWidget({
    Key? key,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  final String imageUrl;
  final VoidCallback onTap;

  @override
  State<ImageCardWidget> createState() => _ImageCardWidgetState();
}

class _ImageCardWidgetState extends State<ImageCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Center(
          child: Image.asset(
            widget.imageUrl,
          ),
        ),
      ),
    );
  }
}
