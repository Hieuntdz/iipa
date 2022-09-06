import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, this.url}) : super(key: key);
  final String? url;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CachedNetworkImage(
          imageUrl: widget.url ?? '',
          width: double.infinity,
        ),
      ),
    );
  }
}
