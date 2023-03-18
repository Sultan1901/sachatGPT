class UnbordingContent {
   String image;
  String title;
  String discription;

  UnbordingContent({required this.title,required this.image, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'اهلا، مساعدك الشخصي ',
       image: '/Users/dylan./Desktop/sachatGPT/besure/assets/images/1.png',
      discription: 'كل اللي خاطرك تسأل فيه ، عنه ، حوله '),
  UnbordingContent(
      title: 'لا داعي للبحث  ',
       image: '/Users/dylan./Desktop/sachatGPT/besure/assets/images/2.png',
      discription: 'يوفر عليك عناء البحث ويحفظ وقتك'),
  UnbordingContent(
      title: 'عدد لا محدود من الاسئلة',
       image: '/Users/dylan./Desktop/sachatGPT/besure/assets/images/3.png',
      discription: '...أكتب سؤالك في اي مجال تعليم، عمل ، الالعاب، '),
];
