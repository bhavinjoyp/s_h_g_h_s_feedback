import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _teacherList = prefs
              .getStringList('ff_teacherList')
              ?.map((x) {
                try {
                  return ClassTeacherStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _teacherList;
    });
    _safeInit(() {
      _activeTeacherList =
          prefs.getStringList('ff_activeTeacherList') ?? _activeTeacherList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ClassTeacherStruct> _teacherList = [
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"6A\",\"classTeacherList\":\"Ms. Mariamma Sofi,Ms. Michelle Domingo,Ms. Mousumi,Ms. Gayathri,Ms. Madhumati,Ms. Eurekha Stanley,Ms. Jaya Mary Biby,Ms. Shiny Regi,Ms. Sneha Vinodh,Ms. Sahana Salimath,Ms. Keerthana,Ms. Mary Rufina,Ms. Sonika Routh,Ms. Pretty Chawla\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"6B\",\"classTeacherList\":\"Ms. Mary Rufina,Ms. Eurekha Stanley,Ms. Mousumi,Ms. Jayanthi S.,Ms. Madhumati,Ms. Mariamma Sofi,Ms. Kiran Jyothi,Ms. Sini Alen,Ms. Shiny Regi,Ms. Sonika Routh,Ms. Pretty Chawla,Ms. Sneha Vinodh,Ms. Sahana Salimath,Ms. Revathi\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"6C\",\"classTeacherList\":\"Ms. Supriya Sen,Ms. Eurekha Stanley,Ms. Priyanka Rastogi,Ms. Jayanthi S.,Ms. Jayanandini,Ms. Mariamma Sofi,Ms. Anuradha B.,Ms. Teena Varghese,Ms. Sneha Vinodh,Ms. Sahana Salimath,Ms. Keerthana\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"7A\",\"classTeacherList\":\"Ms. Teena Varghese,Ms. Catherine Julie,Ms. Michelle Domingo,Ms. Mousumi,Ms. Gayathri,Ms. Madhumati,Ms. Priyanka Rastogi,Ms. Priyadarshini A.,Ms. Mariamma Sofi,Ms. Supriya Sen,Ms. Nimmi Asok,Ms. Deepti  Shetty,Ms. Vailanka Jesline,Ms. Mary Rufina,Ms. Eurekha Stanley,Ms. Savita,Ms. Sahana Salimath,Ms. Keerthana\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"7B\",\"classTeacherList\":\"Ms. Sahana Kamaraj,Ms. Eurekha Stanley,Ms. Mousumi,Ms. Gayathri,Ms. Madhumati,Ms. Priyanka Rastogi,Ms. Mariamma Sofi,Ms. Maya R.,Ms. Jaya Mary Biby,Ms. Anuradha B.,Ms. Shiny Regi,Ms. Mary Rufina,Ms. Savita,Ms. Sahana Salimath,Ms. Keerthana\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"7C\",\"classTeacherList\":\"Ms. Catherine Julie,Ms. Mousumi,Ms. Jayanthi S.,Ms. Priyadarshini A.,Ms. Supriya Sen,Ms. Jaya Mary Biby,Ms. Vailanka Jesline,Ms. Astral Francis,Ms. Shiny Regi,Ms. Mariamma Sofi,Ms. Sneha Vinodh,Ms. Savita,Ms. Sahana Salimath,Ms. Revathi \"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"7D\",\"classTeacherList\":\"Ms. Eurekha Stanley,Ms. Sonika Routh,Ms. Mousumi,Ms. Jayanthi S.,Ms. Pretty Chawla,Ms. Sini Alen,Ms. Kiran Jyothi,Ms. Vailanka Jesline,Ms. Anuradha B.,Ms. Shiny Regi,Ms. Mariamma Sofi,Ms. Sneha Vinodh,Ms. Revathi ,Ms. Sahana Salimath\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"8A\",\"classTeacherList\":\"Ms. Nimmi Asok,Ms. Catherine Julie,Ms. Priyadarshini A.,Ms. Priyanka Rastogi,Ms. Jayanthi S.,Ms. Madhumati,Ms. Mousumi,Ms. Gayathri,Ms. Mary Rufina,Ms. Supriya Sen,Ms. Deepti  Shetty,Ms. Mariamma Sofi,Ms. Shiny Regi,Ms. Jaya Mary Biby,Ms. Maya R.,Ms. Sneha Vinodh,Ms. Sahana Salimath,Ms. Keerthana\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"8B\",\"classTeacherList\":\"Ms. Kiran Jyothi,Ms. Sonali De,Ms. Sonika Routh,Ms. Madhumati,Ms. Mousumi,Ms. Gayathri,Ms. Jayanthi S.,Ms. Priyanka Rastogi,Ms. Mary Rufina,Ms. Catherine Julie,Ms. Jaya Mary Biby,Ms. Deepti  Shetty,Ms. Anuradha B.,Ms. Shiny Regi,Ms. Maya R.,Ms. Sneha Vinodh,Ms. Sahana Salimath,Ms. Keerthana\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"8C\",\"classTeacherList\":\"Ms. Maya R.,Ms. Catherine Julie,Ms. Mousumi,Ms. Madhumati,Ms. Jayanthi S.,Ms. Priyadarshini A.,Ms. Mary Rufina,Ms. Nimmi Asok,Ms. Deepti  Shetty,Ms. Sini Alen,Ms. Teena Varghese,Ms. Vailanka Jesline,Ms. Shiny Regi,Ms. Sahana Salimath,Ms. Savita,Ms. Revathi\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"8D\",\"classTeacherList\":\"Ms. Vailanka Jesline,Ms. Sonali De,Ms. Catherine Julie,Ms. Mousumi,Ms. Madhumati,Ms. Jayanthi S.,Ms. Priyadarshini A.,Ms. Maria Jasmine,Ms. Jaya Mary Biby,Ms. Sahana Kamaraj,Ms. Astral Francis,Ms. Teena Varghese,Ms. Shiny Regi,Ms. Sahana Salimath,Ms. Revathi\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"9A\",\"classTeacherList\":\"Ms. Sini Alen,Ms. Sonali De,Ms. Lyn Veronica Bazely,Ms. Priyanka Rastogi,Ms. Gayathri,Ms. Madhumati,Ms. Mary Rufina,Ms. Jiji D\'Souza,Ms. Kiran Jyothi,Ms. Nimmi Asok,Ms. Sahana Kamaraj,Ms. Priyadarshini A.,Ms. Jayanandini,Ms. Teena Varghese,Ms. Pretty Chawla,Ms. Pushpa Patil,Mr. Rakshith,Ms. Prathna Manoj,Ms. Revathi ,Ms. Lavanya Jane,Ms. Sonika Routh,Ms. Sneha Vinodh\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"9B\",\"classTeacherList\":\"Ms. Sonali De,Ms. Priyanka Rastogi,Ms. Gayathri,Ms. Madhumati,Ms. Jayanandini,Ms. Mary Rufina,Ms. Maya R.,Ms. Nimmi Asok,Ms. Deepti  Shetty,Ms. Anuradha B.,Ms. Sini Alen,Ms. Teena Varghese,Ms. Pretty Chawla,Ms. Pushpa Patil,Mr. Rakshith,Ms. Prathna Manoj,Ms. Revathi ,Ms. Lavanya Jane,Ms. Sonika Routh,Ms. Sneha Vinodh\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"9C\",\"classTeacherList\":\"Ms. Priyadarshini A.,Ms. Sonika Routh,Ms. Priyanka Rastogi,Ms. Gayathri,Ms. Mary Rufina,Ms. Maya R.,Ms. Nimmi Asok,Ms. Sahana Kamaraj,Ms. Sini Alen,Ms. Jayanandini,Ms. Teena Varghese,Ms. Pretty Chawla,Ms. Pushpa Patil,Mr. Rakshith,Ms. Prathna Manoj,Ms. Revathi ,Ms. Lavanya Jane,Ms. Sneha Vinodh,Ms. Astral Francis,Ms. Vinaya Kumar,Ms. Sahana Salimath\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"10A\",\"classTeacherList\":\"Ms. Shiny Regi,Ms. Jozina Braggs ,Ms. Lyn Veronica Bazely,Ms. Priyanka Rastogi,Ms. Gayathri,Ms. Madhumati,Ms. Brinda Joyson,Ms. Jiji D\'Souza,Ms. Spandana,Ms. Vinaya Kumar,Ms. Vailanka Jesline,Ms. Pretty Chawla,Ms. Pushpa Patil,Ms. Kanika Mary,Ms. Lavanya Jane,Ms. Keerthana,Ms. Savita,Ms. Astral Francis,Ms. Jaya Mary Biby,Ms. Anuradha B.,Mr. Rakshith\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"10B\",\"classTeacherList\":\"Ms. Anuradha B.,Ms. Jozina Braggs ,Ms. Lyn Veronica Bazely,Ms. Priyanka Rastogi,Ms. Gayathri,Ms. Madhumati,Ms. Jiji D\'Souza,Ms. Vailanka Jesline,Ms. Maria Jasmine,Ms. Nimmi Asok,Ms. Deepti  Shetty,Ms. Vinaya Kumar,Ms. Pretty Chawla,Ms. Shiny Regi,Ms. Pushpa Patil,Ms. Kanika Mary,Ms. Lavanya Jane,Ms. Keerthana,Ms. Savita,Ms. Astral Francis,Ms. Jaya Mary Biby,Mr. Rakshith\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"10C\",\"classTeacherList\":\"Ms. Deepti  Shetty,Ms. Sonali De,Ms. Priyanka Rastogi,Ms. Gayathri,Ms. Madhumati,Ms. Jiji D\'Souza,Ms. Vailanka Jesline,Ms. Maria Jasmine,Ms. Nimmi Asok,Ms. Deepti  Shetty,Ms. Vinaya Kumar,Ms. Pretty Chawla,Ms. Shiny Regi,Ms. Pushpa Patil,Ms. Kanika Mary,Ms. Lavanya Jane,Ms. Keerthana,Ms. Savita,Ms. Astral Francis,Ms. Jaya Mary Biby,Mr. Rakshith,Ms. Anuradha B.\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"11\",\"classTeacherList\":\"Ms. Astral Francis,Ms. Mary Priyanka,Ms. Sahana Kamaraj,Ms. Spandana,Ms. Lyn Veronica Bazely,Ms. Sonali De,Ms. Savita,Ms. Pushpa Patil,Ms. Pretty Chawla,Ms. Lavanya Jane,Ms. Prathna Manoj,Ms. Teena Varghese,Ms. Kanika Mary,Ms. Vinaya Kumar,Ms. Jiji D\'Souza,Ms. Brinda Joyson\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"12\",\"classTeacherList\":\"Ms. Mary Priyanka,Ms. Sahana Kamaraj,Ms. Spandana,Ms. Lyn Veronica Bazely,Ms. Sonali De,Ms. Savita,Ms. Pushpa Patil,Ms. Pretty Chawla,Ms. Prathna Manoj,Ms. Teena Varghese,Ms. Kanika Mary,Ms. Vinaya Kumar,Ms. Brinda Joyson\"}')),
    ClassTeacherStruct.fromSerializableMap(jsonDecode(
        '{\"classId\":\"9D\",\"classTeacherList\":\"Ms. Jayanandini,Ms. Sonika Routh,Ms. Sonali De,Ms. Priyanka Rastogi,Ms. Gayathri,Ms. Vailanka Jesline,Ms. Maria Jasmine,Ms. Mary Priyanka,Ms. Deepti  Shetty,Ms. Astral Francis,Ms. Priyadarshini A.,Ms. Sini Alen,Ms. Teena Varghese,Ms. Pretty Chawla,Ms. Pushpa Patil,Mr. Rakshith,Ms. Prathna Manoj,Ms. Revathi ,Ms. Lavanya Jane,Ms. Sneha Vinodh,Ms. Vinaya Kumar,Ms. Sahana Salimath\"}'))
  ];
  List<ClassTeacherStruct> get teacherList => _teacherList;
  set teacherList(List<ClassTeacherStruct> value) {
    _teacherList = value;
    prefs.setStringList(
        'ff_teacherList', value.map((x) => x.serialize()).toList());
  }

  void addToTeacherList(ClassTeacherStruct value) {
    teacherList.add(value);
    prefs.setStringList(
        'ff_teacherList', _teacherList.map((x) => x.serialize()).toList());
  }

  void removeFromTeacherList(ClassTeacherStruct value) {
    teacherList.remove(value);
    prefs.setStringList(
        'ff_teacherList', _teacherList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTeacherList(int index) {
    teacherList.removeAt(index);
    prefs.setStringList(
        'ff_teacherList', _teacherList.map((x) => x.serialize()).toList());
  }

  void updateTeacherListAtIndex(
    int index,
    ClassTeacherStruct Function(ClassTeacherStruct) updateFn,
  ) {
    teacherList[index] = updateFn(_teacherList[index]);
    prefs.setStringList(
        'ff_teacherList', _teacherList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTeacherList(int index, ClassTeacherStruct value) {
    teacherList.insert(index, value);
    prefs.setStringList(
        'ff_teacherList', _teacherList.map((x) => x.serialize()).toList());
  }

  String _currentTeacherList = '';
  String get currentTeacherList => _currentTeacherList;
  set currentTeacherList(String value) {
    _currentTeacherList = value;
  }

  List<String> _activeTeacherList = [];
  List<String> get activeTeacherList => _activeTeacherList;
  set activeTeacherList(List<String> value) {
    _activeTeacherList = value;
    prefs.setStringList('ff_activeTeacherList', value);
  }

  void addToActiveTeacherList(String value) {
    activeTeacherList.add(value);
    prefs.setStringList('ff_activeTeacherList', _activeTeacherList);
  }

  void removeFromActiveTeacherList(String value) {
    activeTeacherList.remove(value);
    prefs.setStringList('ff_activeTeacherList', _activeTeacherList);
  }

  void removeAtIndexFromActiveTeacherList(int index) {
    activeTeacherList.removeAt(index);
    prefs.setStringList('ff_activeTeacherList', _activeTeacherList);
  }

  void updateActiveTeacherListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    activeTeacherList[index] = updateFn(_activeTeacherList[index]);
    prefs.setStringList('ff_activeTeacherList', _activeTeacherList);
  }

  void insertAtIndexInActiveTeacherList(int index, String value) {
    activeTeacherList.insert(index, value);
    prefs.setStringList('ff_activeTeacherList', _activeTeacherList);
  }

  String _selectedClass = '';
  String get selectedClass => _selectedClass;
  set selectedClass(String value) {
    _selectedClass = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
