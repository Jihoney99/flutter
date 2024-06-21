class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(
      Map<String, dynamic>
          json) //초기화 구문 (API로 부터 JSON을 넘겨주고 WebtoonModel의 title을 Json의 title로 초기화 )
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
