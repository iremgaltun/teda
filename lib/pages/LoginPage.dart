import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teda1/pages/ForgetPassword.dart';
import 'package:teda1/pages/HomePage.dart';
import 'package:teda1/pages/kayitPage.dart';
import 'package:teda1/service/auth_service.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email,password,kullaniciAdi;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth =FirebaseAuth.instance;
  final authService = AuthService();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body:
       SingleChildScrollView(
        child: SafeArea(
          child:Form(
            key:formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                   child: Image.asset("assets/images/login.png"),
                ),
                 const SizedBox(height: 50),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal:20 ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  decoration: BoxDecoration(
                    color:const Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:const Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                   child: Row(
                  children:[
                  const Icon(
                    Icons.person,
                  size:27,
                  color:Color(0xFF475269),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width:250 ,
                    child: TextFormField(
                          validator: (value)
                          {
                          if(value!.isEmpty)
                          {
                            return "Bilgileri eksiksiz doldurunuz";
                          }
                          return null;
                          },
                          onSaved: (value)
                          {
                            email =value!;
                          
                          },
                      decoration: const InputDecoration( 
                        border: InputBorder.none,
                        hintText: "E-mail"),
                    ),)
               ] ),
            
                ),
                const SizedBox(height: 20),
                
                Container(
                  margin: const EdgeInsets.symmetric(horizontal:20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(color: const Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF675269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
            
            
                  )
                ]
                ),
                child: Row(
                  children: [Icon(Icons.lock ,
                  size:27,
                  color: const Color(0xFF475629).withOpacity(0.3),),
                   const SizedBox(width:15),
                  SizedBox(
                    width:250 ,
                    child: TextFormField(
                         validator: (value)
                         {
                          if(value!.isEmpty){
                            return "Bilgileri eksiksiz doldurunuz";
                          }
                          return null;
                         },
                         onSaved: (value)
                         {
                         password =value!;
                          
                         },
                      obscureText:true,
                      decoration: const InputDecoration(
                         border: InputBorder.none,
                         hintText: "Şifre"),
                ),
            
            
                ),]
            
            
              ),),
              const SizedBox(height: 40),
              InkWell(
                onTap: ()async
                {
                  
                  
                  if(formkey.currentState!.validate()){
                    formkey.currentState!.save();
                    
                    try {
                      await authService.singIn(email, password);
                      
                      ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                         content: Text("Giriş Başarılı"),
                         duration: Duration(seconds: 2),
                       ),
                     );
                     formkey.currentState!.reset();
                  
                     Navigator.push(
                       context,
                      MaterialPageRoute(
                        builder: (context) =>  HomePage(),
                      ),
                    );
                      
                    } on FirebaseAuthException catch (e) {
                      print("Giriş Hatalı:${e.message}");
                      ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                         content: Text("Geçersiz Şifre Veya E-mail "),
                         duration: Duration(seconds: 2),
                       ),
                     );
                      
                    }

                    
                  }

                },
                child: Container(alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(color: const Color(0xFF475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF675269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1),
                    ]
                    ),
                    child: const Text("Giris Yap",
                    style: TextStyle(
                      fontSize:25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 1
                      ),
                      ),
            
            
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPassword(),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Şifrenizi mi unuttunuz?",
                      style: TextStyle(
                        color: Color(0xFF475269).withOpacity(0.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),



              const SizedBox(height: 30),
              



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hesabın yok mu?  ",
                    style: TextStyle(
                      color: const Color(0xFF475269).withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const kayitPage(),
                      ),
                    ),
                    child: const Text(
                      "Kayit Ol",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 30),
              ] ),
          ),
      ),
    ),);
  }
}
