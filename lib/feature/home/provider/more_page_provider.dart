import 'package:clinic_test_app/feature/home/data/model/clinic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final morePageProvider = StateNotifierProvider.autoDispose
    .family<MorePageNotifier, AsyncValue<List<Clinic>>, String>(
        (ref, tag) => MorePageNotifier(tag));

class MorePageNotifier extends StateNotifier<AsyncValue<List<Clinic>>> {
  MorePageNotifier(this._tag) : super(const AsyncValue.loading()) {
    onRefresh();
  }

  final String _tag;

  final List<QueryDocumentSnapshot<Clinic>> _documentList = [];
  RefreshController refreshController = RefreshController();

  onRefresh() async {
    List<QueryDocumentSnapshot<Clinic>> newDocumentList =
        (await FirebaseFirestore.instance
                .collection('clinic')
                .where('tag', isEqualTo: _tag)
                .withConverter<Clinic>(
                  fromFirestore: (snapshot, _) =>
                      Clinic.fromJson(snapshot.data()!),
                  toFirestore: (clinic, _) => clinic.toJson(),
                )
                .limit(10)
                .get())
            .docs;
    _documentList.clear();
    _updateSate(newDocumentList);
  }

  onLoading() async {
    List<QueryDocumentSnapshot<Clinic>> newDocumentList =
        (await FirebaseFirestore.instance
                .collection('clinic')
                .where('tag', isEqualTo: _tag)
                .startAfterDocument(_documentList[_documentList.length - 1])
                .withConverter<Clinic>(
                  fromFirestore: (snapshot, _) =>
                      Clinic.fromJson(snapshot.data()!),
                  toFirestore: (clinic, _) => clinic.toJson(),
                )
                .limit(10)
                .get())
            .docs;
    _updateSate(newDocumentList, forLoading: true);
  }

  void _updateSate(List<QueryDocumentSnapshot<Clinic>> newDocumentList,
      {bool forLoading = false}) {
    _documentList.addAll(newDocumentList);
    if (forLoading) {
      refreshController.loadComplete();
    } else {
      refreshController.refreshCompleted();
    }
    state = AsyncValue.data(_documentList.map((e) => e.data()).toList());
  }
}
