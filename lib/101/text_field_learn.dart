import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  String _userName = "";
  String _password = "";

  void updateMessage() {
    // Toast mesajı gösterme

    Fluttertoast.showToast(
      msg: "Kullanıcı Adı: $_userName Parola: $_password", // Toast mesajı
      toastLength: Toast.LENGTH_SHORT, // Mesajın süresi
      gravity: ToastGravity.BOTTOM, // Mesajın ekranın hangi kısmında görüneceği
      timeInSecForIosWeb: 1, // iOS/Web için süre ayarı
      backgroundColor: Colors.white, // Arka plan rengi
      textColor: Colors.black, // Yazı rengi
      fontSize: 16.0, // Yazı büyüklüğü
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Field Learn")),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text("Log in Screen",
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: TextField(
                  onChanged: (value) => _userName = value,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Kullanıcı Adı",
                    labelText: "Kullanıcı Adınız Giriniz",
                    prefixIcon:
                        Icon(Icons.person), //prefixIcon: Text("Kullanıcı Adı"),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 64.0, vertical: 12),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) => _password = value,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Parola",
                    labelText: "Parola Giriniz",
                    prefixIcon: Icon(Icons
                        .password_outlined), //prefixIcon: Text("Kullanıcı Adı"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                    onPressed: () {
                      updateMessage();
                    },
                    child: const Text("Giriş Yap")),
              ),
            ]),
      ),
    );
  }
}
