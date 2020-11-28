class Topic {
  Topic({this.title, this.text, this.liks, this.commentsNum});
  String title;
  String text;
  int liks;
  int commentsNum;
  Topic.without() {
    title = 'Топик темы';
    text =
        'текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст ';
    liks = 145;
    commentsNum = 43;
  }
  List<Comment> comments = [
    Comment.without(),
    Comment.without(),
    Comment.without(),
    Comment.without(),
    Comment.without(),
    Comment.without(),
  ];
}

class Comment {
  Comment(this.authorId, this.text, this.liks) : dateTime = DateTime.now();
  int authorId;
  String text;
  DateTime dateTime;
  int liks;
  Comment.without() {
    this.authorId = 1;
    this.text = 'текст текст текст текст';
    liks = 123;
    dateTime = DateTime.now();
  }
}

List<Topic> topicsList = [
  Topic.without(),
  Topic.without(),
  Topic.without(),
  Topic.without(),
  Topic.without(),
  Topic.without(),
];
