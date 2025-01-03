import 'package:bac_2025/data/gestion.dart';

//Math Technique Calculatrice
List<int> mtMo3amilat = [7, 6, 6, 3, 2, 2, 2, 2, 2];
List<String> mtCalculatur = [
  "تكنولوجيا",
  "رياضيات",
  "علوم فيزيائية",
  "لغة عربية",
  "لغة فرنسية",
  "لغة انجليزية",
  "تاريخ و جغرافيا",
  "فلسفة",
  "علوم اسلامية",
  "التربية البدنية",
  "الامازيغية",
];
//Math Technique Les Sujets
List<String> mtMawad = [
  "الهندسة الكهربائية",
  "الهندسة المدنية",
  "الهندسة الميكانيكية",
  "هندسة الطرائق",
  "الرياضيات",
  "العلوم الفيزيائية",
  "اللغة العربية",
  "اللغة الفرنسية",
  "اللغة الانجليزية",
  "العلوم الإسلامية",
  "التاريخ و الجغرافيا",
  "الفلسفة",
];
List<String> mTIconsMawad = [
  "images/trisiti.png",
  "images/mechanic.png",
  "images/building.png",
  "images/lamp.png",
  "images/pi.png",
  "images/phisyque.png",
  "images/arabic.png",
  "images/langueges.png",
  "images/langueges.png",
  "images/islam.png",
  "images/hisandgoe.png",
  "images/philosophie.png",
  "images/langueges.png",
];
List _mathUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-math-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-math-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-math-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2012.pdf"
];
List _phisiqueUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-physics-mtm.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-physics-mtm.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-physics-mtm.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2012.pdf"
];
List _hisAndGeo = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-hisgeo-semtm.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-hisgeo-semtm.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-hisgeo-semtm.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2012.pdf"
];
List _arabicUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-arabic-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-arabic-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-arabic-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2012.pdf"
];
List _mechaniqueUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-genie_mecanique-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-genie_mecanique-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-genie_mecanique-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/g_mecanique-bac2012.pdf"
];
List _mtMadaniyaUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-genie_civil-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-genie_civil-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-genie_civil-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civile-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civile-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/g_civil-bac2012.pdf"
];
List _trisitiUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-genie_electrique-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-genie_electrique-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-genie_electrique-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electric-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/electric-bac2012.pdf"
];
List _englishUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-english-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-english-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-english-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2012.pdf"
];
List _frenchUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-french-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-french-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-french-sci.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2012.pdf"
];
List _thamazightUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-tamazight.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-tamazight.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-tamazight.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2012.pdf"
];
List _islamiyaUrls = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-islamic.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-islamic.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-islamic.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2012.pdf",
];

List _ivardanUrl = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-procedes-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-procedes-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-procedes-mt.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2021.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2020.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2019.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2018.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-mt-bac2017.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-bac2016.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-bac2015.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-bac2014.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-bac2013.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/g_procedes-bac2012.pdf"
];
List listaMawadi3MT = [
  _trisitiUrls,
  _mtMadaniyaUrls,
  _mechaniqueUrls,
  _ivardanUrl,
  _mathUrls,
  _phisiqueUrls,
  _arabicUrls,
  _frenchUrls,
  _englishUrls,
  _islamiyaUrls,
  _hisAndGeo,
  falsafaGEMTUrls,
  _thamazightUrls,
];
//Holol
List _mechaniqueUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-genie_mecanique-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-genie_mecanique-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-genie_mecanique-mt_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-mt-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_mecanique-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/g_mecanique-bac2012-correction.pdf"
];
List _mtMadaniyaUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-genie_civil-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-genie_civil-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-genie_civil-mt_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-mt-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civil-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civile-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_civile-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/g_civile-bac2012-correction.pdf"
];
List _mathUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-math-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-math-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-math-mt_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/math-mt-bac2012-correction.pdf"
];
List _phisiqueUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-physics-mtm-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-physics-mtm-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-physics-mtm_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/physics-mt-bac2012-correction.pdf"
];
List _hisAndGeoS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-hisgeo-semtm-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-hisgeo-semtm-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-hisgeo-semtm_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/hisgeo-semtm-bac2012-correction.pdf"
];
List _arabicUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-arabic-sci-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-arabic-sci-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-arabic-sci_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/arabic-sci-bac2012-correction.pdf"
];
List _trisitiUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-genie_electrique-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-genie_electrique-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-genie_electrique-mt_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-mt-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electric-mt-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_electrique-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/g_electric-bac2012-correction.pdf"
];
List _englishUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-english-sci-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-english-sci-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-english-sci_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/english-sci-bac2012-correction.pdf"
];
List _frenchUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-french-sci-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-french-sci-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-french-sci_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/french-sci-bac2012-correction.pdf"
];
List _thamazightUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-tamazight-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-tamazight-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-tamazight_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/tamazight-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/amazigh-bac2012-correction.pdf"
];
List _islamiyaUrlsS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-islamic-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-islamic-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-islamic_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2016-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/islamic-bac2012-correction.pdf",
];

List _ivardanUrlS = [
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2024-procedes-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2023-procedes-mt-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-procedes-mt_correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2021-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2020-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2019-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2018-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-mt-bac2017-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/procedes-mt-bac2016-correction_.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-bac2015-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-bac2014-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/genie_procedes-bac2013-correction.pdf",
  "https://www.ency-education.com/uploads/3/0/9/3/309326/g_procedes-bac2012-correction.pdf"
];
List listaHololMT = [
  _trisitiUrlsS,
  _mtMadaniyaUrlsS,
  _mechaniqueUrlsS,
  _ivardanUrlS,
  _mathUrlsS,
  _phisiqueUrlsS,
  _arabicUrlsS,
  _frenchUrlsS,
  _englishUrlsS,
  _islamiyaUrlsS,
  _hisAndGeoS,
  falsafaGEMTUrlsS,
  _thamazightUrlsS,
];
