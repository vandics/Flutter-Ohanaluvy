class OnBoardScreenContent_Model {
  String image;
  String title;
  String description;
  int height;
  int width;

  OnBoardScreenContent_Model(
      {this.image, this.title, this.description, this.height, this.width});

  static List<OnBoardScreenContent_Model> list = [
    OnBoardScreenContent_Model(
        title: 'Jasa desain \ngrafis online',
        image: 'assets/images/onboard-1.png',
        description:
            'Solusi masalah desain kamu dengan\nberbagai pilihan paket lengkap'),
    OnBoardScreenContent_Model(
        title: 'Kualitas terbaik \nuntuk brand terbaik',
        image: 'assets/images/onboard-2.png',
        description:
            'Kualitas kami dapat meningkatkan\nbrand awareness produk anda'),
    OnBoardScreenContent_Model(
        title: 'Tim profesional \nhanya untuk anda',
        image: 'assets/images/onboard-3.png',
        width: 250,
        description: 'Rasakan pelayanan ramah dari\ntim profesional kami')
  ];
}
