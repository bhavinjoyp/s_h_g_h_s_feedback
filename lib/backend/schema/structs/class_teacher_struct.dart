// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassTeacherStruct extends BaseStruct {
  ClassTeacherStruct({
    String? classId,
    String? classTeacherList,
  })  : _classId = classId,
        _classTeacherList = classTeacherList;

  // "classId" field.
  String? _classId;
  String get classId => _classId ?? '';
  set classId(String? val) => _classId = val;

  bool hasClassId() => _classId != null;

  // "classTeacherList" field.
  String? _classTeacherList;
  String get classTeacherList => _classTeacherList ?? '';
  set classTeacherList(String? val) => _classTeacherList = val;

  bool hasClassTeacherList() => _classTeacherList != null;

  static ClassTeacherStruct fromMap(Map<String, dynamic> data) =>
      ClassTeacherStruct(
        classId: data['classId'] as String?,
        classTeacherList: data['classTeacherList'] as String?,
      );

  static ClassTeacherStruct? maybeFromMap(dynamic data) => data is Map
      ? ClassTeacherStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'classId': _classId,
        'classTeacherList': _classTeacherList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'classId': serializeParam(
          _classId,
          ParamType.String,
        ),
        'classTeacherList': serializeParam(
          _classTeacherList,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClassTeacherStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClassTeacherStruct(
        classId: deserializeParam(
          data['classId'],
          ParamType.String,
          false,
        ),
        classTeacherList: deserializeParam(
          data['classTeacherList'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClassTeacherStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClassTeacherStruct &&
        classId == other.classId &&
        classTeacherList == other.classTeacherList;
  }

  @override
  int get hashCode => const ListEquality().hash([classId, classTeacherList]);
}

ClassTeacherStruct createClassTeacherStruct({
  String? classId,
  String? classTeacherList,
}) =>
    ClassTeacherStruct(
      classId: classId,
      classTeacherList: classTeacherList,
    );
