import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

abstract class Database {
  Future<void> createJob(Map<String, dynamic> jobData);
}

class FirestoreDatabase implements Database {
  FirestoreDatabase({@required this.uid}) : assert(uid != null);

  final String uid;

  Future<void> createJob(Map<String, dynamic> jobData) async {
    final path = '/users/$uid/jobs/M31dv37XOobEAN98axBm';
    final documentReference = Firestore.instance.document(path);
    await documentReference.setData(jobData);
  }
}
