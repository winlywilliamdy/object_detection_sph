/// HomeView will shows the camera output to our UI.
/// The output of the camera will be processed and then
/// passed to our image classifier. The result of the image classifier
/// will be converted into bounding boxes. So, for this widget, we will
/// stack the camera output (CameraView) and bounding boxes.

import 'package:flutter/material.dart';
import 'package:object_detection/tflite/recognition.dart';
import 'package:object_detection/ui/box_widget.dart';

import 'camera_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Recognition> results;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          // Camera Output
          CameraView(resultsCallback),

          // Bounding boxes
          boundingBoxes(results)
        ],
      ),
    );
  }

  /// Returns Stack of bounding boxes
  Widget boundingBoxes(List<Recognition> results) {
    if (results == null) {
      return Container();
    }
    return Stack(
      children: results
          .map((e) => BoxWidget(
                result: e,
              ))
          .toList(),
    );
  }

  /// Callback to get inference results from [CameraView]
  void resultsCallback(List<Recognition> results) {
    setState(() {
      this.results = results;
    });
  }
}
