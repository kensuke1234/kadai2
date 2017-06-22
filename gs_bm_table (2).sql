-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017 年 6 月 22 日 16:34
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db41`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `naiyou` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `image1` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `naiyou`, `indate`, `image1`) VALUES
(7, '孫文', NULL, '一八九五年、下関における日清講和条約の調印。清朝打倒を決意した孫文は、同志とともに広州で最初の武装蜂起を企てる…。「大同社会」の実現を目指して、世界を翔る若き革命家の軌跡。膨大な資料から真実を読み取り、最後まであきらめなかった姿勢と無私の精神にあふれた孫文の実像が甦る歴史小説の神髄。『青山一髪』を改題、待望の文庫化。\r\n\r\n', '2017-06-03 21:52:47', ''),
(8, 'POWERS OF TWO 二人で一人の天才', NULL, '私たちは「孤高の天才」に憧れを抱く。\r\n驚異的なひらめき、非凡な才能。\r\nだが、それは幻想にすぎない。\r\n\r\n世界で最も革新的な企業。\r\n音楽史上最高のアルバム。\r\n生命の秘密を解く発見。\r\n\r\nあらゆる分野の革新は、刺激し合い、補完し合う\r\n「クリエイティブ・ペア」が生み出してきた。\r\n天才たちは、1+1が無限大に感じる人と\r\nペアを組んで偉業を成し遂げてきた。\r\n\r\n一人では何もできないが、二人なら何でもできる。\r\n――どうすれば、そういう人間関係を築けるだろう?\r\n\r\n', '2017-06-03 22:20:32', ''),
(9, 'やり抜く力 GRIT(グリット)', NULL, '米国内では「天才賞」とも称されるマッカーサー賞を3年前に受賞したペンシルベニア大学心理学教授、アンジェラ・ダックワース。彼女がその研究成果をまとめた『やり抜く力』はこう主張する。 どの分野であれ、人々が成功して偉業を達成するには、「才能」よりも「やり抜く力」が重要である──もともと才能があって努力すれば、他人よりも早くスキルが身につく。しかし、そこで終わってしまえば、達成はない。身についたスキルでさらに努力を続けて初めて、目標は達成される。成功には「才能」の優劣よりも努力の継続、つまり、「やり抜く力」が決定的な影響を及ぼすのだ。 この「やり抜く力」は「情熱」と「粘り強さ」という要素でできているらしい。自分にとって最も重要と定めた目標に対して不変の興味を抱きながら粘り強く取り組む「情熱」と、困難や挫折に負けずに努力を続ける「粘り強さ」がそろっていれば、誰もが目標を成し遂げられるとダックワースは説く。その上で、「やり抜く力」を伸ばす方法を詳しく紹介する後半は本書の美点であり、教育界、ビジネス界、スポーツ界だけでなく、子育てに悩む親をはじめ、多くの一般読者に評価される理由となっている。 継続は力なり、と昔からいう。ダックワースの結論をこれに倣ってまとめれば、継続こそが力なり、となる。……彼女の研究の集大成を読み進め、最後にあった「天才」の定義を目にしたとき、私はイチロー選手のことを思って納得した。 〈「天才」とは「自分の全存在をかけて、たゆまぬ努力によって卓越性を究めること」〉', '2017-06-03 23:51:38', ''),
(10, 'アウグストゥス: ローマ帝国のはじまり', NULL, 'まざまな政策や手法に関心を寄せることだろう。」(本文より)\r\n\r\nアレクサンドロス大王が大征服をなしとげた後で、何をすべきか困っていたと聞いたアウグストゥスは、こう言ったという。「帝国を勝ち取るよりも、勝ち取った秩序を維持するほうが難しいということに、大王が気づかなかったとは驚きだ」。\r\nアウグストゥスは紀元前63年にユリウス・カエサルの姪の子として生まれ、18歳でその後継者として政治の表舞台に登場した。カエサルのような輝かしい天才こそなかったが、カエサルにない忍耐心と、カエサル暗殺という教訓をもって、熾烈な政治的駆け引きと内戦を勝ち抜き、ローマ帝国五百年の礎となる統治システムをつくり上げた。アウグストゥスの政治へのアプローチのなかで教訓に富む点は、長期的に見ると権力は他者の同意がなければ維持できないことと、その同意は、急進的な政治改革と伝統的な道徳観を結びつけることでうまく勝ち取れることを、よく自覚していた点である。\r\n勤勉な統治者だったアウグストゥスは、私生活でも姉を愛し、自分の子供を産まなかった妻と五十年間幸せに連れ添った。だが同時に、家族はゲームの駒のように扱われ、疲弊し離れていったのだった──\r\n大政治家の激動の生涯を描く一冊。', '2017-06-04 20:39:04', ''),
(11, 'test', 'https://www.amazon.co.jp/gp/product/B00P7C2D2O/ref=s9u__nn_ebooks_gw_i4?ie=UTF8&pd_rd_i=B00P7C2D2O&pd_rd_r=WY18XA9JG5ETQ5ENZM20&pd_rd_w=BerX9&pd_rd_wg=4Z5g1&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=&pf_rd_r=276JC15GSB1WWJ54RW5F&pf_rd_t=36701&pf_rd_p=345051a4-16fd-490b-9c34-36fcc2c13ed1&pf_rd_i=desktop', 'test', '2017-06-04 20:49:03', ''),
(12, '夜と霧', 'https://www.amazon.co.jp/gp/product/B00P7C2D2O/ref=s9u__nn_ebooks_gw_i4?ie=UTF8&pd_rd_i=B00P7C2D2O&pd_rd_r=WY18XA9JG5ETQ5ENZM20&pd_rd_w=BerX9&pd_rd_wg=4Z5g1&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=&pf_rd_r=276JC15GSB1WWJ54RW5F&pf_rd_t=36701&pf_rd_p=345051a4-16fd-490b-9c34-36fcc2c13ed1&pf_rd_i=desktop', '〈わたしたちは、おそらくこれまでのどの時代の人間も知らなかった「人間」を知った。では、この人間とはなにものか。人間とは、人間とはなにかをつねに決定する存在だ。人間とは、ガス室を発明した存在だ。しかし同時に、ガス室に入っても毅然として祈りのことばを口にする存在でもあるのだ〉\r\n\r\n「言語を絶する感動」と評され、人間の偉大と悲惨をあますところなく描いた本書は、日本をはじめ世界的なロングセラーとして600万を超える読者に読みつがれ、現在にいたっている。原著の初版は1947年、日本語版の初版は1956年。その後著者は、1977年に新たに手を加えた改訂版を出版した。\r\n世代を超えて読みつがれたいとの願いから生まれたこの新版は、原著1977年版にもとづき、新しく翻訳したものである。\r\n私とは、私たちの住む社会とは、歴史とは、そして人間とは何か。20世紀を代表する作品を、ここに新たにお贈りする。\r\n', '2017-06-04 20:50:01', ''),
(13, '', '', '', '2017-06-04 22:41:03', ''),
(14, '論語 (岩波文庫)', 'https://www.amazon.co.jp/gp/product/B00QT9X9JA/ref=s9u__nn_ebooks_gw_i1?ie=UTF8&pd_rd_i=B00QT9X9JA&pd_rd_r=7BEHF6HAGNHE83TCY5P1&pd_rd_w=E6iE5&pd_rd_wg=r4sVl&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=&pf_rd_r=RAKYR5H67FVGH44SQZ5X&pf_rd_t=36701&pf_rd_p=345051a4-16fd-490b-9c34-36fcc2c13ed1&pf_rd_i=desktop', '古代中国の大古典「四書」のひとつで，孔子とその弟子たちの言行を集録したもの．古い道徳主義のイメージをもつ人もあろうが，人間として守るべきまた行うべき，しごく当り前のことが簡潔な言葉で記されている．長年にわたって親しまれてきた岩波文庫版『論語』がさらに読みやすくなった改訂新版．', '2017-06-05 22:22:50', ''),
(15, '老子 (岩波文庫) Kindle版', 'https://www.amazon.co.jp/%E8%80%81%E5%AD%90-%E5%B2%A9%E6%B3%A2%E6%96%87%E5%BA%AB-%E8%9C%82%E5%B1%8B-%E9%82%A6%E5%A4%AB-ebook/dp/B01BD3DLOE/ref=pd_sim_351_2?_encoding=UTF8&psc=1&refRID=JCK87BFF3DEXP0A9S0E5', '古代中国の書『老子（老子道徳経）』は，熾烈な戦国時代を生き抜く処世の知恵であり一種の統治理論であるが，同時に，世の中と人間についての深い洞察力によって，人類の教科書ともいうべき普遍性を持っている．ここで説かれる平和的で，自足，素朴なあり方，謙虚さは，時代や地域を超えて，現代の人々の心に直接訴えかける．', '2017-06-05 22:23:33', ''),
(16, 'test', 'https://manablog.org/form_image_upload/', 'test', '2017-06-07 20:40:42', ''),
(17, 'test', 'https://www.facebook.com/', 'dddd', '2017-06-07 22:20:40', ''),
(18, 'ddd', 'https://manablog.org/form_image_upload/', 'test', '2017-06-07 22:21:00', ''),
(19, 'test3', 'https://manablog.org/form_image_upload/', 'dddddd', '2017-06-07 22:21:23', ''),
(20, 'tes', 'https://teratail.com/questions/49584', 'tessssssssssssssssss', '2017-06-07 23:14:35', ''),
(21, 'testtest', 'https://teratail.com/questions/49584', '無理', '2017-06-07 23:17:28', ''),
(22, 'test4', 'https://teratail.com/questions/49584', 'ムリムリムル', '2017-06-07 23:19:00', ''),
(23, '架空', 'https://teratail.com/questions/49584', '架空', '2017-06-07 23:19:56', ''),
(24, 'テステステス', 'https://www.facebook.com/', 'テステステス', '2017-06-07 23:24:12', ''),
(25, 'dddddddddddddddd', 'https://teratail.com/questions/49584', 'ddddddddddddddddddddddd', '2017-06-07 23:35:23', ''),
(26, 'dkdkkdkd', 'https://www.amazon.co.jp/?tag=hydraamazonav-22&hvadid=163750918017&hvpos=1t1&hvnetw=g&hvrand=6391891208857524556&hvpone=&hvptwo=&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1028853&hvtargid=kwd-893523692&ref=pd_sl_8eaqjij3p0_e', 'test', '2017-06-10 21:19:53', ''),
(27, 'dddddd', 'https://www.google.co.jp/search?q=amazon&oq=amazon&aqs=chrome.0.69i59j0l5.1949j0j8&sourceid=chrome&ie=UTF-8', 'dddd', '2017-06-10 21:20:14', ''),
(28, 'dddddd', 'https://www.google.co.jp/search?q=amazon&oq=amazon&aqs=chrome.0.69i59j0l5.1949j0j8&sourceid=chrome&ie=UTF-8', 'ddddddddddddddddddddd', '2017-06-10 21:20:28', ''),
(29, 'ddddfadfa', 'https://www.google.co.jp/search?q=amazon&oq=amazon&aqs=chrome.0.69i59j0l5.1949j0j8&sourceid=chrome&ie=UTF-8', 'ddddddddddddddsssssssss', '2017-06-10 21:25:53', ''),
(31, 'マルクス・アウレリウス', 'https://www.amazon.co.jp/gp/product/4061597493/ref=s9u_simh_gw_i1?ie=UTF8&pd_rd_i=4061597493&pd_rd_r=ZKDQG4XTWZ3H6FFMETJ0&pd_rd_w=Qlwmx&pd_rd_wg=349cM&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=&pf_rd_r=JYW4SW1S2R9754WB5VHP&pf_rd_t=36701&pf_rd_p=345051a4-16fd-490b-9c34-36fcc2c13ed1&pf_rd_i=desktop', '2世紀後半ローマ皇帝となったマルクス・アウレリウスはまたストア派の哲学者でもあった。万有は神的理性(ロゴス)に統率されるという合理的存在論に与する精神構造を持つ一方で、文章全体に漂う硬質の無常観はどこから来るのか。自身の心に向かって思念し、心内の軋み・分裂・矛盾をごまかすことなく真摯に生きた哲人皇帝の魂の声。碩学による待望の新訳。(講談社学術文庫)', '2017-06-10 21:38:24', ''),
(32, 'dddddddddd', 'https://www.facebook.com/', 'dddddddd', '2017-06-10 21:52:57', ''),
(33, 'aaaaaaaaaa', 'https://www.amazon.co.jp/gp/product/4003360710/ref=s9u_simh_gw_i2?ie=UTF8&pd_rd_i=4003360710&pd_rd_r=Y345XP9EEZF9QZBCCAW1&pd_rd_w=5XKgN&pd_rd_wg=gnBCZ&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=&pf_rd_r=CNCYRK82YFP9JC8QRFF7&pf_rd_t=36701&pf_rd_p=345051a4-16fd-490b-9c34-36fcc2c13ed1&pf_rd_i=desktop', 'ppppppppppppppppppppp', '2017-06-10 21:59:14', ''),
(34, 'アジャイルサムライ', 'https://www.amazon.co.jp/gp/product/4274068560/ref=ox_sc_act_image_2?ie=UTF8&psc=1&smid=A12UIJFZ8H18WA', 'マスターセンセイと学ぶアジャイル開発の道\r\n\r\n動くソフトウェアを素早く開発するための「アジャイルソフトウェア開発手法」を、実際に導入するにはどうすればよいかを、豊富な図を使い親しみやすい言葉で解説しています。経験豊かな著者が具体的なノウハウをまとめた本書は、アジャイル開発を導入したいと考えている組織や人のための「現場のマニュアル」として役立ってくれることでしょう。', '2017-06-10 23:13:42', ''),
(35, 'アジャイルサムライ−達人', 'https://www.amazon.co.jp/gp/product/4274068560/ref=ox_sc_act_image_2?ie=UTF8&psc=1&smid=A12UIJFZ8H18WA', 'マスターセンセイと学ぶアジャイル開発の道\r\n\r\n動くソフトウェアを素早く開発するための「アジャイルソフトウェア開発手法」を、実際に導入するにはどうすればよいかを、豊富な図を使い親しみやすい言葉で解説しています。経験豊かな著者が具体的なノウハウをまとめた本書は、アジャイル開発を導入したいと考えている組織や人のための「現場のマニュアル」として役立ってくれることでしょう。', '2017-06-10 23:15:16', ''),
(36, '999999999', 'https://www.amazon.co.jp/gp/product/4274068560/ref=ox_sc_act_image_2?ie=UTF8&psc=1&smid=A12UIJFZ8H18WA', 'マスターセンセイと学ぶアジャイル開発の道\r\n\r\n動くソフトウェアを素早く開発するための「アジャイルソフトウェア開発手法」を、実際に導入するにはどうすればよいかを、豊富な図を使い親しみやすい言葉で解説しています。経験豊かな著者が具体的なノウハウをまとめた本書は、アジャイル開発を導入したいと考えている組織や人のための「現場のマニュアル」として役立ってくれることでしょう。', '2017-06-10 23:19:09', ''),
(37, 'dddddd', 'https://www.amazon.co.jp/gp/product/4274068560/ref=ox_sc_act_image_2?ie=UTF8&psc=1&smid=A12UIJFZ8H18WA', '00000', '2017-06-10 23:20:11', ''),
(48, 'イノベーションのジレンマ―技術革新が巨大企業を滅ぼすとき ', 'https://www.amazon.co.jp/gp/product/4798100234/ref=s9u_simh_gw_i1?ie=UTF8&pd_rd_i=4798100234&pd_rd_r=AJB50142JVDAJV2Q03W1&pd_rd_w=Zqdyw&pd_rd_wg=bzJ7e&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=&pf_rd_r=A0RTTR9Y47ADA9G5JF04&pf_rd_t=36701&pf_rd_p=345051a4-16fd-490b-9c34-36fcc2c13ed1&pf_rd_i=desktop', '   顧客の意見に熱心に耳を傾け、新技術への投資を積極的に行い、常に高品質の製品やサービスを提供している業界トップの優良企業。ところが、その優れた経営のために失敗を招き、トップの地位を失ってしまう――。本書は、大手企業に必ず訪れるというこの「ジレンマ」を解き明かしベストセラーになった原著、『The Innovator''s Dilemma』の増補改訂版である。', '2017-06-12 23:15:01', ''),
(50, 'test', 'test', 'test', '2017-06-13 22:42:02', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
