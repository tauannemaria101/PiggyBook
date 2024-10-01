import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LivrosRecord extends FirestoreRecord {
  LivrosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Livro_Imagem" field.
  String? _livroImagem;
  String get livroImagem => _livroImagem ?? '';
  bool hasLivroImagem() => _livroImagem != null;

  // "Favorito" field.
  bool? _favorito;
  bool get favorito => _favorito ?? false;
  bool hasFavorito() => _favorito != null;

  // "Livro_Nome" field.
  String? _livroNome;
  String get livroNome => _livroNome ?? '';
  bool hasLivroNome() => _livroNome != null;

  void _initializeFields() {
    _livroImagem = snapshotData['Livro_Imagem'] as String?;
    _favorito = snapshotData['Favorito'] as bool?;
    _livroNome = snapshotData['Livro_Nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Livros');

  static Stream<LivrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LivrosRecord.fromSnapshot(s));

  static Future<LivrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LivrosRecord.fromSnapshot(s));

  static LivrosRecord fromSnapshot(DocumentSnapshot snapshot) => LivrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LivrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LivrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LivrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LivrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLivrosRecordData({
  String? livroImagem,
  bool? favorito,
  String? livroNome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Livro_Imagem': livroImagem,
      'Favorito': favorito,
      'Livro_Nome': livroNome,
    }.withoutNulls,
  );

  return firestoreData;
}

class LivrosRecordDocumentEquality implements Equality<LivrosRecord> {
  const LivrosRecordDocumentEquality();

  @override
  bool equals(LivrosRecord? e1, LivrosRecord? e2) {
    return e1?.livroImagem == e2?.livroImagem &&
        e1?.favorito == e2?.favorito &&
        e1?.livroNome == e2?.livroNome;
  }

  @override
  int hash(LivrosRecord? e) =>
      const ListEquality().hash([e?.livroImagem, e?.favorito, e?.livroNome]);

  @override
  bool isValidKey(Object? o) => o is LivrosRecord;
}
