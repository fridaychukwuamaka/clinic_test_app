import 'dart:async';

import 'package:clinic_test_app/feature/home/data/model/clinic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final featureListProvider = StreamProvider.autoDispose((ref) {
  return FirebaseFirestore.instance
      .collection('clinic')
      .where('tag', isEqualTo: 'featured')
      .limit(4)
      .withConverter<Clinic>(
        fromFirestore: (snapshot, _) => Clinic.fromJson(snapshot.data()!),
        toFirestore: (clinic, _) => clinic.toJson(),
      )
      .snapshots()
      .transform<List<Clinic>>(clinicListTx());
});

final nearbyListProvider = StreamProvider.autoDispose((ref) {
  return FirebaseFirestore.instance
      .collection('clinic')
      .where('tag', isEqualTo: 'nearby')
      .limit(4)
      .withConverter<Clinic>(
        fromFirestore: (snapshot, _) => Clinic.fromJson(snapshot.data()!),
        toFirestore: (clinic, _) => clinic.toJson(),
      )
      .snapshots()
      .transform<List<Clinic>>(clinicListTx());
});

final recentListProvider = StreamProvider.autoDispose((ref) {
  return FirebaseFirestore.instance
      .collection('clinic')
      .where('tag', isEqualTo: 'recent')
      .limit(4)
      .withConverter<Clinic>(
        fromFirestore: (snapshot, _) => Clinic.fromJson(snapshot.data()!),
        toFirestore: (clinic, _) => clinic.toJson(),
      )
      .snapshots()
      .transform<List<Clinic>>(clinicListTx());
});

StreamTransformer<QuerySnapshot<Clinic>, List<Clinic>> clinicListTx() {
  return StreamTransformer.fromHandlers(
    handleData: (snapshot, sink) {
      final clinics = snapshot.docs.map((e) => e.data()).toList();
      sink.add(clinics);
    },
  );
}
