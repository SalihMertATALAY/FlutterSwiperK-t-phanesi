import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MaterialApp(
    home: SwiperOrnek(),
  ));
}

class SwiperOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swiper Örnek Projesi"),
      ),
      body: SwiperFonksiyonu(),
    );
  }
  List<String> resimAdresleri = [
    "https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1789&q=80",
    "https://images.unsplash.com/photo-1604964432806-254d07c11f32?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80",
    "https://images.unsplash.com/photo-1511804074-5e57bc14db9f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1160&q=80",
    "https://itcraftapps.com/wp-content/uploads/2019/11/flutter-DART.jpg",
  ];
  // Swiper kütüphanesinin kullanılıdğı fonksiyondur.
  SwiperFonksiyonu() {
    // Fonksiyonun merkezde olmasını sağlar
    return Center(
      // Swiperın toplam alanı
      child: Container(
        // Swiper'ın yüksekliği
        height: 200,
        // Swiper
        child: new Swiper(
          // listenin elemanları
          itemBuilder: (BuildContext context, int index) {
            // Anlık url
            String anlikResimAdresi = resimAdresleri[index];
            // elmanın swiper'ın ne tarafında olacağı 
            return Align(
              // merkezde bulunacak
              alignment: Alignment.center,
              // elemanın bulunacağı alan
              child: Container(
                // elemanın yüksekliği
                height: 200,
                // elemanın genişliği
                width: 250,
                // Dekorasyon bölümü
                decoration: BoxDecoration(
                  // resim alanı 
                    image: DecorationImage(
                      // bağlantı resmi (url kullanılır)
                        image: NetworkImage(anlikResimAdresi),
                        // çözünürlüğü bozulmadan yakınlaştırır.
                        fit: BoxFit.cover)),
              ),
            );
          },
          // Toplam elman sayısı
          itemCount: resimAdresleri.length,
          // Resim altında bulunan nokta kısımları burada bulunur. Bunları özelleştirebilirsiniz.
          pagination: new SwiperPagination(),
          // Sağ ve sol tarafında bulunan oklardır. Bunları özelleştirebilirsiniz.
          control: new SwiperControl(),
          // Varsayılan item geçişi
          layout: SwiperLayout.DEFAULT,
        ),
      ),
    );
  }
}
