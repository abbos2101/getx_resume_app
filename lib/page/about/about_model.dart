class AboutModel {
  static String title(int lang) {
    int hour = DateTime.now().hour;
    if (lang == 0) return "Assalomu alaykum";
    if (lang == 1) {
      if (hour < 11) return "Доброе утро";
      if (hour >= 11 && hour < 16) return "Добрый день";
      if (hour >= 16 && hour < 23) return "Добрый вечер";
      return "Спокойной ночи";
    } else {
      if (hour < 11) return "Good Morning";
      if (hour >= 11 && hour < 16) return "Good Afternoon";
      if (hour >= 16 && hour < 23) return "Good Evening";
      return "Good Night";
    }
  }

  static String description(int lang) {
    if (lang == 0) return "O'zim haqimda qisqacha ...";
    if (lang == 1) return "Коротко о себе ...";
    return "Briefly about myself ...";
  }

  static String content(int lang) {
    if (lang == 0)
      return "Men Toshkent axborot texnologiyalari universitetida o'qiganman. Bugungi kunga qadar men bir nechta o'quv markazlari uchun nazorat va monitoring dasturlarini ishlab chiqdim, dars berdim, ustozlik qobiliyatiga ega bo'ldim, ba'zan esa frilanser sifatida ishlayman.";
    if (lang == 1)
      return "Я учился в Ташкентском университете информационных технологий. На сегодняшний день я разработал программы контроля и мониторинга для нескольких учебных центров, я преподавал, у меня есть возможность наставничества, а иногда я работаю фрилансером.";
    return "I studied at the Tashkent University of Information Technologies. To date, I have developed control and monitoring programs for several training centers, I have taught, I have the ability to mentor, and sometimes I work as a freelancer.";
  }
}
