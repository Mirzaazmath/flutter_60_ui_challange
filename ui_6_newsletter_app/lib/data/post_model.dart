class PostModel {
  final String title;
  final String userName;
  final String postTime;
  final String content;
  final int likes;
  final int comments;
  final int views;
  final List<String> tags;
  final bool isSave;
  final String profile;
  PostModel(
      {required this.title,
      required this.userName,
      required this.comments,
      required this.content,
      required this.likes,
      required this.postTime,
      required this.isSave,
      required this.tags,
      required this.views,
        this.profile="",
      });
}

List<PostModel> postList = [
  PostModel(
    profile: "assets/profile.jpeg",
      title: "Flutter is Future",
      userName: "Dev_73arner",
      comments: 120,
      content:
          "Flutter == Future/\n Flutter is growing rapid fast these days if this keep up flutter gonna beat every other framework",
      likes: 120,
      postTime: "1h",
      isSave: false,
      tags: ["C##", "Programming"],
      views: 300),
  PostModel(
      title: "C## In A Nutshell",
      userName: "janu Putra",
      comments: 80,
      content:
          "So,i have using c# for a whole decade now. if you guys know how to break the boring feeling\n, Please Let me know",
      likes: 120,
      postTime: "1h",
      isSave: false,
      tags: ["C##", "Programming"],
      views: 300),
  PostModel(
      title: "How to be a Programmer",
      userName: "Prashant",
      comments: 20,
      content:
          "Code is created to solve problems, so programmers need to be able to solve coding problems. You can practice problem-solving by working on projects and competitions using your coding skills and languages.",
      likes: 10,
      postTime: "2h",
      isSave: false,
      tags: ["Java", "Coding", "Dsa"],
      views: 400),
  PostModel(
      title: "Gif Rendering on JavaScript",
      userName: "Suraj",
      comments: 55,
      content:
          "Animated GIF inserting to HTML is similar to image inserting. For example, you can insert animated GIF to HTML with IMG tag: <IMG SRC='animation1. gif'>.",
      likes: 150,
      postTime: "1h",
      isSave: false,
      tags: ["Code", "JavaScript"],
      views: 330),
  PostModel(
      title: "C## In A Nutshell",
      userName: "janu Putra",
      comments: 80,
      content:
          "So,i have using c# for a whole decade now. if you guys know how to break the boring feeling\n, Please Let me know",
      likes: 120,
      postTime: "1h",
      isSave: false,
      tags: ["C##", "Programming"],
      views: 300),
  PostModel(
      title: "How to be a Programmer",
      userName: "Prashant",
      comments: 20,
      content:
          "Code is created to solve problems, so programmers need to be able to solve coding problems. You can practice problem-solving by working on projects and competitions using your coding skills and languages.",
      likes: 10,
      postTime: "2h",
      isSave: false,
      tags: ["Java", "Coding", "Dsa"],
      views: 400),
  PostModel(
      title: "Gif Rendering on JavaScript",
      userName: "Suraj",
      comments: 55,
      content:
          "Animated GIF inserting to HTML is similar to image inserting. For example, you can insert animated GIF to HTML with IMG tag: <IMG SRC='animation1. gif'>.",
      likes: 150,
      postTime: "1h",
      isSave: false,
      tags: ["Code", "JavaScript"],
      views: 330),
  PostModel(
      title: "Flutter is Future",
      userName: "Dev_73arner",
      comments: 120,
      content:
          "Flutter == Future/\n Flutter is growing rapid fast these days if this keep up flutter gonna beat every other framework",
      likes: 120,
      postTime: "1h",
      isSave: false,
      tags: ["C##", "Programming"],
      views: 300),
  PostModel(
      title: "C## In A Nutshell",
      userName: "janu Putra",
      comments: 80,
      content:
          "So,i have using c# for a whole decade now. if you guys know how to break the boring feeling\n, Please Let me know",
      likes: 120,
      postTime: "1h",
      isSave: false,
      tags: ["C##", "Programming"],
      views: 300),
  PostModel(
      title: "How to be a Programmer",
      userName: "Prashant",
      comments: 20,
      content:
          "Code is created to solve problems, so programmers need to be able to solve coding problems. You can practice problem-solving by working on projects and competitions using your coding skills and languages.",
      likes: 10,
      postTime: "2h",
      isSave: false,
      tags: ["Java", "Coding", "Dsa"],
      views: 400),
  PostModel(
      title: "Gif Rendering on JavaScript",
      userName: "Suraj",
      comments: 55,
      content:
          "Animated GIF inserting to HTML is similar to image inserting. For example, you can insert animated GIF to HTML with IMG tag: <IMG SRC='animation1. gif'>.",
      likes: 150,
      postTime: "1h",
      isSave: false,
      tags: ["Code", "JavaScript"],
      views: 330),
  PostModel(
      title: "C## In A Nutshell",
      userName: "janu Putra",
      comments: 80,
      content:
          "So,i have using c# for a whole decade now. if you guys know how to break the boring feeling\n, Please Let me know",
      likes: 120,
      postTime: "1h",
      isSave: false,
      tags: ["C##", "Programming"],
      views: 300),
  PostModel(
      title: "How to be a Programmer",
      userName: "Prashant",
      comments: 20,
      content:
          "Code is created to solve problems, so programmers need to be able to solve coding problems. You can practice problem-solving by working on projects and competitions using your coding skills and languages.",
      likes: 10,
      postTime: "2h",
      isSave: false,
      tags: ["Java", "Coding", "Dsa"],
      views: 400),
  PostModel(
      title: "Gif Rendering on JavaScript",
      userName: "Suraj",
      comments: 55,
      content:
          "Animated GIF inserting to HTML is similar to image inserting. For example, you can insert animated GIF to HTML with IMG tag: <IMG SRC='animation1. gif'>.",
      likes: 150,
      postTime: "1h",
      isSave: false,
      tags: ["Code", "JavaScript"],
      views: 330),
];
