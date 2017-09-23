-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-08-23 13:37:26
-- 伺服器版本: 10.1.25-MariaDB
-- PHP 版本： 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

CREATE TABLE `article` (
  `idarticle` int(12) NOT NULL,
  `libelle` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qte` int(10) NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `article`
--

INSERT INTO `article` (`idarticle`, `libelle`, `description`, `prix`, `category`, `qte`, `img`) VALUES
(15, '測試四', 'DGW', 234, 'BOSTON', 4, 'images/12710-05.jpg'),
(23, 'salkfj', 'sadlf;kj', 123, 'BOSTON', 43, 'images/24212-03.jpg'),
(24, 'dag', 'oudiu', 112312, 'BOSTON', 46, 'images/02330-01.jpg'),
(25, '123', '123', 213, 'TOTE', 132, 'images/55541-04.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `msg`
--

CREATE TABLE `msg` (
  `idMsg` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(700) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `msg`
--

INSERT INTO `msg` (`idMsg`, `name`, `email`, `subject`, `message`) VALUES
(15, '大頭', 'abc@yahoo.com.tw', '可以打中文嗎?', '可以嗎?'),
(16, '小呆', 'test@yam.com', '測試', '有賣柏金包嗎?'),
(17, 'samy', 'samy@pchome.com', '中文', 'd'),
(18, 'samy', 'samy@pchome.com', 'f23f', 'f333f'),
(19, 'samy', 'samy@pchome.com', 'f3f3', 'f3f3'),
(20, 'samy', 'samy@pchome.com', 'ff3', 'f3f3'),
(21, 'samy', 'samy@pchome.com', 'fdasdf', 'cxvsad中\r\n'),
(22, 'samy', 'samy@pchome.com', 'ㄋ', 'dfddf'),
(23, 'samy', 'samy@pchome.com', 'dsfadsf大平台\\', 'dsafdsaf'),
(24, 'samy', 'samy@pchome.com', '王大陸', '滿滿的大平台'),
(25, 'samy', 'samy@pchome.com', '3rewds', 'ㄑdfaf'),
(26, 'A999', 'hdoiwq1334@hidowqi.com', 'sdafsdaf', 'sdfsdfsaf'),
(27, 'A999', 'hdoiwq1334@hidowqi.com', 'dhdowqid', 'djqojdojd\r\n'),
(28, 'samy', 'samy@pchome.com', 'fdf', 'fdfdf');

-- --------------------------------------------------------

--
-- 資料表結構 `orderitem`
--

CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `buynum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `orderitem`
--

INSERT INTO `orderitem` (`order_id`, `product_id`, `buynum`) VALUES
('0327d28d-1e9c-4df3-b414-c63b539aef96', '01748', 1),
('41ded95a-a2f0-4a05-abb0-f65613866e42', '01659', 1),
('5d243d3e-d9c0-4c99-ac13-fb9c658f3e67', '01641', 18),
('618361e0-c528-46f0-a771-f45efe5cffc0', '01658', 1),
('739534e2-62fd-458c-8303-66f34608ea44', '01658', 9),
('a98862bc-a134-4b68-a169-62d23b708a7b', '02330', 1),
('ab66b348-a09d-4ce6-9467-ff16d40d0277', '01658', 1),
('bce6777a-d660-452b-bae0-1218dd660fd3', '01235', 1),
('cda11ea4-3c83-4fe3-97d7-17972d325f94', '01658', 1),
('cda11ea4-3c83-4fe3-97d7-17972d325f94', '02884', 1),
('cda11ea4-3c83-4fe3-97d7-17972d325f94', '24114', 1),
('de1f3b7d-11e7-465f-899c-6ff02a91e27d', '24114', 1),
('de6bda15-b5e5-475e-a2b8-8109f8b60ddd', '01659', 10);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT NULL,
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `orders`
--

INSERT INTO `orders` (`id`, `money`, `receiverAddress`, `receiverName`, `receiverPhone`, `paystate`, `ordertime`, `user_id`) VALUES
('0327d28d-1e9c-4df3-b414-c63b539aef96', 11900, '台北', '小名', '0912123123', 1, '2017-08-18 00:51:17', 50),
('41ded95a-a2f0-4a05-abb0-f65613866e42', 14200, 'fdgf', 'fdsff', 'ff', 0, '2017-08-18 06:02:20', 61),
('5d243d3e-d9c0-4c99-ac13-fb9c658f3e67', 280800, 'f', 'f', 'f', 0, '2017-08-18 06:47:49', 61),
('618361e0-c528-46f0-a771-f45efe5cffc0', 17900, 'f', 'f', 'f', 0, '2017-08-18 06:48:20', 61),
('739534e2-62fd-458c-8303-66f34608ea44', 161100, 'd', 'd', 'd', 0, '2017-08-18 06:48:08', 61),
('a98862bc-a134-4b68-a169-62d23b708a7b', 15600, '高雄', '小菊', '0919333555', 1, '2017-08-18 00:50:52', 61),
('ab66b348-a09d-4ce6-9467-ff16d40d0277', 17900, 'fdfsf', 'ff', 'ff', 0, '2017-08-18 06:43:36', 61),
('bce6777a-d660-452b-bae0-1218dd660fd3', 10400, '臺北市士林區士東路301號   ', '小胖', '0911222333', 0, '2017-08-17 13:43:42', 61),
('cda11ea4-3c83-4fe3-97d7-17972d325f94', 45100, '台北', '小名', '0912123123', 0, '2017-08-18 02:35:01', 61),
('de1f3b7d-11e7-465f-899c-6ff02a91e27d', 17900, '天母', '呂老師', '0988777666', 0, '2017-08-17 16:40:02', 50),
('de6bda15-b5e5-475e-a2b8-8109f8b60ddd', 142000, 'df', 'fdf', 'fdf', 0, '2017-08-18 06:02:06', 61);

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `description` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `pnum`, `img_url`, `description`) VALUES
('01235', 'HUNTER', 10400, 'MESSENGER', 14, 'images/01235-d0.jpg', '底部素材使用較通常尼龍高出約5倍耐耗損、耐撕裂強度的INVISTA社CORDURA® 1680d Ballistic尼龍，裏層施以PVC加工以提升面料的抗潑水特性。附屬皮料均於染色時加入防水劑以提升撥水機能。全系列以MSPC PRODUCT原創的LOW TECH扣具作為系列識別，經典之一的HUNT系列以全新的科技撥水素材重新打造！'),
('01237', 'HUNTER', 11900, 'SHOULDER', 20, 'images/01237-d0.jpg', '  底部素材使用較通常尼龍高出約5倍耐耗損、耐撕裂強度的INVISTA社CORDURA® 1680d Ballistic尼龍，裏層施以PVC加工以提升面料的抗潑水特性。附屬皮料均於染色時加入防水劑以提升撥水機能。全系列以MSPC PRODUCT原創的LOW TECH扣具作為系列識別，經典之一的HUNT系列以全新的科技撥水素材重新打造！'),
('01357', 'Density -Camouflage', 6400, 'SHOULDER', 11, 'images/01357-d0.jpg', '備基本防潑水機能，為達到保護內容物的目的，內裏再貼合0.1mm 軟質PVC以求更完整的防護效果。附屬皮革為通過日本皮革技術協會認定13種有害物質檢查 (JES) 標準，成品絕不含對人體、環境有害之六價鉻等重金屬與物質僅使用雙重單寧酸鞣製的環保製程天然皮革，超人氣系列DENSITY與人氣迷彩織紋最新作，雖為同色調之黑色迷彩花紋，但其具備明暗深淺之立體效果，於著用上增添彈性更易於搭配各式風格。'),
('01386', 'Density', 5200, 'WAIST', 21, 'images/01386-d0.jpg', '110d消光黑縱線及210d光澤橫線，交織後具有獨特光澤感且具撥水性，附屬部分使用加脂牛皮及麂皮增加包包的層次感。五金配件部分採用塑料合金，提昇包包機能及質感，背帶部分為安全帶等級，包覆性高且減壓效果良好，全系列為都會感風格是MSPC PRODUCT最新代表系列。'),
('01633', 'QUILT', 6700, 'WAIST', 18, 'images/01633-d0.jpg', '本體素材使用縱系70d 橫系110d被褥尼龍織物並填充60g棉使其具有柔軟滑順手感；附屬配件為通過日本皮革技術協會13種有害物質檢驗(JES)認證絕無殘留危害人體及環境之六價鉻的環保製程天然牛皮。以塔夫綢為全系列內裏，軟滑的手感並兼具不易起皺與不易斷裂特性，顏色鮮豔的格紋設計增添季節感並與本體素材相呼應，為2015aw Season Limited Editon的特色包款。'),
('01641', 'Gloss', 15600, 'TOTE', 11, 'images/01641-d0.jpg', '本體以植物性單寧酸鞣製的皮革為基礎，天然植物信染料上色後加入植物蛋白質，用熨斗加熱處理使皮革呈現特有的光澤感與紋路，為本季大人風格首選。'),
('01658', 'GLOSS', 17900, 'BOSTON', 11, 'images/01658-d0.jpg', '本體以植物性單寧酸鞣製的皮革為基礎，天然植物信染料上色後加入植物蛋白質，用熨斗加熱處理使皮革呈現特有的光澤感與紋路，為本季大人風格首選。提醒您此款小牛皮用熨斗加熱處理使皮革呈現特有的光澤感與紋路，每款色澤、色落將會不一。'),
('01659', 'Gloss-camouflage', 14200, 'BOSTON', 21, 'images/01659-d0.jpg', '本體使用棉布經迷彩印刷並於表面壓合暗色系0.4mm厚PVC布，再以壓紋加工突顯表面材質的立體感紋路；付屬皮料使用通過JES（日本皮革技術協会）13種有害物質檢査表準，成品絕不包含所有對人體有害物質及六價鉻等化學成分，採植物單寧鞣製2.5mm厚之環保牛皮，深色迷彩紋的機能款旅行系列為本季最強調機能面的包款。'),
('01742', 'POTENTIAL-SOLID ', 15100, 'MESSENGER', 14, 'images/01742-d0.jpg', '高品質指標的INVISTA社CORDURA®brand fabric所特別生產的MASTERTEX-06使用縱線100d橫線420d的66號特殊尼龍線,磨擦、撕裂 及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準,內側以PU防水加工及壓合夾入特殊透濕薄膜L-VENT®,提高材質本身的防水性,並另外貼合TRICOT NYLON成為 一布三層構造,此特殊布料為MSPC PRODUCT獨家開發特殊MASTERTEX尼龍可耐水壓達20,000m/m的防水機能。'),
('01748', 'POTENTIAL', 11900, 'MESSENGER', 14, 'images/01748-d0.jpg', '高品質指標的INVISTA社CORDURA®brand fabric所特別生產的MASTERTEX-04使用縱線500d、橫線840d的特殊尼龍線，磨擦、撕裂及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準。內側以PU防水加工及壓合夾入特殊透濕薄膜L-VENT®，提高材質本身的防水性，並另外貼合TRICOT NYLON成為一布三層構造，此特殊布料為MSPC PRODUCT獨家開發特殊MASTERTEX尼龍可耐水壓達20,000m/m的防水機能。'),
('01795', 'FLAT', 13400, 'SHOULDER', 16, 'images/01795-d0.jpg', '本體使用棉布經迷彩印刷並於表面壓合暗色系0.4mm厚PVC布，再以壓紋加工突顯表面材質的立體感紋路；附屬皮料使用通過JES（日本皮革技術協会）13種有害物質檢査表準，成品絕不包含所有對人體有害物質及六價鉻等化學成分，採植物單寧鞣製2.5mm厚之環保牛皮，深色迷彩紋為規矩的嚴肅包款增添趣味，為僅限初回少量販售的季節限定樣式。'),
('01991', 'COLLABORATION', 8600, 'MESSENGER', 15, 'images/01991-d0.jpg', '歷來與master-piece合作的藝術家不勝枚舉，此回與擅長利用直線的再建構塑造自身世界觀的插圖藝術家 涉谷忠臣氏一同合作。以質地較光滑細緻的聚脂纖維 (polyester 100%) 為主體素材，選用定番「HEDGE」系列包款進行打造，以直線取代曲線設計出新型態的都會迷彩。附屬素材所使用之聚脂纖維系無論磨擦、撕裂及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準，於表面施加的teflon處理可加強撥水、防汙性；數位風格的都會迷彩配以雙重單寧酸鞣製加工過的黑色皮革與暗色五金扣具更增添冷冽俐落的都會氣息。'),
('02051', 'GAME', 8200, 'TOTE', 12, 'images/02051-d0.jpg', '以特殊加工的輕量尼龍為本體布料，附屬面料使用1680d尼龍並特別訂製矽質零件與特殊尼龍抽繩，為外觀至細節均講究機能設計的全新系列；本體面料縱系使用70d 細緻尼龍絲線搭配橫系 30d 長纖維尼龍線，布料雖薄卻因特殊加工使其收縮提升輕量與張力。2種線絲因其縮率不同故布料表面呈現凹凸手感，並於負荷重量處使用堅固耐用的1680d尼龍。令人感到新鮮的設計還有原創的矽質零件及標示品牌名的拉鍊引手；橡膠覆膜加工的防水貼條用於點綴收納物品處可清楚辨識置物位置。全系列共通特色為正面不對稱之可張合口袋，不僅兼顧其外觀平順的流線造型又可於必要時發揮強大的收納功能！'),
('02112', 'COLLABORATION', 9000, 'TOTE', 18, 'images/02112-d0.jpg', 'NOWARTT為藝術家兼藝術總監 足立豐樹氏所推出的紡織品插畫品牌。水面、雲朵、飛鳥等元素以3D方式利用昇華轉寫技術呈現於畫布上，以前衛的發想打造出「海洋迷彩」的意象。附屬布料使用日本TORAY公司生產之高強力中空尼龍線絲，較一般同級1680d尼龍減少20%重量，為藝術單位NOWARTT 2016aw全新迷彩柄作品！'),
('02113', 'COLLABORATION', 6400, 'WAIST', 19, 'images/02113-d0.jpg', 'NOWARTT為藝術家兼藝術總監 足立豐樹氏所推出的紡織品插畫品牌。此回與其設計師 野澤広志氏共同以傳統與現代藝術為發想，與master-piece共同推出全新nowartt聯名系列。水面、雲朵、飛鳥等元素以3D方式利用昇華轉寫技術呈現於畫布上，以前衛的發想打造出「海洋迷彩」的意象。附屬布料使用日本TORAY公司生產之高強力中空尼龍線絲，較一般同級1680d尼龍減少20%重量，為藝術單位NOWARTT 2016aw全新迷彩柄作品！'),
('02330', 'GABATTE', 15600, 'BOSTON', 17, 'images/02330-d0.jpg', '高品質指標的INVISTA社CORDURA®brand fabric所特別生產的MASTERTEX-04使用縱線500d、橫線840d的特殊尼龍線，磨擦、撕裂及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準。內側以PU防水加工及壓合夾入特殊透濕薄膜L-VENT®，提高材質本身的防水性，並另外貼合TRICOT NYLON成為一布三層構造，此特殊布料為MSPC PRODUCT獨家開發特殊MASTERTEX尼龍可耐水壓達20,000mm的防水機能。附屬皮革使用北美產天然牛皮以雙重單寧酸鞣製加工並以手工作業塗以天然石蠟，經使用後經呈現不同風味。內裝配以原創日本列島迷彩設計，以職人工具包為系列設計發想，鋼琴線塑形工具箱造型的大開口設計和工作風格為全新嘗試的設計。'),
('02332', 'GABATTE', 11900, 'TOTE', 14, 'images/02332-d0.jpg', '高品質指標的INVISTA社CORDURA®brand fabric所特別生產的MASTERTEX-04使用縱線500d、橫線840d的特殊尼龍線，磨擦、撕裂及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準。內側以PU防水加工及壓合夾入特殊透濕薄膜L-VENT®，提高材質本身的防水性，並另外貼合TRICOT NYLON成為一布三層構造，此特殊布料為MSPC PRODUCT獨家開發特殊MASTERTEX尼龍可耐水壓達20,000mm的防水機能。附屬皮革使用北美產天然牛皮以雙重單寧酸鞣製加工並以手工作業塗以天然石蠟，經使用後經呈現不同風味。內裝配以原創日本列島迷彩設計，以職人工具包為系列設計發想，鋼琴線塑形工具箱造型的大開口設計和工作風格為全新嘗試的設計。'),
('02342', 'LINK', 4900, 'WAIST', 19, 'images/02342-d0.jpg', '本體素材使用經特殊加工的斜紋織尼龍，縱系210d橫系420d經特殊加工使布料本身因縮率不同而提升密度並使斜紋觸感越加明顯。附屬皮革為通過日本皮革技術協會認定13種有害物質檢查 (JES) 標準，成品絕不含對人體、環境有害之六價鉻等重金屬與物質僅使用雙重單寧酸鞣製的天然環保皮革。此回特別開發新型黑x金配色的登山勾作為全系列識別特色，為滿足都市生活機能與戶外休閒風格的兩用包款。 '),
('02346', 'FDMTL', 5800, 'WAIST', 20, 'images/02346-d0.jpg', '主體面料使用縱／橫系320d撥水加工尼龍，經小松精練株式会社專利技術KONBU-N特殊加工，使原來滑順的尼龍織線提升表面硬度，更具有如昆布般的乾燥手感與皺摺；為重現FDMTL品牌特有的丹寧布拼接花紋，委託數位轉寫業界領頭羊 小松精練株式会社以獨家印染技術 – MONALISA進行丹寧布的擬真轉寫，其高達1670萬的色彩量與熟練職人的精準控制及高度技術足以重現各式擬真效果並持久不易褪色，且其轉寫加工過程大幅降低能源、水、各式資源之使用與排放，無使用定色藥品、染料等，為兼顧社會責任之環境配慮型素材。附屬材質則使用高品質指標的INVISTA社CORDURA Ballistic® fabric 1680d尼龍，其具備超越一般尼龍5倍耐摩耗、撕裂之強度，於1680d布料內裏施以PVC加工使素材全面兼顧耐磨損即抗水機能，為顧慮流行與素材機能之結合。'),
('02455', 'COVER', 4100, 'SHOULDER', 19, 'images/02455-d0.jpg', '本體素材以多本撚聚脂纖維絲線經羅緞織法製成，使其具柔軟手感與輕量特性。面料表面施以撥水加工，裏層則以壓光技術貼合抗水塗層，使其裏外兼具撥水機能；另拼接CORDURA® fabric 610d 聚脂纖維提升包袋負重之耐久性，而於口袋部位特以網布拼接提升識別度，多樣異素材拼接除了保留品牌設計特色外更增添包袋使用時的趣味性。橫越袋身的大開口拉鍊與多功能調節束帶能用以固定無法置於袋內的大體積物品，使其充滿擴充機能外仍保有輕巧的設計初衷。'),
('02884', 'TENOR', 9300, 'MESSENGER', 21, 'images/02884-d0.jpg', '高品質指標的INVISTA社CORDURA®brand fabric所特別生產的MASTERTEX-06使用縱線100d橫線420d的66號特殊尼龍線,磨擦、撕裂 及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準,因為使用光澤布料染色非用一般已染色線絲織成,所以布料顏色會有 不均,增加層次感。內側以PU防水加工及壓合夾入特殊透濕薄膜L-VENT®,提高材質本身的防水性,並另外貼合TRICOT NYLON成為 一布三層構造,此特殊布料為MSPC PRODUCT獨家開發特殊MASTERTEX尼龍可耐水壓達20,000m/m的防水機能。付屬配件使用 北美產小牛皮,於鞣製階段加入「3M」会社特製防水劑使其與大量油脂完全滲透皮革後才進行染色,之後再於表面噴上防水劑,使其 達到裡外高撥水機能,成品均通過「SCOTCHGARD」檢驗標準。高質感尼龍與細緻牛皮拼接營造出優雅的氛圍。'),
('03467', 'OVER-Moon', 6400, 'BOSTON', 15, 'images/03467-d0.jpg', '本體素材使用織法精細的高品質100%羔羊毛,且為Abraham Moon公司所生產英國製Moon Tweed,並透過在底布裏面施以0.15 mm PVC貼膜加工,提高布料張力跟防水性。Abraham Moon的歷史可以追朔到維多利亞女王繼承英國王位的1837年。創業者 Abraham 起初為手織布業者供應所需的絲線,其後開始生產自家布料並運至市場販售;1869年於當今的據點開始以工廠生產,從設計、 紡紗、織布、 到最終的出貨所有工序皆自行管理。一貫化的生產流程不僅在品質上獲得保障,對於傳統工法的保護也得到世界的讚賞與信 賴。皮革部分 通過日本皮革技術協會有和物質檢查JES 13項標準,採用完全不對人體有害、不含有六價鉻的純天然植物丹寧鞣製厚環保 牛皮與麂皮 大底,以人氣系列OVER為雛型所開發出符合Abraham Moon傳統英倫氣息的全新系列。'),
('03600', 'OVER', 6000, 'BOSTON', 43, 'images/03600-d0.jpg', '本體素材使用較一般應用於輪胎簾布層(tire cord)的1000d強力尼龍線更堅固耐用的超強力尼龍線 – BEATTEX；簾布層是生成輪胎的骨架中重要一環，其被厚重的硫化橡膠包圍，為輪胎強度的依據並提供耐重、耐衝擊、散熱、抗疲勞程度等功能，為廣泛應用的強力素材。'),
('03601', 'OVER', 4300, 'SHOULDER', 18, 'images/03601-d0.jpg', '本體素材使用較一般應用於輪胎簾布層(tire cord)的1000d強力尼龍線更堅固耐用的超強力尼龍線 – BEATTEX；簾布層是生成輪胎的骨架中重要一環，其被厚重的硫化橡膠包圍，為輪胎強度的依據並提供耐重、耐衝擊、散熱、抗疲勞程度等功能，為廣泛應用的強力素材。此種素材普遍僅應用於工業用途且染色困難，此回特別訂製的BEATTEX經特殊染色製成經典OVER ver.6，搭配鮮明突出的天然牛麂皮拼接細節，為從用料為根本，全面升級的OVER Series！'),
('12163', 'COLLABORATION SERIES', 8900, 'WAIST', 17, 'images/12163-d0.jpg', 'NOWARTT為藝術家兼藝術總監 足立豐樹氏所推出的紡織品插畫品牌。此回與其設計師 野澤広志氏共同以傳統與現代藝術為發想，與master-piece共同推出全新nowartt聯名系列。設計上所使用的球型仙人掌，其汁液據說可以當成肥皂使用。為了能寫實地刻劃出仙人掌像泡泡一樣飄在空中的感覺，岡山的職人特別使用專以織造提花織布的雅卡爾織布機精緻細密的表現在丹寧材質上。附屬皮料使用通過NISSENKEN規格認證的環保1.8mm厚皮革，成品絕不包含所有對人體有害物質及六價鉻等化學成分，皮革表面經手工研磨工序使皮革呈現自然光澤感。為自素材選用與呈現均講究細節與畫面設計的Nowartt第十代的聯名系列！'),
('12602', 'TIGHT', 9300, 'TOTE', 41, 'images/12602-d0.jpg', '本體使用縱系1260d 橫系630d的強撚高密度尼龍使整體面料更加細緻平滑兼具有良好的張力，表面施加抗撥水處理提升其撥水及抗污機能。附屬布料則使用縱系消光尼龍線絲與橫系光澤線絲混紡，因2種不同光澤之尼龍線絲交織使布料呈現深度飽和之光澤；經抗撥水加工的CORDURA® 610d fabric 聚脂纖維100%更提供良好的抗磨損及撥水性。附屬皮革以日本國產牛皮以天然植物丹寧酸鞣製，並將染料與油脂混合進行染色，後以熨燙加工提升皮革亮澤感與平滑手感，為喜好日常用休閒包款的朋友提供新的選擇的上品系列！'),
('12603', 'TIGHT', 5600, 'SHOULDER', 15, 'images/12603-d0.jpg', '本體使用縱系1260d 橫系630d的強撚高密度尼龍使整體面料更加細緻平滑兼具有良好的張力，表面施加抗撥水處理提升其撥水及抗污機能。附屬布料則使用縱系消光尼龍線絲與橫系光澤線絲混紡，因2種不同光澤之尼龍線絲交織使布料呈現深度飽和之光澤；經抗撥水加工的CORDURA® 610d fabric 聚脂纖維100%更提供良好的抗磨損及撥水性。附屬皮革以日本國產牛皮以天然植物丹寧酸鞣製，並將染料與油脂混合進行染色，後以熨燙加工提升皮革亮澤感與平滑手感，為喜好日常用休閒包款的朋友提供新的選擇的上品系列！'),
('12690', 'Third', 12690, 'TOTE', 19, 'images/12690-d0.jpg', '本體素材MASTERTEX CANVAS使用專職生產高級精梳帆布與單寧布的古式力織機，且為master-piece使用4號精梳帆布所特別訂製的獨家素材。隨著時代演進，懂得操作傳統力織機的職人已日漸減少，每回產能均有所限制無法大量生產，也使得高級精梳帆布與高級單寧布成為爭相收藏的素材。古式力織機所生產的帆布可完整保留棉線本來的光澤感與強度，經使用後將有舊感的絕妙風味；另一特色即為每匹古式力織機生產的布匹，於布頭處均有俗稱「耳」的段落處，此亦為古式力織機識別辦法亦更顯珍貴。附屬拼接素材使用經特殊加工的斜紋織尼龍，縱系210d橫系420d經特殊加工使布料本身因縮率不同而提升密度並使斜紋觸感越加明顯。附屬皮革採用排除一切環境汙染誘因與有害物質僅以天然植物丹寧與染料鞣製、上色，對人體無害的優質天然皮革，並經手作研磨拋光工序。'),
('222110', 'RIPE', 12300, 'WAIST', 19, 'images/222110-d0.jpg', '本體皮革使用經「SCOTCHGARD」檢測實驗合格，具有良好防水・防油・防污機能及堅牢度的優質牛皮。以北美產的優質牛皮進行嚴選，於鞣製階段加入「3M」会社特製防水劑使其與大量油脂完全滲透皮革後才進行染色，之後再於表面噴上防水劑，使其達到裡外高撥水機能，成品均通過「SCOTCHGARD」檢驗標準。為保有皮革原有質感，一般塗布於表面的石蠟加工改於染色製程中一同完成，將石蠟加入染料中不僅使皮革色澤增艷，經使用後之光澤也越顯溫潤。包款背部背負接觸部位使用CORDURA® brand fabric 縱系 橫系420d 66尼龍光澤線，磨擦、撕裂及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準並壓合夾入特殊透濕薄膜L-VENT®，提高材質本身的防水性，並另外貼合TRICOT NYLON成為一布三層構造 – 由master-piece獨家特製的MASTERTEX-05所使用的420d 尼龍較一般等級的420d 尼龍織物多了20%絲線本數，密度更高也更堅固耐用。'),
('222402', 'EXCEED', 9700, 'MESSENGER', 17, 'images/222402-d0.jpg', '本體素材使用DIMENSION POLYANT社所開發之特殊素材「X-PAC」。表面420d高密度nylon與裏面50d polyester材質兩層之間貼合以X狀聚脂纖維X-PLY以及0.25mm厚的聚脂纖維薄膜共計四層提升耐久性、防水性。附屬素材為通過高品質指標的INVISTA社CORDURA® brand fabric所特別生產的聚脂纖維線，磨擦、撕裂及割損等耐耗損強度皆通過CORDURA® brand fabric的檢驗標準，表面施以Teflon加工已加強撥水性、防汙性。皮革部分為北美良質牛皮反覆以鉻鞣製後再以天然單寧酸鞣製使單寧浸透且僅使用天然油脂與不危害環境的水溶性染料，整體營造出上品感的光澤，機能素材卻具時尚造型又可搭配street風格為可廣泛受用搭配各種風格。'),
('24111', 'Leap', 17500, 'TOTE', 18, 'images/24111-d0.jpg', '本體使用之北美產天然牛皮革經鉻鞣製後於染色時以染料與單寧酸混合進行處理保有皮革原有厚實質感，並置於滾筒內浸以油脂與單寧酸一夜使厚實的皮革變得柔軟，再次以大量油脂塗於表層更使皮革呈現透明高級感。附屬皮料使用通過JES（日本皮革技術協会）13種有害物質檢査表準，成品絕不包含所有對人體有害物質及六價鉻等化學成分，採植物單寧鞣製之環保製程牛皮。更使用較耗時的內縫工法表現整體柔軟的質感，全包款以單一色調統一，搭配原創的復古壓釦與拉鍊五金，強調細節質感，復古與成熟風格為重點的休閒包款。'),
('24114', 'LEAP', 17900, 'BOSTON', 17, 'images/24114-d0.jpg', '本體使用之北美產天然牛皮革經鉻鞣製後於染色時以染料與單寧酸混合進行處理保有皮革原有厚實質感，並置於滾筒內浸以油脂與單寧酸一夜使厚實的皮革變得柔軟，再次以大量油脂塗於表層更使皮革呈現透明高級感。'),
('55521', 'STREAM ', 80, 'SHOULDER', 16, 'images/55521-d0.jpg', '高品質指標的INVISTA社CORDURA®brand fabric所特別生產的MASTERTEX-05使用縱、橫線420d的66號特殊尼龍線，磨擦、撕裂及割損等耐耗損強度皆通過CORDURA®brand fabric的檢驗標準，因為使用光澤布料染色非用一般已染色線絲織成，所以布料顏色會有不均，增加層次感。內側以PU防水加工及壓合夾入特殊透濕薄膜L-VENT®，提高材質本身的防水性，並另外貼合TRICOT NYLON成為一布三層構造，此特殊布料為MSPC PRODUCT獨家開發特殊MASTERTEX尼龍可耐水壓達20,000m/m的防水機能。付屬配件使用北美產小牛皮，於鞣製階段加入「3M」会社特製防水劑使其與大量油脂完全滲透皮革後才進行染色，之後再於表面噴上防水劑，使其達到裡外高撥水機能，成品均通過「SCOTCHGARD」檢驗標準，為強調高機能的都會商務型包款。 '),
('55541', 'SLICK', 10400, 'BOSTON', 16, 'images/55541-d0.jpg', '本體布料使用600d聚脂纖維為基底，並以德國製的樹脂及義大利製的離型紙(release paper)一同加工而成的全新高耐久素材；獨特類橡膠的手感與傳統的覆膜技術布料相比高出2~3倍的透氣性及加水分解耐久度，也提升了表面劣化抗久性。此素材於製造時減少使用造成大氣污染主因的溶劑VOC(揮發性有機化合物)，排放之廢水也考量環境永續經營而降低污染，為顧及企業社會責任與科技發展之新型面料。附屬布料則使用經INVISTA公司所生產之高強度Ballistic® fabric 1680d 尼龍，無論耐磨擦、耐割損、耐耗損強度均為一般尼龍5倍以上強度，且布料內層覆合之PVC塗層加工更是大大提升其撥水機能。系列包款更特別設計尼龍編織繩以便全系列包款互相結合穿掛。附屬皮革為通過日本皮革技術協會認定13種有害物質檢查 (JES) 標準，成品絕不含對人體、環境有害之六價鉻等重金屬與物質僅使用雙重單寧酸鞣製的天然環保皮革，為科技機能感又兼具環保概念的全分為多功能系列。'),
('55543', 'SLICK', 6900, 'MESSENGER', 15, 'images/55543-d0.jpg', '本體布料使用600d聚脂纖維為基底，並以德國製的樹脂及義大利製的離型紙(release paper)一同加工而成的全新高耐久素材；獨特類橡膠的手感與傳統的覆膜技術布料相比高出2~3倍的透氣性及加水分解耐久度，也提升了表面劣化抗久性。此素材於製造時減少使用造成大氣污染主因的溶劑VOC(揮發性有機化合物)，排放之廢水也考量環境永續經營而降低污染，為顧及企業社會責任與科技發展之新型面料。');

-- --------------------------------------------------------

--
-- 資料表結構 `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `register`
--

INSERT INTO `register` (`id`, `name`, `password`, `email`, `sex`, `country`) VALUES
(17, 'alan', 'kumar', 'alan@gmail.com', 'male', 'Taichung'),
(20, 'bobby', 'ashok', 'bobby@javatpoint.com', 'male', 'Kaohsiung'),
(50, 'samy', '4567', 'samy@pchome.com', 'male', 'Kaohsiung'),
(55, 'jack', '123', 'jack@yam.com', 'female', 'Kaohsiung'),
(61, 'vbvb', 'ffff', 'vbvb@yam.com', 'male', 'Kaohsiung'),
(76, 'chen', '1234', 'chen@yahoo.com', 'male', 'Taipei'),
(78, 'alin', '8DF03BCA3F48D310F74FE6092AF08C95', 'alin@yam.com', 'male', 'Taipei'),
(79, 'sammy', '81DC9BDB52D04DC20036DBD8313ED055', 'sammy@yahoo.com.tw', 'male', 'Taichung'),
(80, 'wang', 'E08392BB89DEDB8ED6FB298F8E729C15', 'wang@yam.com', 'female', 'Kaohsiung'),
(81, 'hsuu', '2F90737088E5ACD30290BA5CDE8CD147', 'hsuu@gmail.com', 'male', 'Kaohsiung'),
(82, 'abc1', '1234', 'd3dd@yam.com', 'male', 'Tainan'),
(83, 'A999', '66666', 'hdoiwq13@jfiwj123.com', 'male', 'Taipei'),
(84, 'aaaa', 'aaaa', 'bbb@yam.com', 'male', 'Tainan');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `PASSWORD` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `introduce` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `role` varchar(10) CHARACTER SET latin1 DEFAULT 'normal',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`id`, `username`, `PASSWORD`, `gender`, `email`, `telephone`, `introduce`, `state`, `role`, `registTime`) VALUES
(3, 'ccc', '2', NULL, 'ccc@yam.com', '12341234', 'hihi', 1, 'normal', '2017-08-09 09:27:25'),
(24, 'asdf', '1111', 'Male', 'bbssb@yam.com', '1111', '1', 0, 'normal', '2017-08-09 14:34:04'),
(26, 'ppp', '1111', 'Male', 'bbsab@yam.com', '11221122', '1', 0, 'normal', '2017-08-09 14:39:36'),
(27, 'tom', '3333', 'Male', 'bbb@yam.com', '', '', 0, 'normal', '2017-08-10 14:44:44');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idarticle`);

--
-- 資料表索引 `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`idMsg`);

--
-- 資料表索引 `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `idarticle` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用資料表 AUTO_INCREMENT `msg`
--
ALTER TABLE `msg`
  MODIFY `idMsg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用資料表 AUTO_INCREMENT `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- 使用資料表 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- 資料表的 Constraints `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
