class Post {
  String? title;
  String? description;
  String? image;
  bool? isLiked;
  String? avatarImage;
  String? name;

  Post(
      {this.title,
      this.image,
      this.description,
      this.isLiked = false,
      this.avatarImage,
      this.name});
}
