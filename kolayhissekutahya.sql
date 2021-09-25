-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 11 Tem 2021, 12:47:25
-- Sunucu sürümü: 5.6.51-cll-lve
-- PHP Sürümü: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kutahy25_agd2020`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(1) NOT NULL DEFAULT '0',
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_siteurl` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_fax` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_recapctha` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_googlemap` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_siteurl`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_fax`, `ayar_mail`, `ayar_adres`, `ayar_ilce`, `ayar_il`, `ayar_mesai`, `ayar_recapctha`, `ayar_googlemap`, `ayar_analystic`, `ayar_facebook`, `ayar_twitter`, `ayar_youtube`, `ayar_google`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`) VALUES
(0, 'kolayhisselogo.png', 'http://www.kolayhissekutahya.com', 'Kolay Hisse Kütahya', 'Helal ve Güvenilir Kurban Hisse Kesimi', 'Kolay Hisse, Helal Kesim,Kütahya,AGD,Kurban', '.', '0274 212 03 66', '0533 766 63 29', '3211111', 'agd@kolayhissekutahya.com', 'Alipaşa, Duyan Sk. No:12, 43020 Kütahya ', 'Merkez', 'Kütahya', '.', '123123', '33121', '331242', 'https://www.facebook.com/agdkutahyaa/', 'https://twitter.com/agdkutahya', 'https://www.youtube.com/user/tvagd', '.', 'mail.kolayhissekutahya.com', 'agd@kolayhissekutahya.com', 'b339f4d2', '465');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basvuru`
--

CREATE TABLE `basvuru` (
  `basvuru_id` int(11) NOT NULL,
  `basvuru_sira` int(11) NOT NULL,
  `basvuru_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_mail` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_telefon1` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_telefon2` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_meslek` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_dogumtarihi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_cinsiyet` enum('Erkek','Kadın') COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_teslimatilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_teslimatadres` text COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_hissetur` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_odemeturu` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_vekalet` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_not` text COLLATE utf8_turkish_ci NOT NULL,
  `basvuru_odeme` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(1) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Hakkımızda', '<p><strong><big>&quot;İnsanların en hayırlısı insanlığa faydalı olandır.&quot; inancı ile &ccedil;alışmalarını y&uuml;r&uuml;ten Anadolu Gen&ccedil;lik Derneği, &uuml;lkemizin il, il&ccedil;e, belde ve mahallelerinde kurduğu şube , temsilcilik ve b&uuml;rolarla, bunların yanı sıra diğer m&uuml;essese ve faaliyetlerle &uuml;lkemiz gen&ccedil;liğinin beraberlik ve kardeşliğinin &ouml;nc&uuml;s&uuml; olmuştur.</big></strong></p>\r\n\r\n<p><strong><big>Kurulduğu yıldan bu yana aktivitesini yitirmeyen &ccedil;alışma aşkı ile Anadolu Gen&ccedil;lik Derneği, T&uuml;rkiye&quot;nin en b&uuml;y&uuml;k sivil toplum kuruluşu ve d&uuml;nyanın en b&uuml;y&uuml;k gen&ccedil;lik organizasyonu olarak aziz milletimizin dernek medeniyetinin parlak bir temsilcisi olmayı hak etmiştir.</big></strong></p>\r\n\r\n<p><strong><big>Anadolu Gen&ccedil;lik Derneği şimdiye kadar olduğu gibi bundan sonra da &uuml;stlendiği misyonu ge&ccedil;mişten aldığı g&uuml;&ccedil;le, yarınlara daha b&uuml;y&uuml;k bir heyecanla taşıma azim ve kararlılığındadır.</big></strong></p>\r\n\r\n<p><strong><big>Anadolu Gen&ccedil;lik Derneği&quot;nin &quot;Projesi insan, Muhatap kitlesi gen&ccedil;lik, Sevdası T&uuml;rkiye&quot;dir.</big></strong></p>\r\n\r\n<p><strong><big>Anadolu Gen&ccedil;lik Derneği &quot;Bir yıl sonrasını d&uuml;ş&uuml;n&uuml;yorsanız bir tohum ekin, 10 yıl sonrasını d&uuml;ş&uuml;n&uuml;yorsanız bir fidan dikiniz, 100 yıl sonrasını d&uuml;ş&uuml;n&uuml;yorsanız bir insan yetiştiriniz.&quot; anlayışı ile hareket etmiş ve bug&uuml;n misyonu ve vizyonu ile b&uuml;t&uuml;n insanımızı kucaklayan, teknolojiyi kullanan, ilmi akademik seviyeli &ccedil;alışmaları ile insanımızdan aldığı g&uuml;c&uuml; yine onların istifadesine sunan &ouml;zelliği ile &ccedil;alışmalara devam edecektir.</big></strong></p>\r\n\r\n<p><strong><big>Anadolu Gen&ccedil;lik Derneği yıllardır canından ve cananından aziz saydığı mukaddes g&ouml;rev aşkıyla insanlığa hizmet vermiştir. Yıllarca en &ouml;nde y&uuml;r&uuml;yen &quot;sevgi ve kardeşlik bayrağı&quot;nı bug&uuml;n daha geniş ufuklara g&ouml;t&uuml;rmenin haklı gururunu hep birlikte yaşamaktadır.</big></strong></p>\r\n\r\n<p><strong><big>Anadolu Gen&ccedil;lik Derneği&quot;nin rakibi; kavga, &ccedil;atışma, kin ve cehalet olmuştur. Onların yerine fedak&acirc;r kadroları ile barışı, sevgiyi, konuşarak anlaşmayı ve bilgiyi ikame etmeye gayret g&ouml;stermiştir.</big></strong></p>\r\n\r\n<p><strong><big>Bug&uuml;n d&uuml;nyada ulus-devlet yapısından uluslar &uuml;st&uuml; bir yapıya doğru hızlı bir ge&ccedil;iş s&uuml;reci yaşanmaktadır. Bunun doğal bir sonucu olarak, &uuml;&ccedil;&uuml;nc&uuml; sekt&ouml;r olarak adlandırılan sivil toplum kuruluşlarının sorumluluğu ve etkinliği &ccedil;ok daha artmaktadır.</big></strong></p>\r\n', 'CKaQ-nEOTdA', 'Doldurulacak', 'Doldurulacak');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `icerik_zaman` datetime NOT NULL,
  `icerik_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `iletisim_id` int(11) NOT NULL,
  `iletisim_adsoyad` varchar(100) NOT NULL,
  `iletisim_mail` varchar(100) NOT NULL,
  `iletisim_konu` varchar(100) NOT NULL,
  `iletisim_telefon` varchar(100) NOT NULL,
  `iletisim_mesaj` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`iletisim_id`, `iletisim_adsoyad`, `iletisim_mail`, `iletisim_konu`, `iletisim_telefon`, `iletisim_mesaj`) VALUES
(1, 'ad', 'ad', 'ad', 'ad', 'ad'),
(2, '', 'info@kolayhissekutahya.com', 'Regarding kolayhissekutahya.com', '(62) 7074-5689', 'Hi there\r\n\r\nEASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain\r\nTry NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\n_ Designed By Doctor & Chiropractor\r\n_ Ergonomic Design - Fits Everyone\r\n_ Circulation To Head\r\n_ Stimulating Key Result Area\r\n\r\nKind Regards,\r\n\r\nKolay Hisse K\0tahya'),
(3, '', 'info@kolayhissekutahya.com', 'Lead For kolayhissekutahya.com', '(08) 8341 0347', 'Hey there\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n__LED Bionic Wave Technology\r\n__Eco-Friendly\r\n__15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nRegards,\r\n\r\nKolay Hisse K\0tahya'),
(4, ' ', 'info@kolayhissekutahya.com', 'Best Offer For kolayhissekutahya.com', '03834 39 17 71', 'Good day \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\n \r\nThanks and Best Regards, \r\n \r\nKolay Hisse K\0tahya - kolayhissekutahya.com'),
(5, ' ', 'info@kolayhissekutahya.com', 'Best Lead kolayhissekutahya.com', '(08) 8232 1942', 'Morning \r\n \r\nCAREDOGBEST_ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n \r\n \r\nThanks and Best Regards, \r\n \r\nKolay Hisse K\0tahya'),
(6, ' ', 'info@kolayhissekutahya.com', 'Regarding kolayhissekutahya.com', '03.19.27.52.97', 'Hello\r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING_. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: thawking.online\r\n\r\nBest regards,\r\n\r\nKolay Hisse K\0tahya'),
(7, '', 'info@kolayhissekutahya.com', 'Regarding kolayhissekutahya.com', '04.35.86.93.06', 'Good day \r\n \r\nWear with intent, live with purpose. Fairly priced sunglasses with high quality UV400 lenses protection only $19.99 for the next 24 Hours ONLY.\r\n\r\n\r\n\r\nOrder here: kickshades.online\r\n \r\nKind Regards, \r\n \r\nKolay Hisse K\0tahya'),
(8, '', 'contact@kolayhissekutahya.com', 'Regarding kolayhissekutahya.com', '(21) 2508-5292', 'Good Morning \r\n \r\nBuy all styles of Oakley Sunglasses only 19.99 dollars.  If interested, please visit our site: designeroutlets.online\r\n \r\n \r\nThanks and Best Regards, \r\n \r\nKolay Hisse K\0tahya'),
(9, '', 'info@kolayhissekutahya.com', 'Lead For kolayhissekutahya.com', '06-32635616', 'Hey\r\n\r\nCAREDOGBEST_ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nFREE Worldwide Shipping!\r\n\r\nClick here: caredogbest.online\r\n\r\nEnjoy,\r\n\r\nKolay Hisse K\0tahya'),
(10, '', 'admin@kolayhissekutahya.com', 'Best Offer For kolayhissekutahya.com', '06853 91 04 68', 'Hey \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\n \r\nEnjoy, \r\n \r\nKolay Hisse K\0tahya'),
(11, '', 'contact@kolayhissekutahya.com', 'Admin kolayhissekutahya.com', '071 29 33 91', 'Good day \r\n \r\nFull Body Resistance Band Kit - The best and cheapest athletic gear available on the market today. \r\nDo a full body workout from the comfort of your home. You don\'t even need a gym anymore! \r\n\r\nSave 25% OFF + FREE Worldwide Shipping\r\nShop Now: ametathletics.online\r\n \r\n \r\nRegards, \r\n \r\nKolay Hisse K\0tahya'),
(12, '', 'info@kolayhissekutahya.com', 'Concerning kolayhissekutahya.com', '02680 46 85 87', 'Morning\r\n\r\nDeliver the Highest-Quality disposable face mask from Certified Manufacturers Directly to You.  The price for N95 Face Mask is $1.99 each.  If interested, please check our site: pharmacyoutlets.online\r\n\r\nThe Best,\r\n\r\nKolay Hisse K\0tahya'),
(13, ' ', 'carls.aurelio@outlook.com', 'Kolay Hisse K\0tahya - Block spam messages', '06-76180111', 'Hello.\r\nWe\'ll help stop spending your attention and time on Spam Emails. We\'d like to provide to you our services, the following is our project:\r\nhttps://jtbtigers.com/blockspam508909\r\nBest regards,\r\n\r\n\r\n\r\n'),
(14, '', 'sherlyn.guzzi@gmail.com', 'Your Website Can Do Better than as it\'s Now With This', '032 713 50 19', 'Hello!\r\nPlease permit me to quickly introduce to you what will benefit your website significantly as we prepare to enter 2021.\r\nDo you own a business? If yes, definitely your business also has a website. And the purpose is to put your business online and to drive traffic. How do you ensure that your website is in a good position on the search engines to achieve its purpose? In these days of search engine optimization and the wholesale transition to the Internet that many companies are undergoing, Alexa traffic rank is one of the most critical metrics for measuring your site performance, especially compared to other websites in your specific niche.\r\nGiven that Alexa ranking provides you information about your website, it is an excellent tool to view search engine optimization. If your website is not optimized in the major search engines such as Google, Bing, Yahoo, etc., it\'s definitely can\'t achieve its purpose.  \r\nSo what should you do? \r\nIt\'s quite easy to get started. Boost your Alexa ranking! It is considered one of the most important factors in evaluating your website\'s value by search engines. If you own a website that you would also want to monetize by selling text links ads or sponsored ads, you need to boost your Alexa ranking.\r\nInterestingly, I have good news for you today. We can help you to BOOST your website ALEXA RANK up to 29,999 globally. I guess you know what that means, a better SEO for the site. Better website value. \r\nPlease visit https://alexaspeed.com now to boost your website ALEXA RANK. Thank you.\r\nIf you have any questions, feel free to send an email to support@alexaspeed.com.\r\n\r\nBest regards,\r\nAlexaSpeed Team'),
(15, ' ', 'info@kolayhissekutahya.com', 'Concerning kolayhissekutahya.com', '0711 72 96 78', 'Hey there\r\n\r\nBuy face mask to protect your loved ones from the deadly CoronaVirus.  The price for N95 Mask is $1.99 each.  If interested, please visit our site: facemaskusa.online\r\n\r\nKind Regards,\r\n\r\nKolay Hisse K\0tahya'),
(16, ' ', 'parish.margo@outlook.com', 'Buy Verified Google Reviews', '0911 68 04 53', 'Good Afternoon,\r\nI\'m ,\r\nHow are you doing regarding your Business Reviews?\r\nGoogle reviews increase trust and credibility. This might sound strange, but a vast most 18-35-year-olds trust online reviews just as much as recommendations from relatives and buddies.\r\nhttps://onlineuniversalwork.com/googlereviews891950 \r\nKind Regards,\r\n'),
(17, '', 'salvatore.fink@gmail.com', 'Re:Hi', '(03) 5374 1289', 'Hey people at kolayhissekutahya.com,\r\nHope you_re excellent. \r\nI\'m ,\r\nHope you_re good, and that the company is good. Please allow me to introduce to you this service.\r\nUse our Artificial Intelligence service to submit your site to a huge number of directories and search engines.\r\nhttps://slimex365.com/websitesubmitter361263\r\nSincerely,\r\n'),
(18, ' ', 'horsley.emilia@yahoo.com', 'Attention Backlinks', '66 755 41 80', 'Hi \r\nHope you_re well, and that the company is good.\r\nHere is the best tool you\'ll need to acquire more customers from you\'re website. \r\nhttps://slimex365.com/backlinks146935\r\nWith warm regards,\r\n'),
(19, '', 'sommer.penson@yahoo.com', 'Take a closer look at your website', '0393 8377909', 'Good morning \r\nHope you_re great, and that business is good.\r\nLook at this tool to help you get new clients, asap from your guests. \r\nhttps://1borsa.com/backlinks889885\r\nWarm regards,\r\n'),
(20, '', 'niki.wootten@outlook.com', 'Take a closer look at your website', '078 3456 5098', 'Good Afternoon \r\nHope you_re well, and that clients are good.\r\nHave a look at the best tool you have to have to speed your business progress finding new customers on the website.\r\nhttps://slimex365.com/backlinks146935\r\nKind regards,\r\n\r\n'),
(21, ' ', 'julius@stardatagroup.com', 'StarDataGroup.com Shutting Down', 'NA', 'It is with sad regret to inform you StarDataGroup.com is shutting down.\r\nIt has been a tough year all round and we decided to go out with a bang!\r\n\r\nAny group of databases listed below is $49 or $149 for all 16 databases in this one time offer.\r\nYou can purchase it at www.StarDataGroup.com and view samples.\r\n\r\n- LinkedIn Database\r\n 43,535,433 LinkedIn Records\r\n\r\n- USA B2B Companies Database\r\n 28,147,835 Companies\r\n\r\n- Forex\r\n Forex South Africa 113,550 Forex Traders\r\n Forex Australia 135,696 Forex Traders\r\n Forex UK 779,674 Forex Traders\r\n\r\n- UK Companies Database\r\n 521,303 Companies\r\n\r\n- German Databases\r\n German Companies Database: 2,209,191 Companies\r\n German Executives Database: 985,048 Executives\r\n\r\n- Australian Companies Database\r\n 1,806,596 Companies\r\n\r\n- UAE Companies Database\r\n 950,652 Companies\r\n\r\n- Affiliate Marketers Database\r\n 494,909 records\r\n\r\n- South African Databases\r\n B2B Companies Database: 1,462,227 Companies\r\n Directors Database: 758,834 Directors\r\n Healthcare Database: 376,599 Medical Professionals\r\n Wholesalers Database: 106,932 Wholesalers\r\n Real Estate Agent Database: 257,980 Estate Agents\r\n Forex South Africa: 113,550 Forex Traders\r\n\r\nVisit www.stardatagroup.com or contact us with any queries.\r\n\r\nKind Regards,\r\nStarDataGroup.com'),
(22, '', 'zaragoza.tom@gmail.com', 'Kolay Hisse K\0tahya - You have to stop receiving spam', '078 5880 8701', 'Hi|Hey|Good evening|Good morning|Good Afternoon} people at kolayhissekutahya.com,\r\nHope you_re good. \r\nI\'m , I hope that clients are good and you_ve been successful through the current situation.\r\nYou have to protect your website from unwanted messages. Unfortunately yours doesn_t help, you will need to fully grasp this, I mean literally.\r\nhttps://bogazicitente.com/captcha553408\r\nIf you are not interested, simply ignore this message so we won\'t email you again.\r\nWe wish you success and new clients.'),
(23, '', 'info@kolayhissekutahya.com', 'Regarding kolayhissekutahya.com', '0389 6948936', 'You Won\'t Want To Miss This!  50 pcs medical surgical masks only $1.99 and N95 Mask $1.79 each.  \r\n\r\nSpecial Offer for the next 48 Hours ONLY!  Get yours here: pharmacyusa.online\r\n\r\nCheers,\r\n\r\nKolay Hisse K\0tahya'),
(24, '', 'aaron.haining@gmail.com', 'Kolay Hisse K\0tahya - Stop receiving unwanted messages', '605-350-7418', 'Good Afternoon people at kolayhissekutahya.com,\r\nHope you_re great. \r\nI\'m , I hope that business is profitable and you_ve been succeeding throughout the current situation.\r\nOur website scanner has generated that the website (kolayhissekutahya.com) might have a decreased spam protection level. We have tested your website by sending you this message, and yes it confirms that your site is not efficient in blocking spam. Should you want to block spam messages forever, consider buying our anti-spam protection. Delivery within 3-5 week days.\r\nhttps://your-pc-specialist.com\r\nIf you are not interested, just ignore this email , we won\'t contact you again.\r\nKind regards,\r\n\r\nOneTwo GmbH\r\nP.S.We wish you a million clients this year.\r\n'),
(25, ' ', 'wendell@sendbulkmails.com', 'SendBulkMails.com', 'NA', 'Use SendBulkMails.com to run email campaigns from your own private dashboard.\r\n\r\nCold emails are allowed and won\'t get you blocked :)\r\n\r\nStarter Package 50% off sale\r\n- 1Mil emails / mo @ $99 USD\r\n- Dedicated IP and Domain Included\r\n- Detailed statistical reports (delivery, bounce, clicks etc.)\r\n- Quick and easy setup with extended support at no extra cost.\r\n- Cancel anytime!\r\n\r\nRegards,\r\nwww.SendBulkMails.com'),
(26, '', 'info@kolayhissekutahya.com', 'Lead For kolayhissekutahya.com', '0981 97 49 13', 'You Won\'t Want To Miss This!  50 pcs medical surgical masks only $1.99 and N95 Mask $1.79 each.  \r\n\r\nSpecial Offer for the next 48 Hours ONLY!  Get yours here: pharmacyusa.online\r\n\r\nBest Wishes,\r\n\r\nKolay Hisse K\0tahya'),
(27, ' ', 'anitra.osullivan@yahoo.com', 'Re:Attn.: To Manager - Website Submitter \0', '04862 18 77 99', 'Good morning people at kolayhissekutahya.com,\r\nHope you_re great. \r\nI\'m ,\r\nHope you_re excellent, and that clients are good. Please allow me to introduce to you this service.\r\nThe only service you\'ll need to get your website to the top.\r\nhttps://bogazicitente.com/websitesubmitter811178\r\nWith warm regards,\r\n\r\nP.S.We wish you thousands of clients this year.'),
(28, ' ', 'cherie.rash@googlemail.com', 'Problem', '04.72.27.75.49', 'Greetings kolayhissekutahya.com,\r\nI hope this email finds you well, I_m writing this email to brief you about the perks of using our product for neck pain named as\0NeckBc.\r\nSince health is the most important thing in our life and being healthy should be a part of our overall life style. But most of the people today are so busy with their work that they do not have time to look after their health. Sometimes working in front of computer can lead to neck pain and that is why we came up with the product that will help you through pain relief in a very convenient way.\r\nWe have always considered customer satisfaction as our first priority and due to this attribute, we have got many positive reviews from our valuable clients from diverse business backgrounds. So do not miss out because we are offering 50% off on our product see it here: neckbc.com .\r\nWhen such an amazing product is available to you, I_m sure none of you would want to refrain from buying it. \r\nLooking forward to serve you with the most effective Product for your neck pain relief.'),
(29, ' ', 'info@kolayhissekutahya.com', 'Lead For kolayhissekutahya.com', '0664 620 94 69', 'You Won\'t Want To Miss This!  50 pcs medical surgical masks only $1.99 and N95 Mask $1.79 each.  \r\n\r\nOnly 10 orders left!  Get yours here: pharmacyusa.online\r\n\r\nThank You,\r\n\r\nKolay Hisse K\0tahya'),
(30, '', 'w.or.d.p.r.e.s.s2.00.2.19.8.8+lewisohn@gmail.com', 'Question', '07453 22 06 44', 'Hello There,\r\n\r\nAre you currently utilising Wordpress/Woocommerce or maybe do you project to utilise it as time goes on ? We offer a little over 5000 premium plugins but also themes to down load : https://shortrr.buzz/3XNM6\r\n\r\nCheers,\r\n\r\nGracie'),
(31, ' ', 'patrice@stardatagroup.com', 'Question?', 'NA', 'Do you need more clients? \r\n\r\nWe have amazing databases starting at $9.99 until the end of the Month!\r\n\r\nVisit us at StarDataGroup.com'),
(32, ' ', 'hello@kolayhissekutahya.com', 'Concerning kolayhissekutahya.com', '043 976 70 21', 'Hey \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\nMany Thanks, \r\n \r\nkolayhissekutahya.com'),
(33, ' ', 'marko@sendbulkmails.com', 'Clients? We got you covered. SendBulkMails.com', 'NA', 'SendBulkMails.com allows you to reach out to clients via cold email marketing.\r\n\r\n- 1Mil emails starter package\r\n- Dedicated IP and Domain Included\r\n\r\n- Detailed statistical reports (delivery, bounce, clicks etc.)\r\n\r\n- Quick and easy setup with extended support at no extra cost.\r\n\r\n- Cancel anytime!\r\n\r\nSendBulkMails.com'),
(34, '', 'pinedo.roma59@gmail.com', 'Website submitter, inside!', '01.35.40.86.83', 'Hey people at kolayhissekutahya.com,\r\nHope you_re well. \r\nI\'m ,\r\nHope you_re excellent, and that customers are profitable. Please allow me to introduce to you this service.\r\nUse our Artificial Intelligence service to submit your website to a huge number of directories and search engines like google.\r\nhttps://one-two-seo.com/website-submitter\r\nWith best regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://one-two-seo.com/?unsubscribe=kolayhissekutahya.com\r\n'),
(35, ' ', 'alberto.shand@yahoo.com', '1.000 Social Signals, inside!', '077 3102 4813', 'Good Afternoon - kolayhissekutahya.com,\r\n\r\nIt has been shown that there\'s a strong correlation between social networking activity and rankings. The more content is shared, liked, commented on, the higher its quality, value, relevance, and, therefore, ranking in Search Engines.\r\nCheck what we are capable of doing for you: \r\nhttps://it-seo-specialists.com/socialsignals\r\nKind regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://it-seo-specialists.com/?unsubscribe=kolayhissekutahya.com'),
(36, '', 'bell.bohr@hotmail.com', 'Your 1.000 Social Signals for kolayhissekutahya.com', '06-54737379', 'Hey - kolayhissekutahya.com,\r\n\r\nIt has been proven that there\'s a strong correlation between social media activity and rankings. The more content is shared, liked, commented on, the higher its quality, value, relevance, and, therefore, ranking in Search Engines.\r\nCheck what we can perform for you: \r\nhttps://best-social-signals.com\r\nWarm regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://one-two-seo.com/?unsubscribe=kolayhissekutahya.com'),
(37, '', 'sherri.wirth@gmail.com', 'Submit your website to thousands of search engines and directories, your website submitter\0 has arri', '443-475-0351', 'Hey people at kolayhissekutahya.com,\r\nHope you_re excellent. \r\nI\'m ,\r\nHope you_re excellent, and that business is good. Please allow me to introduce to you this service.\r\nMinimize some time and expenses in promoting your site with the Artificial Intelligence Website Submitter.\r\nhttps://it-seo-specialists.com/website-submitter\r\nSincerely,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://it-seo-specialists.com/?unsubscribe=kolayhissekutahya.com'),
(38, '', 'reuben@sesforyou.com', 'New Business Inquiry', 'NA', 'Hey, \r\n\r\nListen, business is tough right now for most people.  \r\n\r\nDoes this sound like your situation?\r\n\r\n-Not enough quality leads?\r\n-Not enough revenue?\r\n-Always looking for more business?\r\n-Working too hard?\r\n\r\nI have the solution to help make this a great year for your business.\r\n\r\nI will show you how to Drive Revenue, Sales and Commissions...during the day and more importantly while you sleep...\r\n \r\n==> https://sesforyou.com\r\n \r\nRegards,\r\nSesForYou.com'),
(39, '', 'phil.rooney47@gmail.com', 'Kolay Hisse K\0tahya -  Enough of receiving s p a m messages', '0664 157 65 29', 'Hi people at kolayhissekutahya.com,\r\nHope you_re good. \r\nI\'m , I hope that the company is profitable and you_ve been achieving a lot through the entire current situation.\r\n In my humble opinion, you\'re not protected against automated messages, that sucks, you have access to, I mean literally.\r\nhttps://seo-spesialists.com/captcha\r\nKind regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://seo-spesialists.com/?unsubscribe=kolayhissekutahya.com'),
(40, ' ', 'blackwell.norris@gmail.com', 'Speedup - kolayhissekutahya.com', '0493 12 28 22', 'Good Afternoon\r\nDo you want to optimize your website? Finally, a comprehensive service where you can sit back and let us do everything for you. Let us help you:\r\nhttps://it-seo-specialists.com/technicalseo/\r\nHave great day!\r\nSincerely,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://it-seo-specialists.com/?unsubscribe=kolayhissekutahya.com'),
(41, '', 'arnulfo.millard@outlook.com', '100 facebook followers for kolayhissekutahya.com, have arrived!', '078 4888 4249', 'Good Afternoon\r\nPay attention to your social media. The first step of promoting your social media accounts is making sure people know where to find you. We can_t wait to help you with that.\r\nHere is our offer to you:\r\nhttps://your-seo-specialists.com\r\nKind regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://your-seo-specialists.com/?unsubscribe=kolayhissekutahya.com'),
(42, '', 'priscilla@bestlocaldata.com', 'BestLocalData.com', 'NA', 'Hello,\r\n\r\nBestLocalData.com has a special package you get any group of databases for $49 or $249 for all 16 databases and unlimited emails for a year(Domain, IP, Dashboard included).\r\n\r\nYou can purchase it on BestLocalData.com and see samples if you are interested.\r\n'),
(43, '', 'shantae.wink@gmail.com', 'Verified facebook reviews, inside for kolayhissekutahya.com', '0474-5979875', 'Hey,\r\nI\'m ,\r\nHow are you doing regarding your Facebook Page Reviews?\r\nFacebook Page reviews increase trust and credibility in social media. This might sound strange, but an enormous most 18-35-year-olds trust online reviews just as much as recommendations from family and friends.\r\nCheck what we are able to do for you: \r\nhttps://business-it-services.com/facebook-page-reviews\r\nBest regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://business-it-services.com/?unsubscribe=kolayhissekutahya.com'),
(44, '', 'osman.zelda@gmail.com', 'Kolay Hisse K\0tahya', '487 26 278', 'Hi \r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING_. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\nBuy now: thawking.online\r\n\r\nThank You, \r\n\r\nZelda\r\nKolay Hisse K\0tahya'),
(45, ' ', 'jolie.cockrell@msn.com', 'Need an extra Income?', '0664 553 68 72', 'Need extra income?\r\n\r\nA fully hosted, done for you content + monetisation and a stunning design web based software that creates a fully automated done for you cryptocurrency affiliate site,\r\n\r\nVisit us: https://warriorplus.com/o2/a/f5s4y/0'),
(46, ' ', 'gipps.adrian@gmail.com', '', '079 4379 1813', 'Do you want more people to visit your website? Enjoy thousands of people who are ready to buy sent directly to your website. Boost your profits quick. Start seeing results in as little as 48 hours. For additional information Check out: http://bit.ly/web-traffic-targeted-for-your-niche'),
(47, ' ', 'info@kolayhissekutahya.com', 'kolayhissekutahya.com', '0565-8281568', 'Hello \r\n\r\nWear with intent, live with purpose. Fairly priced sunglasses with high quality UV400 lenses protection only $19.99 for the next 24 Hours ONLY.\r\n\r\nOrder here: kickshades.online\r\n\r\nEnjoy, \r\n\r\nJorja\r\nKolay Hisse K\0tahya'),
(48, '', 'federico.kemble72@msn.com', 'lifemail.studio', '08-2291344', 'Hey,\r\n\r\nIt was nice speaking to you the other day, this is the service I was telling you about that helped us boost our ROI almost 2000%\r\n\r\nIts a company called Lifemail.studio sorry it took so long to get back to you. They allow you to send any email doesn\'t matter what.\r\n\r\nWe dealt with a guy named Michael, he was friendly and got us setup really quickly.\r\n\r\nRegards,\r\nFederico'),
(49, ' ', 'saavedra.kasey@hotmail.com', 'kolayhissekutahya.com - your google your reviews, have arrived!', '0391 2837061', 'Hey,\r\nI\'m ,\r\nHow are you doing regarding your Business Reviews?\r\nGoogle reviews expand your internet exposure and local SEO. Since successful marketing tactics drive google_s algorithm, businesses with multiple reviews show up first in local searches.\r\nhttps://genius-seo.com/google-business-and-maps-reviews\r\nKind Regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://genius-seo.com/?unsubscribe=kolayhissekutahya.com'),
(50, ' ', 'rickey@lifemailnow.com', 'LifeMailNow.com - One Time cost, unlimited Emails', '', 'Hello,\r\n\r\nSend unlimited emails to unlimited lists with one click and no monthly fees!\r\n\r\n$99 once off!\r\n\r\nLifeMailNow.com'),
(51, ' ', 'ash@techknowspace.com', '', '888-938-8893', 'Hello,\r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board & Mainboard Repair\r\n\r\nWhen other shops say \"it can\'t be fixed\" WE CAN HELP!\r\n\r\nALL iPHONE 8 & NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n\r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands & Models - Custom Built - PC & Mac\r\nGame Consoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands & Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series & Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands & Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands & Models - iPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893\r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\n<img src=\"https://yt3.ggpht.com/ytc/AAUvwnhUhkYdWNeEvgk0Kb1HPFRGjLlXdAKaAXUhwNjC=s900-c-k-c0x00ffffff-no-rj\" alt=\"Ash Mansukhani\" width=\"500\" height=\"600\"> \r\n'),
(52, '', 'gerardo.watters@hotmail.com', 'Website Submitter\0 - New clients, inside!', '06-15319744', 'Hey people at kolayhissekutahya.com,\r\nHope you_re good. \r\nI\'m ,\r\nHope you_re good, and that business is good. Please allow me to introduce to you this service.\r\nNever has it been so easy in promoting your site. Just enter your URL, and we will do the rest.\r\nhttps://iseo-shop.com\r\nWarm regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://iseo-shop.com/?unsubscribe=kolayhissekutahya.com'),
(53, ' ', 'micheline@bestlocaldata.com', 'BestLocalData.com', '07741 35 32 44', 'Hey!\r\n\r\nBestLocalData has an amazing special. 16 databases for $99. \r\n\r\nLinkedIn(43million records) USA B2B (28 million companies), Australia, South Africa, UK, Germany and all of that included. \r\n\r\nInstant delivery! \r\n\r\nhttps://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7S34LZQSKKQHG\r\n\r\nOr check out more on our website!\r\n\r\nRegards,\r\nMicheline'),
(54, '', 'alton.conder77@gmail.com', '', '06236 21 23 16', 'Want more visitors for your website? Enjoy tons of keyword targeted visitors delivered directly to your site. Boost revenues super fast. You\'ll see results in as quick as 24 hours. To get details For details visit: http://bit.ly/webtraffic-foryourniche'),
(55, ' ', 'norman.gurule@msn.com', 'New clients, have arrived!', '070 3206 3729', 'Good evening\r\nHope you_re well, and that customers are profitable. Please allow me to introduce to you this service that you may find useful for your business.\r\nNever has it so much easier in promoting your internet site. Just enter your URL, and we will do the rest.\r\nhttps://business-it-services.com\r\nRegards,\r\n\r\nP.S. We offer the very best IT services you may find on our shop, still not interested in getting new customers? Here is a quick, 1-click unsubscribe link: https://business-it-services.com/?unsubscribe=kolayhissekutahya.com'),
(56, '', 'teena.kaler@gmail.com', '', '06-37382199', 'Looking for more customers for your website or online store? We can provide targeted people precisely for your specific type of business\r\n To get details Check out: http://bit.ly/get-real-web-visitors'),
(57, ' ', 'jeanette.frias@yahoo.com', ' Boost your online business presence with 1mln backlinks', '0321 1773411', 'Good Afternoon \r\nHope you_re well, and that business is profitable.\r\nTo beat the competitors businesses like yours, you\'ll need this tool to get clients:\r\nhttps://ultimate-marketers.com/backlinks-generator\r\nKind regards,\r\n\r\nP.S. We offer the best marketing services you can check on our website, still not enthusiastic about getting new customers? Here is a straightforward, 1-click unsubscribe link: https://ultimate-marketers.com/?unsubscribe=kolayhissekutahya.com'),
(58, ' ', 'jimmie.beacham84@gmail.com', '', '06-90909057', 'If you\'re looking to get some visitors to your site quick, we sell 3000 niche targeted visitors for just $39 if you\'re interested. Hassle free money back guarantee if you\'re not happy. Take a quick look at my site now: http://bit.ly/quick-web-traffic'),
(59, '', 'blanks.saundra56@yahoo.com', 'Re:Website Submitter\0', '937 97 147', 'Good morning people at kolayhissekutahya.com,\r\nThe easiest method to promote a website. Just enter your internet site URL, and we will do all of the job.\r\nhttps://ultimate-marketers.com\r\nWarm regards,\r\n\r\nP.S. We offer the best IT services you can order on our website, still not thinking about getting new business? Here is a straightforward, 1-click unsubscribe link: https://ultimate-marketers.com/?unsubscribe=kolayhissekutahya.com'),
(60, '', 'fannie.sprague@gmail.com', '', '04.94.79.43.37', 'Boost visitor volumes to your site fast. Get 3,000 visitors in any niche for less than $40. Traffic guaranteed or your money refunded: http://bit.ly/real-human-visitors'),
(61, ' ', 'balfour.dorris99@gmail.com', 'Make cash with us!', '', 'Hi there, I hope you_re doing well.\r\n\r\nI handle influencer relations for LeggingsHut. Great to meet you! \r\nI stumbled across your account and thought your content would be perfect for us.\r\nIf you feel we_d make a good fit, I_d love to invite you to our referral program. \r\n\r\nUse this link to visit, http://leggingscashteam.com \r\n\r\nSincerely, \r\nLeggings Cash Team Judy'),
(62, ' ', 'wendy@sendbulkmails.com', 'SendBulkMails.com', '06-97991330', 'Hello from SendBulkMails.com,\r\n\r\nWe have a special limited offer for you to send unlimited emails.\r\n\r\nWe allow non-permission based emails and you won\'t ever get blocked.\r\n\r\nWe also buy your domain for you and give you a clean IP and setup your DNS records.\r\n\r\nCheck us out on SendBulkMails.com'),
(63, ' ', 'clement.lemke@gmail.com', 'Standout from the competition, keep your kolayhissekutahya.com fast and optimized', '077 8125 6514', 'Now, you can have the best WordPress Website Technicians work on your website, find and fix errors, optimize performance, help your website load faster!\r\nhttps://ultimate-marketers.com/speedup\r\nKind regards,\r\n\r\nP.S. We offer the most effective IT services you can purchase on our website, still not considering getting new customers? Here is a simple, 1-click unsubscribe link: https://ultimate-marketers.com/?unsubscribe=kolayhissekutahya.com'),
(64, '', 'jamika.dittmer@msn.com', '', '078 8700 9343', 'Buy web traffic and boost visitors and sales in just 24 hours! Traffic guaranteed or full refund: http://bit.ly/web-traffic-for-any-niche'),
(65, '', 'rhys.porteous@outlook.com', '', '778-233-4551', 'Buy qualified web traffic for your site. Keyword Targeted. Full refund if not happy.  http://bit.ly/boost-web-traffic-now'),
(66, '', 'mcwilliam.reta@gmail.com', '', '0347 9970298', 'Do you advertise with Facebook or Google? Or any other social media? You\'re probably paying way too much for clicks. I can get you high quality, niche targeted visitors to your site for less than a penny per click! 24 hour turnaround. Money back if not satisfied. Here\'s my site: http://bit.ly/boost-web-traffic-now'),
(67, '', 'megan@order-fulfillment.net', 'order-fulfillment.net', '(08) 8306 7504', 'Hello from order-fulfillment.net,\r\n\r\nDoing your own product shipping or order fulfillment in house?\r\n\r\nTired of it? Visit us on www.order-fulfillment.net  \r\n\r\nWe can store, inventory, and manage your drop shipping / order fulfillment for you.  \r\n\r\nBased in the US for almost 2 decades - we ship around the world and will save you time and money.\r\n\r\nWho would be the best contact at your company to discuss?\r\n\r\nHere are some of the items we ship for clients:\r\n-Books, training manuals, guides\r\n-New member welcomes boxes and gifts\r\n-Product samples\r\n-Marketing materials\r\n-Medical program test kits\r\n-Follow up gifts to clients, leads, and prospects\r\n\r\nThank you!\r\nFulfillment Warehouse\r\nhttps://order-fulfillment.net'),
(68, ' ', 'miguel.stahl@gmail.com', 'Your Google+ Shares for kolayhissekutahya.com', '27-30-69-48', 'Social signals will be the most essential aspect in modern SEO. With our help, you will attain the high page rankings which might be required for online business survival.\r\nCheck what we can perform for you: \r\nhttps://your-seo-technicians.com/socialsignals\r\nRegards,\r\n\r\nP.S. We offer the very best IT services you can order on our shop for making big money in a small business, still not thinking about getting clients? Here is an easy, 1-click unsubscribe link: https://your-seo-technicians.com/?unsubscribe=kolayhissekutahya.com'),
(69, '', 'katrin@fbcourses.net', 'FBCourses.net', '01.23.81.28.06', 'Are you looking for the best way to market your business?\r\n\r\nFbCourses.net has the answer..\r\n\r\nNot sure where to start, or what to do?\r\n\r\nWhy not learn from the best.  All of the best.\r\n\r\nWe are offering at never before seen prices all of the top courses for one insanely low price.\r\n\r\nIf you have been thinking of how to generate more leads, website traffic or sales today is the day.\r\n\r\nAll courses are available in full with immediate download on FbCourses.net\r\n\r\nNot sure which one you like, for the next 24 hours we are offering the entire suite of courses for the lowest amount you could possible imagine.\r\n\r\nCheck us out : FbCourses.net\r\n\r\nYou could be driving new income or starting the new side hustle today!'),
(70, '', 'info@kolayhissekutahya.com', 'kolayhissekutahya.com', '601-398-5936', 'Hey there \r\n \r\nCAREDOGBEST_ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n \r\nHave a great time, \r\n \r\nHector\r\nKolay Hisse K\0tahya'),
(71, ' ', 'sylvester@bestlocaldata.com', 'BestLocalData.com', '69 840 49 85', 'Hello,\r\n\r\nIt is with sad regret to inform you that BestLocalData.com is shutting down.\r\n\r\nWe have made all our databases for sale for a once-off price.\r\n\r\nVisit our website to get the best bargain of your life. BestLocalData.com\r\n\r\nRegards,\r\nSylvester'),
(72, '', 'scotty@bestlocaldata.com', 'BestLocalData.com', '51 367 75 81', 'Hello,\r\n\r\nIt is with sad regret to inform you that BestLocalData.com is shutting down.\r\n\r\nWe have made all our databases for sale for a once-off price.\r\n\r\nVisit our website to get the best bargain of your life. BestLocalData.com\r\n\r\nRegards,\r\nScotty'),
(73, ' ', 'luciana@bestlocaldata.com', 'BestLocalData.com', '', 'Hello,\r\n\r\nIt is with sad regret to inform you that BestLocalData.com is shutting down.\r\n\r\nWe have made all our databases for sale for a once-off price.\r\n\r\nVisit our website to get the best bargain of your life. BestLocalData.com\r\n\r\nRegards,\r\nLuciana'),
(74, '', 'efren.brower@yahoo.com', 'Website Submitter\0 - New clients, have arrived', '081 256 32 47', 'Hi\r\nOnline directories will help you scale your organic growth much quicker than on your own. They provide organic reach on a (hopefully) credible, trustworthy platform, as well as backlinks and additional brand exposure.\r\nhttps://your-marketers.com\r\nRegards,\r\nWe offer the best IT services you can purchase on our shop for making big money in a small business, still not interested in getting clients? Here is an easy, 1-click unsubscribe link: https://your-marketers.com/?unsubscribe=kolayhissekutahya.com\r\n'),
(75, ' ', 'arielle.foletta@gmail.com', '', '704-464-2606', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now'),
(76, '', 'dixie.coldham@googlemail.com', '', '0356 0845032', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now'),
(77, ' ', 'info@kolayhissekutahya.com', 'kolayhissekutahya.com', '079 7263 7955', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: fashiondaily.online\r\n\r\nHave a great time, \r\n\r\nJolene\r\nKolay Hisse K\0tahya'),
(78, '', 'marcotte.winona@gmail.com', 'silent-plug.com', '', 'The plug welcomes you with a super discount of 15% on every product for a limited period of time! (Promo code: THEPLUG)\r\n\r\nWe offer the largest assortment of private databases! Such as: \r\n\r\n- The Largest collection of Linkedin Databases! \r\n- Forex Consumers (worldwide)\r\n- Casino Consumers  (worldwide)\r\n- Business Databases  (worldwide)\r\n- Cryptocurrency consumers  (worldwide)\r\n- many more..\r\n\r\nAnd the best part of it! We are the only source you will ever need! We have the largest database on the market with the greatest prices and team. \r\n\r\nVisit us: https://silent-plug.com/'),
(79, '', 'gary.alice@googlemail.com', 'Take a closer look at your website kolayhissekutahya.com', '519-364-9249', 'Hey \r\nHope you_re excellent, and that business is good.\r\nIf you are a business owner for kolayhissekutahya.com, you likely want to bring traffic to it. Backlinks are important because they specifically aimed at helping you do just that.\r\nhttps://your-marketers.com/backlinks-generator\r\nKind regards,\r\nWe offer the most effective marketing services you may order on our shop for making big money in a small business, still not thinking about getting new clients? Here is a straightforward, 1-click unsubscribe link:  https://your-marketers.com/?unsubscribe=kolayhissekutahya.com'),
(80, ' ', 'bold.carlos@gmail.com', '', '(07) 4511 1089', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now'),
(81, '', 'info@kolayhissekutahya.com', 'kolayhissekutahya.com', '06-42161617', 'Hi \r\n\r\nEnjoy the best experiences in using cell phones/tablet to watch the video, play games, facetime, live stream, read, and more with Flexible Adjustable Tablet Holder. Make your life easier at any place, anywhere, anytime. \r\n\r\nShop now with 50% OFF at: universalholder.online\r\n\r\nMany Thanks, \r\n\r\nDarla\r\nKolay Hisse K\0tahya'),
(82, ' ', 'collado.brandy@googlemail.com', 'kolayhissekutahya.com is King but social proof is Queen, and the lady rules the house!', '0501-6316695', 'Hey,\r\nHow are you doing regarding your Google Business Reviews?\r\nGoogle reviews convert more customers. Customer is a bit more likely to acquire should they end up on the site. So, advertising your Google rating on your google business page or maps will frequently seal the offer.\r\nhttps://first-class-promotion.com/google-business-and-maps-reviews\r\nKind Regards,\r\nWe offer the very best marketing services you may check on our shop for making big money in a small business, still not considering getting new clients? Here is a straightforward, 1-click unsubscribe link: https://first-class-promotion.com/?unsubscribe=kolayhissekutahya.com'),
(83, '', 'bettye.boudreau@hotmail.com', 'Generate backlinks - kolayhissekutahya.com', '06-63658545', 'Good Afternoon \r\nHope you_re good, and that clients are profitable.\r\nTo take your marketing to the peak, you may need only a reverse phone lookup:\r\nhttps://iseo-shop.com/backlinks-generator\r\nWith warm regards,\r\nWe offer the most effective IT services you can purchase on our website for making big money in a small business, still not thinking about getting new clients? Here is an easy, 1-click unsubscribe link: https://iseo-shop.com/?unsubscribe=kolayhissekutahya.com'),
(84, '', 'lenora.felix71@gmail.com', '', '0323 9320552', 'Boost web traffic quick with this:  http://bit.ly/boost-web-traffic-now'),
(85, '', '5ferradj@codk.site', '', '', 'You should check this out before you spend another dime advertising your site:  https://bit.ly/dont-pay-for-ads'),
(86, ' ', 'darren.capehart@outlook.com', '', '078 7442 7223', 'Boost web traffic quick with this:  http://bit.ly/boost-web-traffic-now'),
(87, ' ', 'kraig.joiner17@msn.com', '', '0650 680 32 40', '50 Ways To Advertise Your Business For Free On The Internet : https://bit.ly/50-ways-to-advertise-free');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(2) NOT NULL,
  `kullanici_zaman` datetime NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_ad`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '0000-00-00 00:00:00', 'agdkutahya', 'eeb7dcf6651aa3b4e188494f7f00ddeb', 'AGD Kütahya Şubesi', '5', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_icon` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ust` int(11) NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `kategori_id`, `menu_ad`, `menu_icon`, `menu_ust`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`) VALUES
(1, 0, 'Anasayfa', 'fa-home', 0, '', 'index.php', 0, 1),
(3, 0, 'Hakkımızda', '', 0, '', 'hakkimizda.php', 1, 1),
(5, 0, 'İletişim', '', 0, '', 'iletisim.php', 4, 1),
(6, 0, 'Organizasyon', '', 0, '<p>organizasyonumuz</p>\r\n', 'organizasyonumuz.php', 3, 1),
(7, 0, 'S.S.S.', '', 0, '<p>sıkcasorulanlarekle</p>\r\n', 'sikcasorulanlar.php', 5, 1),
(8, 0, 'Başvuru', '', 0, '<p>basvuru</p>\r\n', 'basvuru.php', 6, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `organizasyon`
--

CREATE TABLE `organizasyon` (
  `organizasyon_id` int(11) NOT NULL,
  `organizasyon_baslik` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `organizasyon_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `organizasyon_video` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `organizasyon_metin` text COLLATE utf8_turkish_ci NOT NULL,
  `organizasyon_metin2` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `organizasyon`
--

INSERT INTO `organizasyon` (`organizasyon_id`, `organizasyon_baslik`, `organizasyon_icerik`, `organizasyon_video`, `organizasyon_metin`, `organizasyon_metin2`) VALUES
(0, 'Organizasyonumuz', '<p><strong><big>Hisse Satışı Nedir: B&uuml;y&uuml;kbaş Kurban Hissesi satın almak isteyen m&uuml;kelleflerin; y&uuml;z y&uuml;ze, telefon veya internet yoluyla yapılan başvurularının bir havuzda toplanarak 7&#39;şerli gruplar halinde bir araya getirilmesi ve her m&uuml;kelleften alınan vek&acirc;letle, grup adına kurbanın alınması, kesilmesi, par&ccedil;alanması ve paketlenerek eve teslim edilmesi işlerinin tamamıdır.</big></strong></p>\r\n\r\n<p><strong><big>Gayemiz: İslami hassasiyetlerden uzak yapılmakta olan Hisse Satışını, inandığımız değerlere uygun alternatif bir hizmet olarak sunabilmek.</big></strong></p>\r\n\r\n<p><strong><big>Uluslararası şirketler tarafından İslami hassasiyetlerden uzak tamamen ticari kaygılarla yapılmakta olan Kurban Hisse Satışının, g&uuml;n&uuml;m&uuml;z T&uuml;rkiye&#39;sinde ibadetten &ccedil;ok et satışı şeklinde ger&ccedil;ekleşmesi hususu g&ouml;z &ouml;n&uuml;ne alındığında, bu alanda inandığımız değerlerle ters d&uuml;şmeden yapılabilecek bir hizmetin alternatif olarak sunulup sunulamayacağı sorusu akıllara gelmektedir. Uluslararası şirketlerin bu işte pazar oluşturması ve bu pazardaki payını artırmak i&ccedil;in yeni yatırımlarla yoluna devam etmesi varılacak sonucun ne kadar vahim olduğunu g&ouml;stermesi a&ccedil;ısından &ouml;nemlidir. Devlet politikası ve k&uuml;resel şirketlerin yanında M&uuml;sl&uuml;manlarda oluşturulan rehavet ve kolaycılığın kurban ibadeti &uuml;zerindeki en b&uuml;y&uuml;k tehlike olduğunu s&ouml;ylemek yanlış olmasa gerek.</big></strong></p>\r\n\r\n<p><strong><big>Tamda bu noktada; Kurban kesmenin et satışı olmadığı aksine titizlikle yapılması gereken bir ibadet olduğu ve bu şuura sahip kişi ve kurumlarca yapılması gerektiği hususu dikkate alındığında AGD tarafından bu hizmet b&uuml;y&uuml;k bir titizlikle verilecektir.</big></strong></p>\r\n', 'CKaQ-nEOTdA', 'Vizyon', 'Misyon');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(11) NOT NULL,
  `slider_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_link`, `slider_sira`, `slider_durum`) VALUES
(60, 'İnek-2', 'dimg/slider/23951236943035729345268904.jpg', 'link yok', 0, '1'),
(61, 'inek 1', 'dimg/slider/27608266572482721767thumb-1920-479453.jpg', 'yok', 0, '1'),
(63, 'inek 3', 'dimg/slider/27512273422100326574940142.jpg', 'a', 0, '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `basvuru`
--
ALTER TABLE `basvuru`
  ADD PRIMARY KEY (`basvuru_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`iletisim_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `organizasyon`
--
ALTER TABLE `organizasyon`
  ADD PRIMARY KEY (`organizasyon_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `basvuru`
--
ALTER TABLE `basvuru`
  MODIFY `basvuru_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `iletisim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `organizasyon`
--
ALTER TABLE `organizasyon`
  MODIFY `organizasyon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
