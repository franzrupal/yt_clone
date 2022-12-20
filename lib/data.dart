class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User userFranz = User(
  username: 'Franz "FARG" Rupal',
  profileImageUrl: 'images/PP.jpg',
  subscribers: '100K',
);

const User userJulius = User(
    username: 'Julius Ducante',
    profileImageUrl:
        'https://scontent.fceb1-2.fna.fbcdn.net/v/t1.6435-9/66761312_2465510926846896_8165649886818074624_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeFc94t9Vsq46NuOD8SAK9pGByNX7Aymom0HI1fsDKaibaiHsuz3YZfNMrdyT7Qb_Q9ymAUMuIFS5MQDaVilPmt_&_nc_ohc=T9TrVhxnPg0AX_f-HN_&_nc_ht=scontent.fceb1-2.fna&oh=00_AfB59TPpjYJu2LjxXQFegrY6CN22qyhMl9O1Al6vmSHA8A&oe=63B942FF',
    subscribers: '100K');

const User userTimmy = User(
    username: 'Timaica Pintor',
    profileImageUrl:
        'https://scontent.fceb1-1.fna.fbcdn.net/v/t1.6435-9/202524399_2986616164917496_749359767334384867_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEibgHi7WIYGpJpWijAovWcJwdEZTy0Bj8nB0RlPLQGP_ozt0my6tp-ufmQXURnNfzBclDozdD7c7iK5JSC2rLl&_nc_ohc=vrbTT8fpsggAX-x_ybG&tn=Rj-90p9c1G3ErLJ5&_nc_ht=scontent.fceb1-1.fna&oh=00_AfA2-CEu-HUWu-9T2IS7oR1jUv7mysItRzW9zWueoGCU2g&oe=63BECD7F',
    subscribers: '100K');

const User userTroi = User(
    username: 'ItsMeTroi',
    profileImageUrl:
        'https://scontent.fceb1-2.fna.fbcdn.net/v/t31.18172-8/25438781_2008551336092996_4125618493718870063_o.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_eui2=AeH685y8HLajHvjvhy22FfBacRlPrfN195RxGU-t83X3lHitbj7bFbAuEgp2sj0Zwpg7OJhc6weMHTtTVAhkIJRD&_nc_ohc=PDRkoaPvItAAX9yktxK&_nc_oc=AQnKJIlIPVyklIHOTvYaDNh3mewCypFmwirhCCw2ZSvk8ordvkZ2uJbVfvYZQ3MN9X8&_nc_ht=scontent.fceb1-2.fna&oh=00_AfB5AFM7S5C83LBoDgD6czvp-4bKO4PZalEyaqAkWWolsg&oe=63BEB96D',
    subscribers: '100K');

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: userTimmy,
    title: 'How to make your crush obsessed with you! <3',
    thumbnailUrl: 'assets/thumbnail_images/thumbnail3.png',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: userJulius,
    id: 'vrPk6LB9bjo',
    title: 'A day in the life of a JUNIOR DEVELOPER',
    thumbnailUrl: 'assets/thumbnail_images/thumbnail1.png',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: userTroi,
    title: 'How to use a phone || TUTORIAL',
    thumbnailUrl: 'assets/thumbnail_images/thumbnail2.png',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
  Video(
    id: 'rJKN_880b-M',
    author: userFranz,
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'assets/thumbnail_images/thumbnail1.png',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: userFranz,
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/rJKN_880b-M/0.jpg',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: userFranz,
    title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: userFranz,
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
  ),
];

var shortsList = {
  0: [
    'Happy',
    'images/smiley.jpg',
    'images/waterFall.gif',
    'The glittering but calm water reminds me of sanity',
    '20M',
    '20K',
  ],
  1: [
    'Abby Gale',
    'images/woman1.png',
    'images/rubiksCube.gif',
    'Awesome rubiks cube',
    '2.5K',
    '100',
  ],
  2: [
    'Roufus',
    'images/cat.jpg',
    'images/minions.gif',
    'Minions are ❤',
    '50M',
    '10K'
  ],
  3: [
    'The Stargazer',
    'images/profile_pic2.jpg',
    'images/universe.gif',
    'Life in an alternate universe',
    '10M',
    '30K',
  ]
};
//- images/universe.gif
//- images/profile_pic2.jpg
//- images/minions.gif
//- images/cat.jpg
//- images/rubiksCube.gif
//- images/woman1.png
//- images/universe.gif
//- images/universe.gif
