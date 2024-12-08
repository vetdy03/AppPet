import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MascotaRecord extends FirestoreRecord {
  MascotaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomMas" field.
  String? _nomMas;
  String get nomMas => _nomMas ?? '';
  bool hasNomMas() => _nomMas != null;

  // "raza" field.
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "tamanio" field.
  List<String>? _tamanio;
  List<String> get tamanio => _tamanio ?? const [];
  bool hasTamanio() => _tamanio != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fotoMas" field.
  String? _fotoMas;
  String get fotoMas => _fotoMas ?? '';
  bool hasFotoMas() => _fotoMas != null;

  void _initializeFields() {
    _nomMas = snapshotData['nomMas'] as String?;
    _raza = snapshotData['raza'] as String?;
    _color = snapshotData['color'] as String?;
    _tamanio = getDataList(snapshotData['tamanio']);
    _edad = castToType<int>(snapshotData['edad']);
    _descripcion = snapshotData['descripcion'] as String?;
    _fotoMas = snapshotData['fotoMas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mascota');

  static Stream<MascotaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MascotaRecord.fromSnapshot(s));

  static Future<MascotaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MascotaRecord.fromSnapshot(s));

  static MascotaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MascotaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MascotaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MascotaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MascotaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MascotaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMascotaRecordData({
  String? nomMas,
  String? raza,
  String? color,
  int? edad,
  String? descripcion,
  String? fotoMas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomMas': nomMas,
      'raza': raza,
      'color': color,
      'edad': edad,
      'descripcion': descripcion,
      'fotoMas': fotoMas,
    }.withoutNulls,
  );

  return firestoreData;
}

class MascotaRecordDocumentEquality implements Equality<MascotaRecord> {
  const MascotaRecordDocumentEquality();

  @override
  bool equals(MascotaRecord? e1, MascotaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomMas == e2?.nomMas &&
        e1?.raza == e2?.raza &&
        e1?.color == e2?.color &&
        listEquality.equals(e1?.tamanio, e2?.tamanio) &&
        e1?.edad == e2?.edad &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fotoMas == e2?.fotoMas;
  }

  @override
  int hash(MascotaRecord? e) => const ListEquality().hash([
        e?.nomMas,
        e?.raza,
        e?.color,
        e?.tamanio,
        e?.edad,
        e?.descripcion,
        e?.fotoMas
      ]);

  @override
  bool isValidKey(Object? o) => o is MascotaRecord;
}
