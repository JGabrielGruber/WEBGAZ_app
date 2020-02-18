import 'package:webgaz_app/repositories/usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class IoT {
  String uid;
  DocumentReference reference;

  IoT({this.uid, this.reference});

  IoT.fromMap(Map<String, dynamic> map, String id, {this.reference})
      : uid = id;

  IoT.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(null, null, reference: null);

  Map<String, dynamic> toMap() {
    return null;
  }

  @override
  String toString() => "IoT<$uid>";

}

abstract class IoTListModel extends ChangeNotifier {

  final Firestore _firestoreInstance = null;
  final UsuarioModel _usuario = null;

  final String _collection = null;
  static CollectionReference _reference = null;
  static ObserverList<IoT> _list = null;

  Future<ObserverList<IoT>> get() async {
    return _list;
  }

  Future<ObserverList<IoT>> add(IoT iot) async {
    return _list;
  }

  Future<ObserverList<IoT>> pop(IoT iot) async {
    return _list;
  }

  Future<ObserverList<IoT>> update(IoT iot) async {
    return _list;
  }

  ObserverList<IoT> fromSnapshot(List<DocumentSnapshot> snapshots) {
    return _list;
  }

}