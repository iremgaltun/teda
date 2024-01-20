import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teda1/pages/LoginPage.dart';
import 'package:teda1/service/auth_service.dart';

class kayitPage extends StatefulWidget {
  const kayitPage({super.key});

  @override
  State<kayitPage> createState() => _kayitPageState();
}

class _kayitPageState extends State<kayitPage> {
  late String email,password,kullaniciAdi,adSoyad;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth =FirebaseAuth.instance;
  final authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formkey,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset("assets/images/login.png"),
              ),
              
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
          
                child: Row(children: [
                  const Icon(
                    Icons.mail,
                    size: 27,
                    color: Color(0xFF475269),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Bilgileri eksiksiz doldurunuz";
                        }
                        return null;
                      },
                      onSaved: (value){
                        email =value!;
                        
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "E-mail"),
                    ),
                  )
                ])
                ,
              ),
              const SizedBox(height: 30),
                Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
          
                child: Row(children: [
                  const Icon(
                    Icons.person,
                    size: 27,
                    color: Color(0xFF475269),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Bilgileri eksiksiz doldurunuz";
                        }
                        return null;
                      },
                      onSaved: (value){
                        kullaniciAdi =value!;
                        
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Kullanıcı Adı"),
                    ),
                  )
                ])
                ,
              ),
              const SizedBox(height: 30),
                Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
          
                child: Row(children: [
                  const Icon(
                    Icons.person,
                    size: 27,
                    color: Color(0xFF475269),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Bilgileri eksiksiz doldurunuz";
                        }
                        return null;
                      },
                      onSaved: (value){
                        adSoyad=value!;
                        
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ad Soyad"),
                    ),
                  )
                ])
                ,
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                    color: const Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                    ),
                child: Row(children: [
                  Icon(
                    Icons.lock,
                    size: 27,
                    color: const Color(0xFF475629).withOpacity(0.3),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 250,
                    child: TextFormField(

                      validator: (value){
                      if(value!.isEmpty){
                          return "Bilgileri eksiksiz doldurunuz";
                        }
                        return null;
                        },
                        onSaved: (value){
                        password =value!;
                        
                      },
                      textAlign: TextAlign.start,
                      obscureText:true,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Şifre"),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () async
                {
                  if(formkey.currentState!.validate()){
                    formkey.currentState!.save();
                  try {
                     await authService.singUp(email, password,kullaniciAdi,adSoyad);

                     ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                        "Hesap Oluşturuldu. Lütfen Giriş Yapınız" ),
                        duration: Duration(seconds :2),
                      ),
                     );
                     formkey.currentState!.reset();
                     Navigator.push
                     (
                       context,
                      MaterialPageRoute
                      (
                        builder: (context) 
                        {
                          return const LoginPage();
                        },
                      ),
                     );

                  }  on FirebaseAuthException catch (e) {
                      print("Kayıt Olunamadı:${e.message}");
                      ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                         content: Text("Kayıt olunamadı"),
                         duration: Duration(seconds: 2),
                       ),
                     );

                    
                    
                  }

               
                }
                },

                
             
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF675269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1),
                      ]),
                  child: const Text(
                    "kayıt ol",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Zaten Hesabınız Var mı? ",
                    style: TextStyle(
                      color: const Color(0xFF475269).withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    ),
                    child: const Text(
                      "Giriş Yap",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ]
            ),
          ),
        ),
      ),
    );
  }
}
