import 'package:flutter/material.dart';
class AlhadiCard extends StatelessWidget{
  final Widget child;
  const AlhadiCard({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20),
    child: child,),
    );

  }

}