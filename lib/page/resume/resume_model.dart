class ResumeModel {
  static String title1(int lang) {
    if (lang == 0) return "Ish tajriba";
    if (lang == 1) return "Рабочий стаж";
    return "Work experience";
  }

  ///[ITEM1]
  static String item1Duration(int lang) {
    if (lang == 0) return "Sentabr 2020\nhozir";
    if (lang == 1) return "Сентябрь 2020\nсейчас";
    return "September 2020\nnow";
  }

  static String item1Firm(int lang) {
    return "TUNE Consulting";
  }

  static String item1About(int lang) {
    if (lang == 0) return "Bank sohasi";
    if (lang == 1) return "Банковский сектор";
    return "Banking sector";
  }

  static String item1Site(int lang) {
    return "tuneconsulting.net";
  }

  static String item1Pro(int lang) {
    if (lang == 0) return "Flutter dasturchi";
    if (lang == 1) return "Программист флаттера";
    return "Flutter developer";
  }

  static String item1Desc(int lang) {
    if (lang == 0)
      return """
Buyerda android dasturchi bo'lib ishga kirganman, ishxona boshlanishida flutterni start up uchun ishlatishni ko'zlashgan, shu uchun test uchun kichikroq app qilib ko'rdik. Hozir shuni ustida ishlayapmiz.

TUNE Consultingni qilgan mashhur ilovalari, Apelsin(Kapital bank), Joyda(SQB), Milliy(NBU), Ipak Yo'li Mobile(Ipak yo'li bank), InfinBank(Invest Finance bank) va boshqalar.   
""";
    if (lang == 1)
      return """
Я устроился здесь программистом на Android, в начале своего дела я хотел использовать флаттер для запуска, поэтому мы попробовали приложение меньшего размера для тестирования. Сейчас мы над этим работаем.

Популярными приложениями, выполненными TUNE Consulting, являются Orange (Capital Bank), Joyda (SQB), National (NBU), Silk Road Mobile (Silk Road Bank), InfinBank (Invest Finance Bank) и другие.
""";
    return """
I got a job here as an android programmer, at the beginning of the business I wanted to use flutter to start up, so we tried a smaller app for testing. We are working on that now.

Popular applications that have done TUNE Consulting are Orange (Capital Bank), Joyda (SQB), National (NBU), Silk Road Mobile (Silk Road Bank), InfinBank (Invest Finance bank) and others.
""";
  }

  ///[ITEM2]
  static String item2Duration(int lang) {
    if (lang == 0) return "Fevral 2020\nAvgust 2020";
    if (lang == 1) return "Февраль 2020\nАвгуст 2020";
    return "February 2020\nAugust 2020";
  }

  static String item2Firm(int lang) {
    if (lang == 0) return "Qurilish vazirligi";
    if (lang == 1) return "Министерство строительства";
    return "Ministry of Construction";
  }

  static String item2About(int lang) {
    if (lang == 0) return "Qurilish sohasi";
    if (lang == 1) return "Строительная промышленность";
    return "Construction industry";
  }

  static String item2Site(int lang) {
    return "mc.uz";
  }

  static String item2Pro(int lang) {
    if (lang == 0) return "Android dasturchi";
    if (lang == 1) return "Программист Android";
    return "Android developer";
  }

  static String item2Desc(int lang) {
    if (lang == 0)
      return """
Qurilish sohasidagi ishlarni qilganmiz, qurilishdagi ishlarni telefon orqali avtomizatsiya qiladigan, xujjatlarni qog'ozda emas, elektron sayt, mobile ilovalar orqali yuritishni qilganmiz. Boshida ish juda tez keta boshlagan, play marketga ilova chiqarilgandan so'ng sekinlashib qolgan, shu sababli boshqa ishga o'tganman.   
""";
    if (lang == 1)
      return """
Мы проделали работы в сфере строительства, автоматизировали строительные работы по телефону, оформляли документы не на бумаге, а через сайт, мобильные приложения. Вначале работа пошла очень быстро, после выхода приложения на плей-маркет она замедлилась, поэтому я переключился на другую работу.
""";
    return """
We have done work in the field of construction, we have automated the construction work by phone, we have managed the documents not on paper, but through the website, mobile applications. In the beginning, the work started to go very fast, it slowed down after the app was released to the play market, so I switched to another job.
""";
  }

  ///[ITEM3]
  static String item3Duration(int lang) {
    if (lang == 0) return "Sentabr 2018\nFevral 2020";
    if (lang == 1) return "Сентябрь 2018\nФевраль 2020";
    return "September 2018\nFebruary 2020";
  }

  static String item3Firm(int lang) {
    return "Samarali Ta'lim";
  }

  static String item3About(int lang) {
    if (lang == 0) return "Ta'lim sohasi";
    if (lang == 1) return "Область образования";
    return "Field of education";
  }

  static String item3Site(int lang) {
    return "";
  }

  static String item3Pro(int lang) {
    if (lang == 0) return "Android, desktop dasturchi va o'qituvchi";
    if (lang == 1) return "Android, настольный программист и преподаватель";
    return "Android, desktop programmer and teacher";
  }

  static String item3Desc(int lang) {
    if (lang == 0)
      return """
Samarali Ta'lim 1000 ga yaqin o'quvchisi bor, abituriyentlarni tayyorlovchi o'rtacha kattalikdagi o'quv markaz. Buyerda o'qituvchilar uchun, o'quvchilarni vazifalarini kompyuterda skaner orqali tekshirish, ota-onasiga sms yuborish, o'zlashtishni monitoring qiladigan ish qilingan. Shu bilan bir qatorda o'zim ham Fizika, Informatikadan dars o'tganman.   
""";
    if (lang == 1)
      return """
В «Эффективном образовании» обучается около 1000 студентов, это средний учебный центр, который готовит абитуриентов. Здесь для учителей проводится работа по проверке заданий учеников на компьютере со сканером, отправке смс родителям, мониторингу успеваемости. Еще я преподавал физику и информатику.
""";
    return """
Effective Education has about 1,000 students, a medium-sized training center that prepares applicants. Here, for teachers, work is done to check the tasks of students on a computer with a scanner, send sms to parents, monitor mastery. I also taught Physics and Informatics.
""";
  }

  ///[ITEM4]
  static String item4Duration(int lang) {
    if (lang == 0) return "Iyun 2018\nAvgust 2018";
    if (lang == 1) return "Июнь 2018\nавгуст 2018";
    return "June 2018\nAugust 2018";
  }

  static String item4Firm(int lang) {
    return "GreenWhite Solutions";
  }

  static String item4About(int lang) {
    if (lang == 0) return "Biznes sohasi";
    if (lang == 1) return "Сфера бизнеса";
    return "Business area";
  }

  static String item4Site(int lang) {
    return "greenwhite.uz";
  }

  static String item4Pro(int lang) {
    if (lang == 0) return "Amaliyotchi(android)";
    if (lang == 1) return "Практик (android)";
    return "Practitioner (android)";
  }

  static String item4Desc(int lang) {
    if (lang == 0)
      return """
Bizneslar uchun avtomatlashtiruvchi mobile, web ilovalar ishlab chiqishadi. Asosan savdo-sotiq, dorixona, qo'riqlash kameralari bo'yicha ixtisoslashgan.

Taniqli mijozlaridan: Coca:Cola, Ums, Nestle, Samsung, Bayer, LiquiMoly larni misol qilib keltirish mumkin.         
""";
    if (lang == 1)
      return """
Разрабатывает автоматизированные мобильные веб-приложения для бизнеса. В основном специализируется на торговле, аптеке, камерах видеонаблюдения.

Известные покупатели: Coca: Cola, Ums, Nestle, Samsung, Bayer, LiquiMoly.
""";
    return """
Develops automated mobile, web applications for businesses. Mainly specializes in trade, pharmacy, security cameras.

Well-known customers: Coca: Cola, Ums, Nestle, Samsung, Bayer, LiquiMoly.
""";
  }

  static String title2(int lang) {
    if (lang == 0) return "Bilim ko'nikmalar";
    if (lang == 1) return "Знания, навыки";
    return "Knowledge, skills";
  }

  static String titleProg(int lang) {
    if (lang == 0) return "Dasturlash yo'nalishlari";
    if (lang == 1) return "Области программирования";
    return "Areas of programming";
  }

  static String titleTec(int lang) {
    if (lang == 0) return "Dasturlash texnalogiyalari";
    if (lang == 1) return "Технологии программирования";
    return "Programming technologies";
  }

  static String titleLang(int lang) {
    if (lang == 0) return "Chet tili";
    if (lang == 1) return "Иностранный язык";
    return "Foreign language";
  }

  static String langEng(int lang) {
    if (lang == 0) return "Ingliz tili";
    if (lang == 1) return "Aнглийский";
    return "English";
  }

  static String langRu(int lang) {
    if (lang == 0) return "Rus tili";
    if (lang == 1) return "Русский";
    return "Russian";
  }

  static String title3(int lang) {
    if (lang == 0) return "Qo'shimcha";
    if (lang == 1) return "Дополнительный";
    return "Additional";
  }

  static String other1(int lang) {
    if (lang == 0) return "Flutter bo'yicha bilimlarim";
    if (lang == 1) return "Мои знания о flutter";
    return "My knowledge of flutter";
  }

  static String other2(int lang) {
    if (lang == 0)
      return "Arxitektura: BLoC/Provider/GetX\nApi: RestApi/WebSocket/Firebase\nGit: GitHub/GitLab";
    if (lang == 1)
      return "Архитектура: BLoC/Provider/GetX\nApi: RestApi/WebSocket/Firebase\nGit: GitHub/GitLab";
    return "Architecture: BLoC/Provider/GetX\nApi: RestApi/WebSocket/Firebase\nGit: GitHub/GitLab";
  }
}
