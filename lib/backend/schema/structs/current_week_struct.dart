// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CurrentWeekStruct extends FFFirebaseStruct {
  CurrentWeekStruct({
    DateTime? begins,
    DateTime? monday,
    DateTime? tuesday,
    DateTime? wednesday,
    DateTime? thursday,
    DateTime? friday,
    DateTime? saturday,
    DateTime? sunday,
    DateTime? ends,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _begins = begins,
        _monday = monday,
        _tuesday = tuesday,
        _wednesday = wednesday,
        _thursday = thursday,
        _friday = friday,
        _saturday = saturday,
        _sunday = sunday,
        _ends = ends,
        super(firestoreUtilData);

  // "Begins" field.
  DateTime? _begins;
  DateTime? get begins => _begins;
  set begins(DateTime? val) => _begins = val;

  bool hasBegins() => _begins != null;

  // "Monday" field.
  DateTime? _monday;
  DateTime? get monday => _monday;
  set monday(DateTime? val) => _monday = val;

  bool hasMonday() => _monday != null;

  // "Tuesday" field.
  DateTime? _tuesday;
  DateTime? get tuesday => _tuesday;
  set tuesday(DateTime? val) => _tuesday = val;

  bool hasTuesday() => _tuesday != null;

  // "Wednesday" field.
  DateTime? _wednesday;
  DateTime? get wednesday => _wednesday;
  set wednesday(DateTime? val) => _wednesday = val;

  bool hasWednesday() => _wednesday != null;

  // "Thursday" field.
  DateTime? _thursday;
  DateTime? get thursday => _thursday;
  set thursday(DateTime? val) => _thursday = val;

  bool hasThursday() => _thursday != null;

  // "Friday" field.
  DateTime? _friday;
  DateTime? get friday => _friday;
  set friday(DateTime? val) => _friday = val;

  bool hasFriday() => _friday != null;

  // "Saturday" field.
  DateTime? _saturday;
  DateTime? get saturday => _saturday;
  set saturday(DateTime? val) => _saturday = val;

  bool hasSaturday() => _saturday != null;

  // "Sunday" field.
  DateTime? _sunday;
  DateTime? get sunday => _sunday;
  set sunday(DateTime? val) => _sunday = val;

  bool hasSunday() => _sunday != null;

  // "Ends" field.
  DateTime? _ends;
  DateTime? get ends => _ends;
  set ends(DateTime? val) => _ends = val;

  bool hasEnds() => _ends != null;

  static CurrentWeekStruct fromMap(Map<String, dynamic> data) =>
      CurrentWeekStruct(
        begins: data['Begins'] as DateTime?,
        monday: data['Monday'] as DateTime?,
        tuesday: data['Tuesday'] as DateTime?,
        wednesday: data['Wednesday'] as DateTime?,
        thursday: data['Thursday'] as DateTime?,
        friday: data['Friday'] as DateTime?,
        saturday: data['Saturday'] as DateTime?,
        sunday: data['Sunday'] as DateTime?,
        ends: data['Ends'] as DateTime?,
      );

  static CurrentWeekStruct? maybeFromMap(dynamic data) => data is Map
      ? CurrentWeekStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Begins': _begins,
        'Monday': _monday,
        'Tuesday': _tuesday,
        'Wednesday': _wednesday,
        'Thursday': _thursday,
        'Friday': _friday,
        'Saturday': _saturday,
        'Sunday': _sunday,
        'Ends': _ends,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Begins': serializeParam(
          _begins,
          ParamType.DateTime,
        ),
        'Monday': serializeParam(
          _monday,
          ParamType.DateTime,
        ),
        'Tuesday': serializeParam(
          _tuesday,
          ParamType.DateTime,
        ),
        'Wednesday': serializeParam(
          _wednesday,
          ParamType.DateTime,
        ),
        'Thursday': serializeParam(
          _thursday,
          ParamType.DateTime,
        ),
        'Friday': serializeParam(
          _friday,
          ParamType.DateTime,
        ),
        'Saturday': serializeParam(
          _saturday,
          ParamType.DateTime,
        ),
        'Sunday': serializeParam(
          _sunday,
          ParamType.DateTime,
        ),
        'Ends': serializeParam(
          _ends,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CurrentWeekStruct fromSerializableMap(Map<String, dynamic> data) =>
      CurrentWeekStruct(
        begins: deserializeParam(
          data['Begins'],
          ParamType.DateTime,
          false,
        ),
        monday: deserializeParam(
          data['Monday'],
          ParamType.DateTime,
          false,
        ),
        tuesday: deserializeParam(
          data['Tuesday'],
          ParamType.DateTime,
          false,
        ),
        wednesday: deserializeParam(
          data['Wednesday'],
          ParamType.DateTime,
          false,
        ),
        thursday: deserializeParam(
          data['Thursday'],
          ParamType.DateTime,
          false,
        ),
        friday: deserializeParam(
          data['Friday'],
          ParamType.DateTime,
          false,
        ),
        saturday: deserializeParam(
          data['Saturday'],
          ParamType.DateTime,
          false,
        ),
        sunday: deserializeParam(
          data['Sunday'],
          ParamType.DateTime,
          false,
        ),
        ends: deserializeParam(
          data['Ends'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CurrentWeekStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CurrentWeekStruct &&
        begins == other.begins &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday &&
        sunday == other.sunday &&
        ends == other.ends;
  }

  @override
  int get hashCode => const ListEquality().hash([
        begins,
        monday,
        tuesday,
        wednesday,
        thursday,
        friday,
        saturday,
        sunday,
        ends
      ]);
}

CurrentWeekStruct createCurrentWeekStruct({
  DateTime? begins,
  DateTime? monday,
  DateTime? tuesday,
  DateTime? wednesday,
  DateTime? thursday,
  DateTime? friday,
  DateTime? saturday,
  DateTime? sunday,
  DateTime? ends,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CurrentWeekStruct(
      begins: begins,
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
      ends: ends,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CurrentWeekStruct? updateCurrentWeekStruct(
  CurrentWeekStruct? currentWeek, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    currentWeek
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCurrentWeekStructData(
  Map<String, dynamic> firestoreData,
  CurrentWeekStruct? currentWeek,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (currentWeek == null) {
    return;
  }
  if (currentWeek.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && currentWeek.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final currentWeekData =
      getCurrentWeekFirestoreData(currentWeek, forFieldValue);
  final nestedData =
      currentWeekData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = currentWeek.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCurrentWeekFirestoreData(
  CurrentWeekStruct? currentWeek, [
  bool forFieldValue = false,
]) {
  if (currentWeek == null) {
    return {};
  }
  final firestoreData = mapToFirestore(currentWeek.toMap());

  // Add any Firestore field values
  currentWeek.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCurrentWeekListFirestoreData(
  List<CurrentWeekStruct>? currentWeeks,
) =>
    currentWeeks?.map((e) => getCurrentWeekFirestoreData(e, true)).toList() ??
    [];
