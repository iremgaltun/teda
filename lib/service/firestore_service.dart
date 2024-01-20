import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Firestore'a yeni bir tedarik ekleyin
  Future<void> tedarikEkle(String isim, String sektor, String aciklama, double fiyat) async {
    await _firestore.collection('tedarikler').add({
      'isim': isim,
      'sektor': sektor,
      'aciklama': aciklama,
      'fiyat': fiyat,
    });
  }

  // Firestore'dan tüm tedarikleri alın
  Stream<QuerySnapshot> getTedarikler() {
    return _firestore.collection('tedarikler').snapshots();
  }
}
