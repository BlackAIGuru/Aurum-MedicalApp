// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScoreStruct extends FFFirebaseStruct {
  ScoreStruct({
    int? id,
    int? idxscore,
    bool? flag,
    String? selected,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _idxscore = idxscore,
        _flag = flag,
        _selected = selected,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "idxscore" field.
  int? _idxscore;
  int get idxscore => _idxscore ?? 0;
  set idxscore(int? val) => _idxscore = val;
  void incrementIdxscore(int amount) => _idxscore = idxscore + amount;
  bool hasIdxscore() => _idxscore != null;

  // "flag" field.
  bool? _flag;
  bool get flag => _flag ?? false;
  set flag(bool? val) => _flag = val;
  bool hasFlag() => _flag != null;

  // "selected" field.
  String? _selected;
  String get selected => _selected ?? '';
  set selected(String? val) => _selected = val;
  bool hasSelected() => _selected != null;

  static ScoreStruct fromMap(Map<String, dynamic> data) => ScoreStruct(
        id: castToType<int>(data['id']),
        idxscore: castToType<int>(data['idxscore']),
        flag: data['flag'] as bool?,
        selected: data['selected'] as String?,
      );

  static ScoreStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ScoreStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'idxscore': _idxscore,
        'flag': _flag,
        'selected': _selected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'idxscore': serializeParam(
          _idxscore,
          ParamType.int,
        ),
        'flag': serializeParam(
          _flag,
          ParamType.bool,
        ),
        'selected': serializeParam(
          _selected,
          ParamType.String,
        ),
      }.withoutNulls;

  static ScoreStruct fromSerializableMap(Map<String, dynamic> data) =>
      ScoreStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idxscore: deserializeParam(
          data['idxscore'],
          ParamType.int,
          false,
        ),
        flag: deserializeParam(
          data['flag'],
          ParamType.bool,
          false,
        ),
        selected: deserializeParam(
          data['selected'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ScoreStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScoreStruct &&
        id == other.id &&
        idxscore == other.idxscore &&
        flag == other.flag &&
        selected == other.selected;
  }

  @override
  int get hashCode => const ListEquality().hash([id, idxscore, flag, selected]);
}

ScoreStruct createScoreStruct({
  int? id,
  int? idxscore,
  bool? flag,
  String? selected,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ScoreStruct(
      id: id,
      idxscore: idxscore,
      flag: flag,
      selected: selected,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ScoreStruct? updateScoreStruct(
  ScoreStruct? score, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    score
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addScoreStructData(
  Map<String, dynamic> firestoreData,
  ScoreStruct? score,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (score == null) {
    return;
  }
  if (score.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && score.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final scoreData = getScoreFirestoreData(score, forFieldValue);
  final nestedData = scoreData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = score.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getScoreFirestoreData(
  ScoreStruct? score, [
  bool forFieldValue = false,
]) {
  if (score == null) {
    return {};
  }
  final firestoreData = mapToFirestore(score.toMap());

  // Add any Firestore field values
  score.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getScoreListFirestoreData(
  List<ScoreStruct>? scores,
) =>
    scores?.map((e) => getScoreFirestoreData(e, true)).toList() ?? [];
