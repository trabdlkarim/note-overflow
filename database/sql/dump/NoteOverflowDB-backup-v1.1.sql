-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2019 at 12:30 PM
-- Server version: 10.3.12-MariaDB-2
-- PHP Version: 7.2.9-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noteoverflow`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktiviteler`
--

CREATE TABLE `aktiviteler` (
  `aktivite_id` int(10) NOT NULL,
  `uye_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arkadaslar`
--

CREATE TABLE `arkadaslar` (
  `arkadas_id` int(10) NOT NULL,
  `uye_id` int(10) NOT NULL,
  `arkadas_olma_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bengenme`
--

CREATE TABLE `bengenme` (
  `begenme_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `begenme_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bildirimler`
--

CREATE TABLE `bildirimler` (
  `bil_id` int(10) NOT NULL,
  `bil_sahibi` int(10) NOT NULL,
  `bil_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bil_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dersler`
--

CREATE TABLE `dersler` (
  `ders_id` int(10) NOT NULL,
  `ders_adi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_yariyili` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teorik` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uygulama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_kredisi` tinyint(2) NOT NULL,
  `ders_akts` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dersler`
--

INSERT INTO `dersler` (`ders_id`, `ders_adi`, `ders_icerigi`, `ders_yariyili`, `teorik`, `uygulama`, `ders_kredisi`, `ders_akts`) VALUES
(1, 'Oryantasyon', 'Üniversite ve bölüm ile ilgili bilgiler. Öğrencilerin üniversite yaşamı, üniversite olanakları, bölüm olanakları, yönetmelikler. Bilgisayar Mühendisliği mesleği hakında bilgi, üniversite eğitimi süreci ve mezuniyet sonrası kariyer.Akademik yayın hazırlama, tarama.Ofis programları kullanımı: Kelime İşlemci, Hesap Tablosu, Sunum. Öğrenci değişim programları, üniversiteler arası geçiş\r\nimkanları.', '1.Yarıyıl', '1', '0', 1, 1),
(2, 'Genel Fizik 1', 'Fizik ve Ölçme, Vektörler, Bir boyutta hareket, İki boyutta Hareket, Hareket Kanunları, Dairesel Hareket ve Newton Kanunlarının Diğer Uygulamaları, İş ve Kinetik Enerji, Potansiyel Enerji ve Enerjinin Korunumu, Doğrusal Momentum ve Çarpışmalar, Katı Cismin Sabit Bir Eksen Etrafında\r\nDönmesi, Yuvarlanma Hareketi ve Açısal Momentum, Statik Denge ve Esneklik, Kütle Merkezi.', '1.Yarıyıl', '2', '2', 3, 6),
(3, 'Matematik 1', 'Sayılar, Fonksiyonlar, Fonksiyonların Grafikleri, Parçalı Tanımlı Fonksiyonlar, Limit, Süreklilik,Türev ve Türev Alma Kuralları, Türevin Uygulamaları, Maksimum ve Minimum Değerler,\r\nTürevin Geometrik Yorumu, Maksimum ve Minimum Değer Problemleri, Belirsizlikler ve\r\nL\'Hospital Kuralı,Asimptotlar', '1.Yarıyıl', '2', '2', 3, 6),
(4, 'Algoritma ve Programlama', 'Algoritma ve akış şeması kavramları, genel olarak programlamaya giriş. Değişken kavramı ve bazı\r\ncebirsel işlemlerin algoritma ve akış şemalarının çizilmesi. Dizilerle ilgili algoritmalar ve akış\r\nşemaları.Matrislerle ilgili algoritmalar ve akış şemaları.Sıralama algoritmaları.Basit oyunların\r\nalgoritmaları ve akış şemaları.Python programlama dilinin temel kavramları. Algoritması veya\r\nakış şeması verilen programların Python ile kodlanması.Temel seviyede oyunların kodlanması', '1.Yarıyıl', '2', '2', 3, 5),
(5, 'Bilgisayar Mğhendisliğine Giriş', 'Bilgisayar Mühendisliği kavramı, Bilgi ve Bilgi Sistemleri, Yarıiletkenler, Temel Mantıksal\r\nYapılar,Bilgisayarın Tarihsel Gelişim Süreci, Von Neumann Mimarisi, Bilgisayar Yazılımı, Veri\r\nTabanları, İşletim Sistemleri, Algoritmik Program Tasarımı, Akış Şemaları, Bilgisayar Ağları.', '1.Yarıyıl', '3', '0', 3, 5),
(6, 'Atatürk İlkeleri ve İnkılâp Tarihi 1', 'Atatürk İlkeleri ve İnkılâp Tarihi dersi yüksek öğretimde iki yarıyıl olarak “Atatürk İlkeleri ve\r\nİnkılâp Tarihi I” ve “Atatürk İlkeleri ve İnkılâp Tarihi II” okutulmakta ve ders geçme açısından\r\nbirbirinden bağımsız iki ders niteliği taşımaktadır. Atatürk İlkeleri ve İnkılâp Tarihi, Ulu Önder\r\nMustafa Kemal Paşa’nın Samsun’a çıkmasıyla başlayan ve yurdun işgallerden kurtarılmasından\r\nsonra ülkenin çağdaş ülkeler seviyesine çıkarılmasını amaçlayan inkılâplar dönemini ve Atatürk\r\nilkelerini içerir.', '1.Yarıyıl', '2', '0', 2, 1),
(7, 'Türk Dili 1', 'Türk Dili dersinin amacı, bu dersi alan her gence, ana dilinin yapı ve işleyiş özelliklerini gereğince kavratabilmek; dil-düşünce bağlantısı açısından, yazılı ve sözlü ifade vasıtası olarak, Türkçeyi doğru ve güzel kullanabilme yeteneği kazandırabilmek; öğretimde birleştirici bir dili hâkim kılmak ve ana dili şuuruna sahip gençler yetiştirmektir', '1.Yarıyıl', '2', '0', 2, 1),
(8, 'Yabancı Dil (İngilizce) 1', 'Lisans ve Ön lisans programlarında 1. sınıflara yönelik Temel İngilizce Dersi', '1.Yarıyıl', '2', '0', 2, 2),
(9, 'Genel Fizik 2', 'Elektrik,manyetizma, optik ve modern fizik kanunları ve kavramlarının tanımı, fiziksel\r\nuygulamalarda temel elektrik ve manyetizma kavramlarının uygulanması, fiziksel veya genel\r\nsorunlara karşı sistematik ve mantıksal yaklaşımlar geliştirilmesi', '2.Yarıyıl', '2', '2', 3, 6),
(10, 'Lineer Cebir', 'Lineer denklem sistemleri ve çözümleri (Gauss, Gauss-Jordan, Cramer, ters matris v.b.), matrisler (rank, minör, kofaktör ek kavramları ve matris türleri) ve matrislerde cebirsel işlemler,\r\ndeterminantlar, vektör uzayları, ortagonal ve ortanormal vektörler, lineer bağımlı ve lineer\r\nbağımsız vektörler, vektör uzayının tabanı ve boyutu, Normlu uzaylar, özdeğer problemi (özdeğer\r\nve özvektörler), diyogonelleştirme.', '2.Yarıyıl', '2', '2', 3, 5),
(11, 'Matematik 2', 'Belirsiz İntegral, Riemann İntegrali , Belirli integraller,Analizin Temel Teoremi,İntegral Alma Kuralları, Belirli İntegralin Uygulamaları,Genelleştirilmiş İntegraller.', '2.Yarıyıl', '2', '2', 3, 6),
(12, 'Yapısal Programlama', 'Yapısal programlama kavramı ve c programlama Dili Değişkenler, sabitler ve operatörler Genel giriş çıkış fonksiyonları Program akış kontrol yapıları, döngüler Fonksiyonlar Diziler İşaretçiler Dizgiler Yapılar Dosyalar', '2.Yarıyıl', '2', '2', 3, 6),
(13, 'Atatürk İlkeleri ve İnkılâp Tarihi 2', 'Atatürk İlkeleri ve İnkılâp Tarihi dersi yüksek öğretimde iki yarıyıl olarak “Atatürk İlkeleri ve İnkılâp Tarihi I” ve “Atatürk İlkeleri ve İnkılâp Tarihi II” okutulmakta ve ders geçme açısından birbirinden bağımsız iki ders niteliği taşımaktadır. Atatürk İlkeleri ve İnkılâp Tarihi, Ulu Önder Mustafa Kemal Paşa’nın Samsun’a çıkmasıyla başlayan ve yurdun işgallerden kurtarılmasından sonra ülkenin çağdaş ülkeler seviyesine çıkarılmasını amaçlayan inkılâplar dönemini ve Atatürk ilkelerini içerir.', '2.Yarıyıl', '2', '0', 2, 1),
(14, 'Türk Dili 2', 'Türk Dili II dersi; yazılı ve sözlü anlatım konuları üzerine odaklanır.', '2.Yarıyıl', '2', '0', 2, 1),
(15, 'Yabancı Dil (İngilizce) 2', 'Lisans ve Ön lisans programlarında 1. sınıflara yönelik Temel İngilizce Dersi', '2.Yarıyıl', '2', '0', 2, 2),
(16, 'Veri Yapıları', 'Bu derste anlatılan konular arasında pointer mantığı, algoritmaların asimtotik analizi (Büyük O notasyonu ve onun benzerleri); algoritmaların yinelemeli ve iteratif gerçekleştirimleri; dizi, liste, kuyruk, yığın, heap, sözlük, arama ağacı ve graf gibi popüler veri yapıları ve Java Collection\r\nFramework yer almaktadır. Kod yazımları C ve/veya Java programlama dillerinde yapılmaktadır.', '3.Yarıyıl', '2', '2', 3, 6),
(17, 'Nesneye yönelik programlama ', 'Nesneye yönelik programlama kavramları Java dilinde işlenecektir. Java platform kavramı açıklanacaktır. Nesneye yönelik programama yaklaşımının diğer programlama yaklaşımlarından farklarının incelenmesi. Kontrol ve döngü yapıları. Nesne, sınıf, soyutlama, paketleme, kalıtım, çok biçimlilik kavramlarının teorik ve uygulamalar ile pekiştirilmesi.', '3.Yarıyıl', '2', '2', 3, 6),
(18, 'Ayrık Matematik', 'Bu dersin dört önemli teması olarak adlandırılan matematiksel sonuç çıkarma, kesikli yapılar, algoritmik düşünme, uygulama ve modelleme konuları incelenecektir.', '3.Yarıyıl', '2', '2', 3, 6),
(19, 'Diferansiyel Denklemler', 'Bu dersin içeriği yoktur.', '3.Yarıyıl', '2', '2', 3, 6),
(20, 'Analog Elektronik', 'Devre Elemanlarına Giriş.Pasif Devre Elemanları,Dirençler ve Devreleri,Kondansatörler, Bobinler ve Devreleri, Aktif devre elemanlarına Giriş,Yarı İletkenler, Diyotlar ve Diyot devreleri transistorler ve Bağlantı gurupları,Transistorlü Yükselteçler ve opamplar gösterilmektedir.', '3.Yarıyıl', '2', '2', 3, 6),
(21, 'Olasılık ve İstatistik', 'Mühendisler için temel olasılık ve istatistik teori konu ve uygulamaları.', '4.Yarıyıl', '2', '2', 3, 6),
(22, 'Bilgisayar Organizasyonu', 'Komut Kümesi Mimarisi (KKM) (Instruction Set Architecture) kavramı yanında, veri temsili, bellek adresleme, bellek haritası, yazmaç dosyaları, dallanma, prosedür çağrısı, kod yer değiştirme ve komut yürütümü sırasındaki temel adımlar bu derste anlatılmaktadır. Bunlar tipik bir MIPS\r\nbenzeri RISC makinede Gerçek Assembly Dilinden (TAL), MIPS Assembly Dili (MAL) ve Basit\r\nSoyut Dilde (SAL) öğretilmektedir.', '4.Yarıyıl', '2', '2', 3, 6),
(23, 'Sayısal Elektronik', 'Lojik mantığı, sayı sistemleri, lojik kapılar, Boolean mantığı, Karnough haritaları, Flip-Flop lar, sayıcılar, toplayıcılar-çıkarıcılar, kaydediciler, RAM ve ROM lar, multiplexer-demultiplexer gösterilmektedir.', '4.Yarıyıl', '2', '2', 3, 6),
(24, 'Programlama Laboratuvarı', 'Yapısal ve Nesneye Yönelik Programlama yaklaşımlarının ileri seviye uygulamaları. Yapısal programlama için: dosya yapıları, sıradan ve rast gele erişim, Veri yapıları, kendinden referanslı yapılar, bağlı listeler, kuyruk yapısı, ağaç yapıları. Nesneye programlama için jenerik yapılar, hata kontrolü, veri yapıları, kolleksiyonlar, çoklu kullanım yapıları', '4.Yarıyıl', '0', '4', 2, 6),
(25, 'Bilimsel Hesaplama', 'Bu dersin içeriği yoktur.', '4.Yarıyıl', '3', '0', 3, 6),
(26, 'Devre Analizi', 'Paralel Rezonans, Seri- Paralel karmasık bir devredeki rezonans kosullarının analizi,Yarı Güç\r\nFrekansları ve Rezonans ile ilgili örnekler, Rezonanstaki Akımın Durumu, AC Analizde Çevre\r\nAkımları, Düğüm Gerilimleri , Thevenin ve Norton Yöntemleri,Çevre, Düğüm, Thevenin ve\r\nNorton, Yıldız-Üçgen dönüsümü ve Diğer Analiz Yöntemleri, Kompanzasyon Teoremi,\r\nMaksimum Güç Transferi Teoremi Magnetik Kuplaj Devreler gösterilmektedir.', '4.Yarıyıl', '2', '2', 3, 6),
(27, 'Veri Tabanı Yönetim Sistemleri', 'İlişkisel veri tabanı yönetim sistemlerine giriş ve temel kavramlar tanıtılır. Dönem boyunca ilişkisel veritabanı tasarımı ve SQL ile kullanımı üzerinde odaklanılır. Ders konuları şöyledir; bilgi sistemlerinde Varlık-İlişki diyagramı oluşturma ve veri tabanı olarak belirleme, erişme ve düzenleme ile ilgili kavramsal ve uygulamalı olarak bilgi sahibi olmaları amaçlanmaktadır. Veri tabanı tasarımı ile ilgili kavramlardan sonra bir örnek uygulama üzerinden veri tabanı sorgu dilleri (SQL) ve ORM yapıları üzerinden veri tabanı kullanımı örneklendirilir.', '5.Yarıyıl', '2', '2', 3, 5),
(28, 'İşletim Sistemleri', 'İşletim sistemlerine giriş, süreçler ve iş parçacıkları, IPC, ölümcül kilitler, işlemci zamanlama, bellek yönetimi, giriş ve çıkış sistemi, dosya sistemi.', '5.Yarıyıl', '2', '2', 3, 5),
(29, 'Veri Yönetimi ve Dosya Yapıları', 'Veri ve dosya yapıları, dosya saklama ortamları (sabit diskler, optik depolama ortamları), buffer yönetimi, sıralı erişimli dosyalar ve bunlar üzerinde kayıtların düzenlenmesi, rastgele erişimli dosyalar, çakışmalar, çakışmaların statik ve dinamik yaklaşımlarla çözümlenmesi, indeksli sıralı erişimli dosyalar, bit seviyesinde dosya işlemleri ,ikincil anahtarlar.', '5.Yarıyıl', '2', '2', 3, 4),
(30, 'Mesleki İngilizce', 'Bu dersin temel amacı, öğrencilere bilgisayar mühendisliği/bilimleri ile bilişim teknolojisiyle yakından ilişkili elektrik, elektronik, haberleşme ve mekatronik gibi temel mühendislik dallarında sıklıkla kullanılan teknik terimleri, ifadeleri ve yapıları öğretmektir. Ayrıca bu terimlerin ve ifadelerin İngilizce teknik raporlarda doğru kullanımı pekiştirilir. Derste dağıtılan bilgisayar\r\nbilimleri alanındaki teknik dokümanlar Türkçeye çevrilmektedir.', '5.Yarıyıl', '2', '2', 3, 4),
(31, 'Windows Programlama', '.NET mimarisi, temel veri türleri, sınıflar ve nesneler, temel I/O ve string işlemleri, temsilciler ve olaylar, olay yönetimi, şablonlar, iş parçacıkları, veri tabanına bağlanma ve sorgulamalar, veri tabanı işlemleri için kullanılan farklı kütüphaneler, grafikler, uygulama etki alanları ve servisler.', '5.Yarıyıl', '2', '2', 3, 4),
(32, 'Mikro Denetleyiciler', 'Mikroişlemciler ile Mikrodenetleyiciler arasındaki farkın irdelenmesi. Simülatör kullanılarak Mikrodenetleyici içeren devrelerin tasarlanması. Devre içerisindeki Mikrodenetleyicinin derleyici yardımıyla pic basic pro dili ile programlanarak devre içerisinde gerçek zamanlı çalışmasının gözlemlenmesi.', '5.Yarıyıl', '2', '2', 3, 4),
(33, 'Linux ile Sistem Yönetimi', 'Bu dersin içeriği yoktur.', '5.Yarıyıl', '2', '2', 3, 4),
(34, 'Fonksiyonel Programlama', 'Fonksiyonel programlama temelleri. Özyineleme. Soyutlama. Yüksek dereceli\r\nfonksiyonlar ve veri tipleri. Listelerin kullanımı. Desen eşleme. Monad kavramı.', '5.Yarıyıl', '2', '2', 3, 4),
(35, 'rogramlama Dilleri Kavramları', 'Programlama dillerinin genel özellikleri, kullanım alanları. Dil değerlendirme ölçütleri, dil tasarımını etkileyen unsurlar. Sözdizimi ve anlam analizi, isimler, bağlamalar, kapsamlar, tip kavramı, ifadeler ve atama deyimleri. Kontrol yapıları, Alt programlar ve alt programların gerçekleştirimi. Nesne tabanlı programlama temel kavramları: Soyutlama, kapsülleme, kalıtım. Eşzamanlılık. Sözkonusu programlama dilleri kavramları buyurgan, nesne-tabanlı ve fonksiyonel\r\nprogramlama dilleri vasıtasıyla öğretilmektedir.', '6.Yarıyıl', '2', '2', 3, 5),
(36, 'Veri Haberleşmesi', 'Desrin içeriği boş', '6.Yarıyıl', '2', '2', 3, 5),
(37, 'Nesneye Dayalı Analiz ve Tasarım', 'Dersin içerği boş', '6.Yarıyıl', '2', '2', 3, 5),
(38, 'Mesleki İngilizce 2', 'Bilgisayarlar ve bilişim teknolojileriyle ilişkili güncel dokümanlar öğrencilere dağıtılır. Bu dokümanların tercümeleri yapılır. Özellikle son haftalarda İngilizce doküman hazırlama\r\nkonusunda öğrencilere yardımda bulunulur.', '6.Yarıyıl', '2', '2', 3, 5),
(39, 'İleri Veritabanı Sistemleri', 'İlişkisel veri tabanı yeteneklerinin eksikleri ve çözüm metodları, çok boyutlu veri modelleme, veri ambarları, OLAP küpleri, OLAP mimari tasarımları, OLAP üzerinde sorgu oluşturma ve çalıştırma, veri madenciliği ve veri tabanları ile gerçekleştirimi, mekansal türler ve sorgulanması', '6.Yarıyıl', '2', '2', 3, 5),
(40, 'Programlanabilir Denetleyiciler', 'PIC16F877 mikrodenetleyici deney kiti kullanarak, PicBasic Pro dili yardımıyla gerçek mikrodenetleyici programlanmaktadır. Farklı uygulamaların yer aldığı deney modüllerinde step motor, LCD, Display, Led, Asansör, EEPROM, ADC, Ultrasonic mesafe ölçme, Tuş takımı\r\nuygulamaları gerçekleştirilmektedir.', '6.Yarıyıl', '2', '2', 3, 5),
(41, 'Kriptografi', 'Dersin içeriği yoktur.', '6.Yarıyıl', '2', '2', 3, 5),
(42, 'Mikroişlemciler ve Mikrobilgisayarlar', 'Sayı sistemleri, bilgisayar kodları, boolean mantığı, temel saklayıcı yapısı, Von Neumann makinesi, mikroişlemcinin birimleri ve çalışması, CISC ve RISC mimarileri, x86 mimarisi, bellekler, bellek haritalarının oluşturulması, adresleme modları, veri transfer ve kontrol komutları, mikroişlemcinin farklı çalışma modları, sayfalama.', '6.Yarıyıl', '2', '2', 3, 5),
(43, 'Web Tabanlı Windows Programlama', 'Http temelleri, ASP.NET Web Formlar, Validationlar, Master Sayfalar, ileri düzey LINQ sorgularının yazılması, Linq to XML, Linq to SQL ve Entity Framework , JavaScript ve JQuery, JSON, Web Servis yazımı', '6.Yarıyıl', '3', '0', 3, 5),
(44, 'Formal Diller ve Otomat Teorisi', 'Bu derste farklı hesaplama modelleri tanıtılıp, her bir modelin neleri hesaplayıp hesaplayamayacağı açıklanmaktadır. Chomsky Hiyerarşisindeki diller ve onların hesaplama modelleri öğretilmektedir. Düzenli diller, içerikten bağımsız ve içeriğe bağlı diller ve onları tanıyan modeller derleyici tasarımı perspektifinden açıklanmaktadır. Ayrıca bu modelleri\r\nyazılımla gerçekleştirmede yardımcı olan yazılım araçları (JLex ve CUP) da tanıtılmaktadır.', '7.Yarıyıl', '3', '0', 3, 4),
(45, 'Yöneylem Araştırmalar ve Karar Analizleri', 'Yöneylem araştırması, karar verme ve problem çözme kavramları, Doğrusal programlama (LP), grafik LP çözümü, Grafik çözüm yöntemi için hassasiyet (duyarlılık) analizi. LP problemlerinin bilgisayar kullanılarak çözülmesi. Bellibaşlı LP modellerinin analizi, Simplex yöntemi. Simplex algoritması. Yapay başlangıç çözümü. M yöntemi. Simplex yöntemindeki özel durumlar, Dualite ve Dual problem tanımı. Optimum Primal ve Dual çözümler arası ilişki. Dualite’nin ekonomik yorumlanması. Dual simplex yöntemi, Primal-dual hesaplamaları. Optimal-sonrası analiz veya\r\nHassasiyet (duyarlılık) analizi, ulaştırma modeli ve bunun çeşitleri. Diğer ulaştırma modelleri.\r\nUlaştırma algoritması, Atama modeli. Taşıma modeli, Ağ (şebeke) modelleri. Minimal kapsayan\r\nağaç yapısı (Minimal Spanning Tree, MST) algoritması. En kısa yol problemi, Maksimum akış\r\nmodeli. Minimum-maliyet kapasiteli akış problemi. CPM (Critical Path Method, Kritik Yol\r\nYöntemi) ve PERT (Program Evaluation and Review Technique, Program Değerlendirme ve\r\nİnceleme Tekniği), Hedef Programlama, Tamsayılı Doğrusal Programlama. Dinamik\r\nProgramlama, Stok modelleri. Tahmin modelleri. Karar analizi ve oyunlar. Belirlilik altında karar\r\nverme, Analitik Sıradüzen Süreci (Analytic Hierarchy Process, AHP). Risk altında karar verme.\r\nBelirsizlik altında karar verme, Oyun teorisi.', '7.Yarıyıl', '2', '2', 3, 4),
(46, 'Bilgisayar Ağları', 'Boş', '7.Yarıyıl', '3', '0', 3, 4),
(47, 'Yazılım Mühendisliği', 'Bu ders, Yazılım Mühendisliği ve Yazılım Projelerinin Yönetimi ile ilgili kavramlarını tanıtmayı hedeflemektedir. Dersin geliştirme süreç modelleri, yazılım çözümlemesi ve tasarımı, yazılım sınaması gibi genel yazılım mühendisliği konularını kapsayan içeriği, yazılım mühendisliği alanında genel bilgi sahibi olunmasını sağlamayı amaçlamaktadır.', '7.Yarıyıl', '3', '0', 3, 4),
(48, 'Görünntü İşleme', 'Dersin amacı uzaysal ve frekans domenlerinde temel görüntü işleme yöntem ve algoritmalarını ögretmektir. Görüntü Ön İşlenmesi, Görüntü İyilestirme, Görüntü Restorasyonu, Bölütleme\r\nAlgoritmaları, Morfoloji, Renkli Görüntü İsleme, Hareket Analizi, Görüntü Sıkıstırma, Örüntü\r\nTanıma Temelleri.', '7.Yarıyıl', '3', '0', 3, 4),
(49, 'Ontoloji Mühendisliği', 'Boş', '7.Yarıyıl', '3', '0', 3, 4),
(50, 'Çoklu Ortam Sistemleri', 'Çoklu ortam sistemlerine giriş, Çoklu ortam sistemleri için mimariler, Çoklu ortam iletişimi, Çoklu ortam verilerinin gösterimi, Sayısal ses ve görüntü teknolojileri, Metin ve görüntü sıkıştırma, Ses ve video sıkıştırma, İnternet&#39;in altyapısı, İnternet&#39;te veri depolama ve\r\nbilgi elde etme yöntemleri, Çoklu ortam iletişimine ilişkin standartlar, Eğlence ağları ve yüksek hızlı\r\nmodemler, İletim protokolleri, İletim protokolleri için ileri konular.', '7.Yarıyıl', '2', '2', 3, 4),
(51, 'Kuantum Bilgisayarlar I', 'Giriş ve temeller Kompleks Uzay Vektör uzayları, bazlar ve lineer bağımsızlık, iç çarpım, gram-schmidt dikleştirme yöntemi Özdeğer ve özdenklemler, Operatör kavramı, Hermitik veeşlenik operatörler, Operatör fonksiyonları , Lineer dönüşümler, Spektral teoremi, Tensör çarpımı,\r\nSingular-Value ve Schmidt ayrıştırma teoremi Özdeğer ve özdenklemler, Operatör kavramı,\r\nHermitik ve eşlenik operatörler, Operatör fonksiyonları , Lineer dönüşümler, Spektral teoremi,\r\nTensör çarpımı, Singular-Value ve Schmidt ayrıştırma teoremi Dirac Gösterimi Modüler\r\nAritmetik, sürekli kesirler ve Fourier Dönüşümü Modüler Aritmetik, sürekli kesirler ve Fourier\r\nDönüşümü Temel Grup Teorisi ve abelyen gruplar Klasik Hesaplama Modelleri ( Turing\r\nmakinesi, hesaplanabilir fonksiyonlar, klasik hesaplama kapıları, Toffoli, Frendkin kapıları\r\n,terslenebilir hesaplama, ve hesaplama karmaşıklıkları) Klasik Hesaplama Modelleri ( Turing\r\nmakinesi, hesaplanabilir fonksiyonlar, klasik hesaplama kapıları, Toffoli, Frendkin kapıları\r\n,terslenebilir hesaplama, ve hesaplama karmaşıklıkları) Kuantum sistemler ve zaman evrimleri,\r\nBirleşik kuantum sistemlerinin tanımlanması Ölçme ve genel kuantum işlemleri Dolanık durumlar\r\nve sonuçları', '7.Yarıyıl', '2', '2', 3, 4),
(52, 'Windows Azure ile Bulut Bilişime Giriş', 'Dersin amacı bulut bilişim kavramının teorik ve pratik yönleriyle tanıtmaktır. Dersin içeriği bulut bilişime giriş ve temel kavramlar, sanal makinalar, veri saklama ortamları, mobil servisler,veritabanı servisleridir.', '7.Yarıyıl', '3', '0', 3, 4),
(53, 'Veri Madenciliği', 'Veri madenciliği kavramı, veri ambarları, OLAP, veri küpleri, ham veriden bilgi çıkarma, veri ön işleme: veri temizleme –birleştirme - dönüştürme, Sınıflama Yöntemleri: Karar Ağaçları, Bayes Yöntemi, Yapay Sinir Ağları, Destek Vektör Makinaları, Kümele Yöntemleri: Bölüntüleme\r\nYöntemleri – Hiyerarşik Yöntemler, yöntemlerin başarım değerlendirmesi, ilişkilendirme,\r\nkorelasyon ve örüntü inceleme', '7.Yarıyıl', '3', '0', 3, 4),
(54, 'Yapay Zeka ve Uzman Sistemler', 'Bilgi gösterimi. Arama ve sezgisel programlama. Mantık ve mantık programlama. Yapay zeka uygulama alanları: problem çözme, oyunlar, uzman sistemler, planlama, öğrenme,\r\ngörüş, ve doğal dil anlama.', '7.Yarıyıl', '3', '0', 3, 4),
(55, 'Robot Teknolojileri', 'Günümüzde, PLC ( Programmable Logic Controller) otomasyon sistemlerinin temel taşı haline gelmiştir. İnsan gücünü neredeyse yarıya indirebilen PLC, endüstrinin birçok alanında yaygın\r\nolarak kullanılmaktadır. Ağırlıklı olarak, Omron markalı PLC sistemleri olmak üzere otomasyon\r\nteknolojilerinde kullanılan diğer sistemler de anlatılacaktır. PLC sistemlerini programlamak için\r\nkullanılan en yaygın dillerden biri olan Ladder programlama dilinin tanıtılması ve programlanması\r\nuygulamalı olarak anlatılacaktır. Üzerinde Windows çalışan dizüstü bilgisayar (Programın\r\nçalışması için) ve USB-COM dönüştürücü aparat ders için gereklidir.', '7.Yarıyıl', '3', '0', 3, 4),
(56, 'Algoritma Analizi', 'Dersin içeriği ; algoritma analizi temel kavramları, notasyon, temel algoritmaların analiz etme yöntemleri, en iyi durum, en kötü durum ve ortala durum senaryolarının gösterilmesinden sonra amortized cost kavramının tanıtılması, Liste, kuyruk, yığın ve ağaç gibi temel veri yapılarının karmaşıklık analizi, Dinamik programlama , String algoritmaların örneklerle tanıtılmasıdır.', '8.Yarıyıl', '3', '0', 3, 5),
(57, 'Bigisayar Mimarisi', 'Bu derste işlemci performansını artırmayı amaçlayan paralelliğe yönelik yöntemler üzerinde durulmaktadır. Pipeline, dinamik komut planlaması, derleyici temelli statik komut planlaması,\r\ndallanma tahmini, spekülatif komut yürütümü, yazılım pipeline gibi süper ölçekli işlemcilerde\r\nperformansı artırmaya yönelik yöntemler dersin konuları arasındadır. Bellek hiyerarşisi tanıtılıp,\r\nbunun sistem performansı üzerine olan etkisi açıklanmaktadır. Günümüzdeki çok çekirdekli\r\nmakinelerin temel özellikleri ve önbellek hiyerarşileri anlatılmaktadır. İşletim sistemi, donanım ve\r\nderleyici arasındaki ilişkiler ve etkileşimler sistem performansı açısından incelenmektedir.', '8.Yarıyıl', '3', '0', 3, 5),
(58, 'Yapay Sinir Ağları', 'Yapay öğrenme sistemleri. Yapay sinir ağı modelleri. Eğiticili ve eğiticisiz öğrenme.Özellik Çıkarımı. Kümeleme, sınıflandırma ve tahminleme problemleri. Destekleyicili\r\nöğrenme. Desen tanıma. Derin öğrenme.', '8.Yarıyıl', '3', '0', 3, 5),
(59, 'Kuantum Bilgisayarlar II', 'Giriş ve temeller Dirac notasyonu Kuantum Olasılık(durum vektörlerinin olasılıkları, yoğunluk\r\nmatrisleri, yoğunluk matrisleri arasındaki mesafe fonksiyonları, ölçme, bozulma) Kuantum\r\nOlasılık (durum vektörlerinin olasılıkları, yoğunluk matrisleri, yoğunluk matrisleri arasındaki\r\nmesafe fonksiyonları, ölçme, bozulma) Kuantum Bit ve bilgi, Kuantum Turing Makinesi Kuantum\r\nBit ve bilgi, Kuantum Turing Makinesi Kuantum devre modeli, kuantum kapıları ve evrensel\r\nkuantum kapı kümesi ve birimsel dönüşümlerde yakınsama Kuantum devre modeli, kuantum\r\nkapıları ve evrensel kuantum kapı kümesi ve birimsel dönüşümlerde yakınsama Kuantum devre\r\nmodeli, kuantum kapıları ve evrensel kuantum kapı kümesi ve birimsel dönüşümlerde yakınsama\r\nKuantum devre modeli, kuantum kapıları ve evrensel kuantum kapı kümesi ve birimsel\r\ndönüşümlerde yakınsama Süper yoğun kodlama Kuantum Teleportasyon Kuantum bilgisayarların\r\ngerçekleştirimindeki yöntemler Kuantum bilgisayarların gerçekleştirimindeki yöntemler', '8.Yarıyıl', '2', '2', 3, 5),
(60, 'Dağıtık Sistemler', 'Ders kapsamında, iletişim ve katmanlı protokoller, Uzak Yordam Çağrısı (RPC), Uzak Nesne Çağrısı (ROI), Mesajlaşmaya-dayalı iletişim, Akışa-dayalı iletişim, süreçler, kod taşıma (göçü) ve\r\nsaat senkronizasyonu detayları ile açıklanmaktadır.', '8.Yarıyıl', '2', '2', 3, 5),
(61, 'Kablosuz Algılayıcı Ağlar (KAA', 'Kablosuz Algılayıcı Ağlar (KAA) temel kavramları, KAA uygulamaları, kablosuz algılayıcı düğüm mimarisi, KAA için ağ mimarisi, yönlendirme, topoloji kontrolü, konum tespiti ve güvenlik, KAA için geliştirilmiş işletim sistemleri ile ilgili öğrenciye temel bilgi verilmektedir.', '8.Yarıyıl', '3', '0', 3, 5),
(62, 'Derleyici Tasarımı', 'Java programlama dilinde otomatik sözcük analizci üretimine yönelik JLex ve otomatik ayrıştırıcı üretimine yönelik CUP gibi önemli yazılım araçları tanıtılmaktadır. Anlamsal eylemler, ara temsiller ve kod üretimi, komut seçimi, veri akış analizi, yaşam analizi ve graf boyamalı yazmaç tahsisi ve çalışma zamanı bellek yönetimi de bu derste anlatılan konular arasındadır. Bu dersi\r\nbaşarıyla tamamlayan öğrenciler, derste öğrendikleri teoriyi ve yöntemleri çoğu programlama\r\ndilleri için iyileştirilmiş derleyicilerin tasarım ve gerçekleştirilmesinde uygulayabilirler.', '8.Yarıyıl', '3', '0', 3, 5),
(63, 'Paralel Sistemler', 'Özel önbelleklere sahip işlemcilerden oluşan paralel mimarilerde karşılaşılan veri tutarlılığı problemi tanıtılıp önbellek tutarlılık protokolleri üzerinde durulmaktadır. Önbellek tutarlı üniform olmayan bellek erişimli (ccNUMA) paralel sistemler tanıtılıp bu tür mimarilerin sağladığı performans kazançlarından bahsedilmektedir. Genel olarak, programlama modeli olarak paylaşılan\r\nbellekli makineler yönelik OpenMP anlatılıp, işlerin çoklu iş parçacıkları arasında paylaşımını\r\nsağlayan OpenMP özellikleri üzerine yoğunlaşılmaktadır. Ayrıca dağıtık bellekli makineler için\r\nMPI programlama modelinden kısa da olsa bahsedilmektedir.', '8.Yarıyıl', '3', '0', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mesajlar`
--

CREATE TABLE `mesajlar` (
  `measaj_id` int(10) NOT NULL,
  `gonderen_id` int(10) NOT NULL,
  `alici_id` int(10) NOT NULL,
  `masaj_tarihi` datetime NOT NULL,
  `mesaj_metni` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notlar`
--

CREATE TABLE `notlar` (
  `not_id` int(10) NOT NULL,
  `not_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarih` datetime NOT NULL,
  `uye_id` int(10) NOT NULL,
  `not_durumu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_id` int(10) NOT NULL,
  `not_dosyasi` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rollar`
--

CREATE TABLE `rollar` (
  `rol_id` tinyint(1) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rollar`
--

INSERT INTO `rollar` (`rol_id`, `authority`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `uyeler`
--

CREATE TABLE `uyeler` (
  `uye_id` int(10) NOT NULL,
  `uye_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_soyadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parola` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_rolu` tinyint(1) NOT NULL DEFAULT 2,
  `kayit_tarihi` datetime NOT NULL,
  `profil_resmi` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uyeler`
--

INSERT INTO `uyeler` (`uye_id`, `uye_adi`, `uye_soyadi`, `email`, `parola`, `username`, `telefon`, `uye_rolu`, `kayit_tarihi`, `profil_resmi`) VALUES
(1, 'Abdoul Karim', 'TOURE', 'trabdlkarim@gmail.com', 'Aminatiamo', 'trabdlkarim', '05348506190', 1, '2018-12-21 11:01:20', ''),
(2, 'Augusto', 'GOMES JUNIOR', 'agustogomes15@gmail.com', 'Augusto123', 'augoju', '05457245409', 2, '2018-12-21 11:06:30', ''),
(3, 'Figen Kardelen', 'YILDIRIM', 'f.kardelenyildirim@gmail.com', 'Figen123', 'figenyildirim', '05389659989', 2, '2018-12-21 11:12:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yourum_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `yorum_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `yorum_tarihi` datetime NOT NULL,
  `yorum_sahibi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  ADD PRIMARY KEY (`aktivite_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`),
  ADD UNIQUE KEY `post_id` (`not_id`);

--
-- Indexes for table `arkadaslar`
--
ALTER TABLE `arkadaslar`
  ADD PRIMARY KEY (`arkadas_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`);

--
-- Indexes for table `bengenme`
--
ALTER TABLE `bengenme`
  ADD PRIMARY KEY (`begenme_id`),
  ADD UNIQUE KEY `not_id` (`not_id`);

--
-- Indexes for table `bildirimler`
--
ALTER TABLE `bildirimler`
  ADD PRIMARY KEY (`bil_id`),
  ADD UNIQUE KEY `bil_sahibi` (`bil_sahibi`);

--
-- Indexes for table `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`ders_id`);

--
-- Indexes for table `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`measaj_id`),
  ADD UNIQUE KEY `uye_id` (`gonderen_id`),
  ADD KEY `fk_msg_alici_id` (`alici_id`);

--
-- Indexes for table `notlar`
--
ALTER TABLE `notlar`
  ADD PRIMARY KEY (`not_id`),
  ADD UNIQUE KEY `ders_id` (`ders_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`);

--
-- Indexes for table `rollar`
--
ALTER TABLE `rollar`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uye_id`),
  ADD KEY `fk_uye_rol_id` (`uye_rolu`);

--
-- Indexes for table `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yourum_id`),
  ADD UNIQUE KEY `not_id` (`not_id`),
  ADD UNIQUE KEY `uye_id` (`yorum_sahibi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  MODIFY `aktivite_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bengenme`
--
ALTER TABLE `bengenme`
  MODIFY `begenme_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bildirimler`
--
ALTER TABLE `bildirimler`
  MODIFY `bil_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dersler`
--
ALTER TABLE `dersler`
  MODIFY `ders_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `measaj_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notlar`
--
ALTER TABLE `notlar`
  MODIFY `not_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `uye_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yourum_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  ADD CONSTRAINT `fk_act_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`),
  ADD CONSTRAINT `fk_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `arkadaslar`
--
ALTER TABLE `arkadaslar`
  ADD CONSTRAINT `fk_act_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `bengenme`
--
ALTER TABLE `bengenme`
  ADD CONSTRAINT `fk_ben_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`);

--
-- Constraints for table `bildirimler`
--
ALTER TABLE `bildirimler`
  ADD CONSTRAINT `fk_bil_sahibi` FOREIGN KEY (`bil_sahibi`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD CONSTRAINT `fk_msg_alici_id` FOREIGN KEY (`alici_id`) REFERENCES `uyeler` (`uye_id`),
  ADD CONSTRAINT `fk_msg_gonderen_id` FOREIGN KEY (`gonderen_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `notlar`
--
ALTER TABLE `notlar`
  ADD CONSTRAINT `fk_not_ders_id` FOREIGN KEY (`ders_id`) REFERENCES `dersler` (`ders_id`),
  ADD CONSTRAINT `fk_not_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `uyeler`
--
ALTER TABLE `uyeler`
  ADD CONSTRAINT `fk_uye_rol_id` FOREIGN KEY (`uye_rolu`) REFERENCES `rollar` (`rol_id`);

--
-- Constraints for table `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD CONSTRAINT `fk_yorum_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`),
  ADD CONSTRAINT `fk_yorun_sahibi` FOREIGN KEY (`yorum_sahibi`) REFERENCES `uyeler` (`uye_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
