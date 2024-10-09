class Category {
  final String title;
  final String image;
  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "All", image: "images/jwells1.jpg"),
  Category(title: "Shoes", image: "images/shoos3.jpg"),
  Category(title: "Beauty", image: "images/image2.jpg"),
  Category(title: "Women", image: "images/girls combo1.jpg"),
  Category(title: "Jewelry", image: "images/jwells4.jpg"),
  Category(title: "Men", image: "images/shirt2.jpg"),
];
