class UnbordingContent {
  // String image;
  String title;
  String discription;

  UnbordingContent({required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'اهلا، مساعدك الشخصي ',
      // image: 'images/quality.svg',
      discription: 'كل اللي خاطرك تسأل فيه ، عنه ، حوله '),
  UnbordingContent(
      title: 'لا داعي للبحث  ',
      // image: 'images/delevery.svg',
      discription: 'يوفر عليك عناء البحث ويحفظ وقتك'),
  UnbordingContent(
      title: 'عدد لا محدود من الاسئلة',
      // image: 'images/reward.svg',
      discription: '...أكتب سؤالك في اي مجال تعليم، عمل ، الالعاب، '),
];
