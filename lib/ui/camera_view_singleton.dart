/// A singleton class is a design pattern that restricts the instantiation of a class 
/// to a single object. In other words, it ensures that only one instance of the class 
/// can exist throughout the lifetime of an application.

/// The singleton pattern is commonly used in scenarios where having multiple 
/// instances of a class would be unnecessary or undesirable. Some examples of 
/// its usage include managing shared resources, controlling 
/// access to a limited resource, or maintaining a global state.

import 'dart:ui';

/// Singleton to record size related data
class CameraViewSingleton {
  static double ratio;
  static Size screenSize;
  static Size inputImageSize;
  static Size get actualPreviewSize =>
      Size(screenSize.height, screenSize.height * ratio);
}
