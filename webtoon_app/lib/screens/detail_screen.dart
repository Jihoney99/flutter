import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webtoon_app/models/webtoon_detail_model.dart';
import 'package:webtoon_app/services/api_service.dart';

import '../models/webtoon_episode_model.dart';
import '../widget/episode_widget.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episode;
  late SharedPreferences pref;
  bool isLike = false;

  Future initPrefs() async {
    pref = await SharedPreferences.getInstance();
    final likeToon = pref.getStringList('likeToon');
    if (likeToon != null) {
      if (likeToon.contains(widget.id) == true) {
        setState(() {
          isLike = true;
        });
      }
    } else {
      await pref.setStringList('likeToon', []);
    }
  }

  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.id);
    episode = ApiService.getLatestEpisodesById(widget.id);
    initPrefs();
  }

  onHeartTab() async {
    final likeToon = pref.getStringList('likeToon');
    if (likeToon != null) {
      if (isLike) {
        likeToon.remove(widget.id);
      } else {
        likeToon.add(widget.id);
      }
      await pref.setStringList('likeToon', likeToon);
      setState(() {
        isLike = !isLike;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: (const Color.fromARGB(255, 62, 204, 91)),
        foregroundColor: const Color.fromARGB(255, 233, 234, 236),
        actions: [
          IconButton(
            onPressed: onHeartTab,
            icon: Icon(
              isLike ? Icons.favorite : Icons.favorite_outline,
            ),
          ),
        ],
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.id,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                // 그림자를 만들때 이상하게 만들고 차차 이쁘게 바꾼다.
                                blurRadius: 3,
                                offset: const Offset(10, 10),
                                color: Colors.black.withOpacity(0.5))
                          ]),
                      width: 200,
                      child: Image.network(
                        widget.thumb,
                        headers: const {
                          "User-Agent":
                              "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              FutureBuilder(
                future: webtoon,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data!.about,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '${snapshot.data!.genre} / ${snapshot.data!.age}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
              FutureBuilder(
                future: episode,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var epi in snapshot.data!)
                          Episode(epi: epi, webtoonId: widget.id)
                      ],
                    );
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
