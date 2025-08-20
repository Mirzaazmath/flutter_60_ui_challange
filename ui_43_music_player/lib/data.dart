class Song {
  final String image;
  final String title;
  final String artist;
  final String minute;
  final String second;

  Song({
    required this.image,
    required this.title,
    required this.artist,
    required this.minute,
    required this.second,
  });
}

List<Song>songList = [
  Song(image: "assets/album1.jpg", title: "Pain", artist: "Ryan Jones", minute: "03", second: "04"),
  Song(image: "assets/album2.jpg", title: "Piano Jazz", artist: "Fabiani", minute: "02", second: "45"),
  Song(image: "assets/album3.jpg", title: "Remember", artist: "Michael Howard", minute: "04", second: "00"),
  Song(image: "assets/album4.jpg", title: "Stranger", artist: "Jenne Lebras", minute: "02", second: "20"),
  Song(image: "assets/album5.jpg", title: "Track", artist: "Mike Tunes", minute: "03", second: "04"),
  Song(image: "assets/album6.jpg", title: "Upside", artist: "Avery Davis", minute: "03", second: "04"),
  Song(image: "assets/album7.jpg", title: "Glasses", artist: "Henry Jackson", minute: "03", second: "04"),
  Song(image: "assets/album8.jpg", title: "Origin", artist: "Edward Frances", minute: "03", second: "04"),
  Song(image: "assets/album9.jpg", title: "Next", artist: "Justin Clare", minute: "03", second: "04"),
  Song(image: "assets/album10.jpg", title: "Forest", artist: "ZYYKO", minute: "03", second: "04"),

];
