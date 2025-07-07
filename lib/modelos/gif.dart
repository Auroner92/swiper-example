class Gif{
  final String url;
  final String title;

  Gif({
    required this.url, 
    required this.title,
    });

  factory Gif.fromJson(Map<String, dynamic> json){
    return Gif(
      title: json['title']?.toString()??'sin titulo',
      url: json['images']?['original']?['url']?.toString()??'',
    );
  }
}