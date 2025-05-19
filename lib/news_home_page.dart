import 'package:flutter/material.dart';
import 'package:news_app/Model/news_model.dart';
import 'package:news_app/news_detail.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Explorar",
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              // for search bar
              searchabar(),
              const SizedBox(
                height: 20,
              ),
              forImages(context),
              const SizedBox(
                height: 10,
              ),

              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      "Lo más buscado",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Ver Más",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
  SizedBox(
  height: 55,
  width: MediaQuery.of(context).size.width,
  child: ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: topicItems.sublist(0, 3).length,
    itemBuilder: (context, index) {
      final topic = topicItems.sublist(0, 3)[index];
      return Container(
        margin: const EdgeInsets.only(right: 10),
        height: 55,
        width: MediaQuery.of(context).size.width / 3.5,
        decoration: BoxDecoration(
          color: topic.color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              topic.icon,  // Usamos topic.icon en lugar de topic.image
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Text(
              topic.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    },
  ),
),
const SizedBox(height: 10),
SizedBox(
  height: 55,
  width: MediaQuery.of(context).size.width,
  child: ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: topicItems.sublist(3).length,
    itemBuilder: (context, index) {
      final topic = topicItems.sublist(3)[index];
      return Container(
        margin: const EdgeInsets.only(right: 10),
        height: 55,
        width: MediaQuery.of(context).size.width / 3.2,
        decoration: BoxDecoration(
          color: topic.color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              topic.icon,  // Usamos topic.icon aquí también
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Text(
              topic.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    },
  ),
),
              //YOUR NEWS
              const Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Tus noticias",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Ver más",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: newsItems.length,
                    itemBuilder: (context, index) {
                      final news = newsItems[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailNews(news: news)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, right: 20),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 1,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Container(
                                    height: 100,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(news.image),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        news.newsTitle,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  // ignore: deprecated_member_use
                                                  news.color.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 2),
                                            child: Text(
                                              news.newsCategories,
                                              style: TextStyle(
                                                color: news.color,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 145),
                                          child: Text(
                                            news.time,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding forImages(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4.9,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Image.network(
                "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/ja.png",
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width / 2.1,
              ),
            ),
            Positioned(
                right: 0,
                child: Image.network(
                  "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/video.png",
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: MediaQuery.of(context).size.width / 2.5,
                ))
          ],
        ),
      ),
    );
  }

  Padding searchabar() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 151, 146, 146),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Buscar",
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black45,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
