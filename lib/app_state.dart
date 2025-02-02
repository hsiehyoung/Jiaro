import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _customNotifySentence =
        prefs.getString('ff_customNotifySentence') ?? _customNotifySentence;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _dialogueContent = [
    '你今天過得還好嗎？現在可以跟我說任何煩惱囉！',
    '我這陣子剛失戀，心情不太好...\n我們曾經有那麼多美好的回憶，但現在都煙消雲散了。我現在覺得好孤單好空虛',
    '我很能理解你的感受....你願意再跟我多分享你腦中的想法嗎...?'
  ];
  List<String> get dialogueContent => _dialogueContent;
  set dialogueContent(List<String> _value) {
    _dialogueContent = _value;
  }

  void addToDialogueContent(String _value) {
    _dialogueContent.add(_value);
  }

  void removeFromDialogueContent(String _value) {
    _dialogueContent.remove(_value);
  }

  void removeAtIndexFromDialogueContent(int _index) {
    _dialogueContent.removeAt(_index);
  }

  void updateDialogueContentAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_dialogueContent[_index]);
  }

  int _candyCount = 0;
  int get candyCount => _candyCount;
  set candyCount(int _value) {
    _candyCount = _value;
  }

  String _pagename = '';
  String get pagename => _pagename;
  set pagename(String _value) {
    _pagename = _value;
  }

  String _customNotifySentence = '一起來練習面對情緒吧！';
  String get customNotifySentence => _customNotifySentence;
  set customNotifySentence(String _value) {
    _customNotifySentence = _value;
    prefs.setString('ff_customNotifySentence', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
