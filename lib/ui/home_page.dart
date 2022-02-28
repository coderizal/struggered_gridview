import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final rnd = Random();
  List<String> a=[
    "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://blog.carro.id/wp-content/uploads/2021/04/McLaren-720S-Track-Pack-1.jpg",
    "https://www.otomotifo.com/wp-content/uploads/2019/01/Harga-Mobil-Sport-Lamborghini.jpg",
    "https://cdn1-production-images-kly.akamaized.net/Auvtyuyv1g3FaVV9ztk5cN7wGYw=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3474140/original/034450000_1622907404-mobil_sport_malaysia.jpg",
    "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://www.blackxperience.com/assets/content/blackauto/autonews/mobil-sport-terlangka--thumbnail-11.jpg",
    "https://img.cintamobil.com/2021/05/31/Yyu6iaT7/bugatti-la-voiture-noire-a11b.jpg",
    "https://assets.indozone.news/local/5e37c4d6667a2.jpg",
    "https://1.bp.blogspot.com/-1tSK2aEwNAY/XiRVhaTisxI/AAAAAAAABcM/339I2AZzoJQhf5SNlCWT6vd6e3vLmVySgCLcBGAsYHQ/w1200-h630-p-k-no-nu/lamborghini-veneno.jpg",
    "https://imgcdn.rri.co.id/__srct/b763d32e20ec5d473fd182b5c78d0964/854359/bugatti_chiron.jpg",
    "https://cdn.motor1.com/images/mgl/8QxmP/s3/mclaren-765lt.jpg",
    "https://cdn1-production-images-kly.akamaized.net/WTbYyvzt6zbWeB5vGrhkoU24LQA=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3737756/original/060621700_1639891653-mobil_sport_toyota.jpg",
    "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://blog.carro.id/wp-content/uploads/2021/04/McLaren-720S-Track-Pack-1.jpg",
    "https://www.otomotifo.com/wp-content/uploads/2019/01/Harga-Mobil-Sport-Lamborghini.jpg",
    "https://cdn1-production-images-kly.akamaized.net/Auvtyuyv1g3FaVV9ztk5cN7wGYw=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3474140/original/034450000_1622907404-mobil_sport_malaysia.jpg",
    "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://www.blackxperience.com/assets/content/blackauto/autonews/mobil-sport-terlangka--thumbnail-11.jpg",
    "https://img.cintamobil.com/2021/05/31/Yyu6iaT7/bugatti-la-voiture-noire-a11b.jpg",
    "https://assets.indozone.news/local/5e37c4d6667a2.jpg",
    "https://1.bp.blogspot.com/-1tSK2aEwNAY/XiRVhaTisxI/AAAAAAAABcM/339I2AZzoJQhf5SNlCWT6vd6e3vLmVySgCLcBGAsYHQ/w1200-h630-p-k-no-nu/lamborghini-veneno.jpg",
    "https://imgcdn.rri.co.id/__srct/b763d32e20ec5d473fd182b5c78d0964/854359/bugatti_chiron.jpg",
    "https://cdn.motor1.com/images/mgl/8QxmP/s3/mclaren-765lt.jpg",
    "https://cdn1-production-images-kly.akamaized.net/WTbYyvzt6zbWeB5vGrhkoU24LQA=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3737756/original/060621700_1639891653-mobil_sport_toyota.jpg"
     ,
     "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://blog.carro.id/wp-content/uploads/2021/04/McLaren-720S-Track-Pack-1.jpg",
    "https://www.otomotifo.com/wp-content/uploads/2019/01/Harga-Mobil-Sport-Lamborghini.jpg",
    "https://cdn1-production-images-kly.akamaized.net/Auvtyuyv1g3FaVV9ztk5cN7wGYw=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3474140/original/034450000_1622907404-mobil_sport_malaysia.jpg",
    "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://www.blackxperience.com/assets/content/blackauto/autonews/mobil-sport-terlangka--thumbnail-11.jpg",
    "https://img.cintamobil.com/2021/05/31/Yyu6iaT7/bugatti-la-voiture-noire-a11b.jpg",
    "https://assets.indozone.news/local/5e37c4d6667a2.jpg",
    "https://1.bp.blogspot.com/-1tSK2aEwNAY/XiRVhaTisxI/AAAAAAAABcM/339I2AZzoJQhf5SNlCWT6vd6e3vLmVySgCLcBGAsYHQ/w1200-h630-p-k-no-nu/lamborghini-veneno.jpg",
    "https://imgcdn.rri.co.id/__srct/b763d32e20ec5d473fd182b5c78d0964/854359/bugatti_chiron.jpg",
    "https://cdn.motor1.com/images/mgl/8QxmP/s3/mclaren-765lt.jpg",
    "https://cdn1-production-images-kly.akamaized.net/WTbYyvzt6zbWeB5vGrhkoU24LQA=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3737756/original/060621700_1639891653-mobil_sport_toyota.jpg",
    "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://blog.carro.id/wp-content/uploads/2021/04/McLaren-720S-Track-Pack-1.jpg",
    "https://www.otomotifo.com/wp-content/uploads/2019/01/Harga-Mobil-Sport-Lamborghini.jpg",
    "https://cdn1-production-images-kly.akamaized.net/Auvtyuyv1g3FaVV9ztk5cN7wGYw=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3474140/original/034450000_1622907404-mobil_sport_malaysia.jpg",
    "https://cdn.motor1.com/images/mgl/Le9Om/s3/ford-mustang-shelby-gt500-code-orange-front-far.jpg",
    "https://www.blackxperience.com/assets/content/blackauto/autonews/mobil-sport-terlangka--thumbnail-11.jpg",
    "https://img.cintamobil.com/2021/05/31/Yyu6iaT7/bugatti-la-voiture-noire-a11b.jpg",
    "https://assets.indozone.news/local/5e37c4d6667a2.jpg",
    "https://1.bp.blogspot.com/-1tSK2aEwNAY/XiRVhaTisxI/AAAAAAAABcM/339I2AZzoJQhf5SNlCWT6vd6e3vLmVySgCLcBGAsYHQ/w1200-h630-p-k-no-nu/lamborghini-veneno.jpg",
    "https://imgcdn.rri.co.id/__srct/b763d32e20ec5d473fd182b5c78d0964/854359/bugatti_chiron.jpg",
    "https://cdn.motor1.com/images/mgl/8QxmP/s3/mclaren-765lt.jpg",
    "https://cdn1-production-images-kly.akamaized.net/WTbYyvzt6zbWeB5vGrhkoU24LQA=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3737756/original/060621700_1639891653-mobil_sport_toyota.jpg"]
  ;
  int crossAxisCount = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered gridview"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemBuilder: (context, index) {
            return Image.network(
              a[index]
            );
          },
          itemCount: a.length,
        ),
      ),
    );
  }
}