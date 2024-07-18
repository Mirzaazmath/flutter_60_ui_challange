import 'dart:core';

import 'dart:ui';

class PopularTopicsModel{
  final String title;
  final int post;
  final List<Color> color;
  PopularTopicsModel({required this.title,required this.color,required this.post});
}
List<PopularTopicsModel>topicsList=[
  PopularTopicsModel(title: "C##",post: 30,color: [
    const Color(0xff7043bb),
    const Color(0xff5b33ae)]),
  PopularTopicsModel(title: "Java",post: 45,color: [
    const Color(0xff4a7dce),
    const Color(0xff3161cd)]),
  PopularTopicsModel(title: "Python",post:22,color: [
    const Color(0xff3fd7fc),
    const Color(0xff31c3ee)])

];