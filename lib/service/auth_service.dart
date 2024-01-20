
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService{
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseFirestore = FirebaseFirestore.instance;

  
  Future<String?> singIn(String email, String password)async{
    String? res;
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
      res = "success";
    }on FirebaseAuthException catch (e) {
            if (e.code == "user-not-found" || e.code == "wrong-password") {
        throw FirebaseAuthException(
          code: e.code,
          message: "Geçersiz e-mail veya Şifre",
        );
      } else {
        rethrow;
      }
    
    
    }
    return res; 

 }

 Future<String?> singUp(String email, String password,String kullaniciAdi,String adSoyad)async{
    String? res;
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
        final uid = result.user?.uid;
      try {
        final resultData = await firebaseFirestore.collection("/Users").doc(uid).set({
          "email":email,
          "kullaniciAdi":kullaniciAdi,
          "adSoyad":adSoyad,
          "telNo":""

        });
        
        
      } catch (e) {
        print("Firestore yazma hatası: $e");
        
      }
      res ="success";
      
    }on FirebaseAuthException catch (e) {
      switch(e.code){
        case "email-already-in-use":
          res ="Bu Maile Ait  Zaten Bİr Hesap Mevcut";
          break;
        case "ERROR_INVALİD_EMAİL":
          res= "Geçersiz Mail";
          break;
        default:
        res = "Bir Hata İle Karşılaşıldı";
        break;

      }

    
    
    }
    return res; 

 }
 


}


