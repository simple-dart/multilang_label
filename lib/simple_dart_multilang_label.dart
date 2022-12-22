import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_multilang_controller/simple_dart_multilang_controller.dart';

class MultilangLabel extends Label {
  String _langKey = '';

  set langKey(String value) {
    _langKey = value;
    reRender();
  }

  String get langKey => _langKey;

  @override
  void reRender() {
    if (langKey.isNotEmpty) {
      caption = multilangController.translate(_langKey);
    }
  }
}
