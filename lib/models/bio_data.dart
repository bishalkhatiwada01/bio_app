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
  bio: '''
I am currently pursuing a Bachelor's degree in Computer Science at Sunway College Kathmandu. I look forward to applying my academic knowledge and skills to real-world projects. I hope to gain valuable industry experience and insights that will benefit my future career in computer science. I aim to make the most of this opportunity by being proactive, networking, learning from professionals, and building my technical skills. The industry exposure and project work during my studies will equip me with practical skills and experience that I can leverage in my future roles in the tech industry.''',
);
