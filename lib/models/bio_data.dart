class BioDataModel {
  final String name;
  final String role;
  final String imageUrl;
  final String bio;
  final bool hasPortfolio;
  final String portfolioUrl;

  BioDataModel({
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.bio,
    this.hasPortfolio = false,
    this.portfolioUrl = '',
  });
}

final BioDataModel userBio = BioDataModel(
  name: 'Bishal Khatiwada',
  role: 'Flutter Developer',
  imageUrl: "images/pp.jpeg",
  bio:
      '''Currently pursuing a Bachelor of Computer Science at Sunway College Kathmandu. Joining an IT company as an intern and applying gained knowledge and skills to real-world projects, as well as learning more about the industry and gaining valuable experience that will benefit building a career in the eld of computer science''',
);
