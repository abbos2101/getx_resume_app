class MainModel {
  static String titleAbout(int lang) {
    if (lang == 0) return "O'zim haqimda";
    if (lang == 1) return "О себе";
    return "About myself";
  }

  static String titleResume(int lang) {
    if (lang == 0) return "Rezyume";
    if (lang == 1) return "Резюме";
    return "Resume";
  }

  static String titleProject(int lang) {
    if (lang == 0) return "Proyekt";
    if (lang == 1) return "Проект";
    return "Project";
  }
}
