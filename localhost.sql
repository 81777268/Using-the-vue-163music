-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: 2017-04-26 18:08:06
-- 服务器版本： 5.5.42
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WYY`
--

-- --------------------------------------------------------

--
-- 表的结构 `box`
--

CREATE TABLE `box` (
  `id` int(11) NOT NULL,
  `sc` varchar(999) NOT NULL,
  `scimage` varchar(999) NOT NULL,
  `scnub` varchar(999) NOT NULL,
  `sctext` varchar(999) NOT NULL,
  `scauthor` varchar(999) NOT NULL,
  `sctime` varchar(999) NOT NULL,
  `scname` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `box`
--

INSERT INTO `box` (`id`, `sc`, `scimage`, `scnub`, `sctext`, `scauthor`, `sctime`, `scname`) VALUES
(1, '华语/百首写给前任的歌，让你百感交集', 'http://on3qzhhgk.bkt.clouddn.com/1-zj.jpg', '490万', '介绍： 望着你离开的背影，我告诉自己要坚强，不哭，是因为爱你，更是因为懂你。\r\n爱情不在的时候，请对ta说声祝福，毕竟曾经爱过。\r\n幸福要各自去寻找，最后会习惯一个人的风景。那么久以后，我终于学会了微笑着想ta。\r\n当看破一切的时候，才知道，原来失去比拥有更踏实。\r\n结局和过程都有了，再去纠缠，连自己都觉得贪婪。\r\n与其到处找借口，不如直接说一句我不爱了。\r\n想ta的时候，就想想ta的好，ta的笑，记得曾经爱过一个人，别去管最后是谁开始了背叛，开心过就好。\r\n对于你，我始终只能以陌生人的身份去怀念。\r\n一个人的世界总需要另一个人做陪衬。ta离开了，那是ta衬不起你，相信自己会有更好的明天!\r\n河淙，何丛。时刻荏苒，而我却，彷徨照旧。', 'HoveyKang', '2017-03-15 创建', '[华语,伤感,孤独]'),
(2, '粤语集|清风徐来  暗香浮动心扉', 'http://on3qzhhgk.bkt.clouddn.com/2-zj.jpg', '172万', '介绍： 在一个瞬间，突然有一种心情。 \r\n就像是一阵清风，吹开悠悠心绪 ， \r\n散发出淡淡芳香。 \r\n很庆幸终有一天 ， \r\n你懂得铭记美好， \r\n而那些让你难过的事情 ， \r\n你也可以微笑着说出来。', '可尼晏', '2016-09-26 创建', '[粤语,流行,放松]'),
(3, '将回忆酿成烈酒入喉 从此不再挽留不再回头', 'http://on3qzhhgk.bkt.clouddn.com/3-zj.jpg', '332万', '介绍： 这个世界有些爱就是这样寂寂无名，不善言辞却念你最深。我们总是肤浅的理解着人与人之间的感情，却永远走不进一个人的世界。\r\n林特特在【以自己喜欢的方式过一生】里说，我比任何人都希望她幸福，我怕她不幸福，又怕她幸福的忘了我。\r\n【风声】里有一句很好的歌词，若你看出我那无形的伤痕，你该懂我看你的眼神。喜欢一个人往往就是一瞬间的事，那一秒只要感觉对了，别的什么都无所谓，爱不必声张，一个眼神就足够。', '十年断魂潮尾', '2017-03-13 创建', '[华语,流行,伤感]'),
(4, '远离尘世，飞升上仙', 'http://on3qzhhgk.bkt.clouddn.com/4-zj.jpg', '268万', '介绍： 初恋啊。这两个字，有多少人装作忘了的样子，却默默记了一辈子。初恋不一定会有美好的结局，有人会为初恋去力争到底，有人是迫不得已地离开，但初恋的美好一定会在心里永生。你有你的朗读者，可能我只是个摆渡人。但我们终会上岸，只记得那日，阳光万里，鲜花开放。', '扥你', '2017-01-09 创建', '[华语,校园,浪漫]'),
(5, '「我想和你做的五十件事」', 'http://on3qzhhgk.bkt.clouddn.com/5-zj.jpg', '1068万', '介绍： 我想要在茅亭里看雨、假山边看蚂蚁，看蝴蝶恋爱，看蜘蛛结网，看水，看船，看云，看瀑布，看宋清如甜甜地睡觉。---朱生豪', '______少女熊酱', '2017-03-26 创建', '[民谣,安静,散步]'),
(6, '官灯下的皇位之争', 'http://on3qzhhgk.bkt.clouddn.com/6-zj.jpg', '468万', '介绍： 我本来是电台的，可是这个技术员了太懒了，没有加载我', '国宝档案', '2017-03-26 创建', '[民谣,安静,散步]'),
(7, '打游戏听这个简直嗨爆了', 'http://on3qzhhgk.bkt.clouddn.com/7-zj.jpg', '168万', '介绍： 别说话，别打我，用心去感受', '去换每一个天黑的拥抱', '2016-11-15 创建', '[夜晚,兴奋,影视原音]'),
(8, '我喜欢', 'http://on3qzhhgk.bkt.clouddn.com/8-zj.jpg', '408万', '介绍： 实在是太喜欢这首歌了\r\n唱的我快缺氧了 瑕疵太多啦请见谅\r\n伴奏是彩虹合唱团的 大家可以去他们歌手页找到\r\n\r\n我喜欢暖冬的太阳\r\n我喜欢初春的青草\r\n我喜欢午后的庭院和一旁发呆的秋千\r\n我喜欢仲夏的冰沙\r\n我喜欢清秋的明月\r\n良宵的夜空 漫天的星辰\r\n我喜欢雨后的青蛙\r\n我喜欢山前的杏花\r\n我喜欢周三的傍晚被霞光亲吻的水族馆\r\n我喜欢成群的野鸭\r\n我喜...', '小白的民谣弹唱', '2016-11-15 创建', '[夜晚,兴奋,影视原音]'),
(9, '听民谣的人有多少故事', 'http://on3qzhhgk.bkt.clouddn.com/9-zj.jpg', '107万', '介绍： 「那些你爱过的人，都会在平行时空里爱着你」\r\n\r\n“从前啊，有个小兔子，她有一家糖果铺，而小老虎有一个冰淇淋机。\r\n兔妈妈告诉小白兔，如果你喜欢一个人呐，就给一颗糖他。小白兔喜欢上了小老虎，那么那么喜欢，忍不住就把整个店子送给了他。回家后兔妈妈问她，那小老虎喜欢你吗。小白兔直点头，妈妈说，那他为什么不给你吃个冰淇淋呢。”\r\n\r\n“他是要给我吃来着，可是我不爱吃。”\r\n“你怎么会不爱吃呢，一共有七种口味还有你最爱的杏仁啊？”\r\n“其实…\r\n我也没吃过，只是就想着把糖给他了。”\r\n\r\n每一段爱情都是不对等的。有人说，只因爱你我先输。\r\n你会失恋，会难受，会去醉酒去hit the road。\r\n可是亲爱的啊，不要太伤心，因为你爱的人。\r\n都会在平行时空里，\r\n爱着你。', '此生只愿醉太白', '2017-03-28 创建', '[华语,粤语,流行]'),
(10, '听，这些女生唱出的人生领悟', 'http://on3qzhhgk.bkt.clouddn.com/10-zj.jpg', '877万', '介绍： 现在的单主还在读书，一位热爱游戏和篮球的骚年，爱看直播，爱听电音，有时也会迷茫。但烦躁时，点开歌单听着一首首经典的音乐，想想美好的往事，也挺好的。有什么好建议或者歌曲＋QQ749033970\r\n你们最可爱谢谢，陪伴是最长情的告白', '因为有李青春不老', '2016-11-27 创建', '[轻音乐,清晨,清新]'),
(11, '又是清明雨上，折菊寄到你身边', 'http://on3qzhhgk.bkt.clouddn.com/11-zj.jpg', '1077万', '介绍： 二十一二岁的我们，听歌单一？哎，不存在的。\r\n玩转所有，迸发青春！\r\n几百首歌都表达不了WE对音乐的L-O-V-E*\r\n收集了一些不错很赖听的歌，不搞任何花里胡哨的东西。\r\n自己作为一个学生，肯定将学生的欣赏水平融入音乐之中，所以整理了一份平时爱好的合集，欢迎收听。', '淡淡红酒味丶', '2017-03-12 创建', '[90后,流行,夜晚]'),
(12, '“我养你啊”', 'http://on3qzhhgk.bkt.clouddn.com/12-zj.jpg', '777万', '介绍： 精选一百首个人喜欢的华语情歌，作品皆为二字歌名，范围涵盖整个大中华地区，不分风格性别年代。你怎么喜欢，我们就怎么娓娓道来。\r\n\r\n封面来自孟京辉先锋话剧《他有两把左轮手qiang和黑白相间的眼睛》。', '鮭魚先森', '2017-03-15 创建', '[华语,流行,民谣]');

-- --------------------------------------------------------

--
-- 表的结构 `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `name` varchar(999) NOT NULL,
  `author` varchar(999) NOT NULL,
  `src` varchar(999) NOT NULL,
  `time` varchar(999) NOT NULL,
  `special` varchar(999) NOT NULL,
  `cover` varchar(999) NOT NULL,
  `sc` varchar(999) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `music`
--

INSERT INTO `music` (`id`, `name`, `author`, `src`, `time`, `special`, `cover`, `sc`) VALUES
(5, '演员', '薛之谦', 'http://on3qzhhgk.bkt.clouddn.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E6%BC%94%E5%91%98.mp3', '4:21', '绅士', 'http://on3qzhhgk.bkt.clouddn.com/1-fm.jpg', '华语/百首写给前任的歌，让你百感交集'),
(6, '凉凉', '张碧晨&杨宗纬', 'http://on3qzhhgk.bkt.clouddn.com/%E6%9C%88%E7%8B%B8&%E7%8E%84%E6%9C%88%20-%20%E5%87%89%E5%87%89%EF%BC%88cover%EF%BC%9A%E5%BC%A0%E7%A2%A7%E6%99%A8&%E6%9D%A8%E5%AE%97%E7%BA%AC%EF%BC%89.mp3', '5:33', '凉凉', 'http://on3qzhhgk.bkt.clouddn.com/2-fm.jpg', '华语/百首写给前任的歌，让你百感交集'),
(7, '童话镇', '陈一发儿', 'http://on3qzhhgk.bkt.clouddn.com/%E9%99%88%E4%B8%80%E5%8F%91%E5%84%BF%20-%20%E7%AB%A5%E8%AF%9D%E9%95%87.mp3', '4:17', '童话镇', 'http://on3qzhhgk.bkt.clouddn.com/3-fm.jpg', '华语/百首写给前任的歌，让你百感交集'),
(8, '成都', '赵雷', 'http://on3qzhhgk.bkt.clouddn.com/%E8%B5%B5%E9%9B%B7%20-%20%E6%88%90%E9%83%BD.mp3', '5:28', '成都', 'http://on3qzhhgk.bkt.clouddn.com/4-fm.jpg', '华语/百首写给前任的歌，让你百感交集'),
(9, '刚好遇见你', '李玉刚', 'http://on3qzhhgk.bkt.clouddn.com/%E6%9D%8E%E7%8E%89%E5%88%9A%20-%20%E5%88%9A%E5%A5%BD%E9%81%87%E8%A7%81%E4%BD%A0.mp3', '3:20', '刚好遇见你', 'http://on3qzhhgk.bkt.clouddn.com/5-fm.jpg', '华语/百首写给前任的歌，让你百感交集'),
(10, '锦瑟', '王三溥', 'http://on3qzhhgk.bkt.clouddn.com/%E7%8E%8B%E4%B8%89%E6%BA%A5%20-%20%E9%94%A6%E7%91%9F.mp3', '6:02', '锦瑟', 'http://on3qzhhgk.bkt.clouddn.com/6-fm.jpg', '粤语集|清风徐来  暗香浮动心扉'),
(11, '下雨天真', '春晓', 'http://on3qzhhgk.bkt.clouddn.com/%E5%BD%AD%E5%9D%A6,%E6%98%A5%E6%99%93%20-%20%E4%B8%8B%E9%9B%A8%E5%A4%A9%E7%9C%9F.mp3', '5:14', '下雨天真', 'http://on3qzhhgk.bkt.clouddn.com/7-fm.jpg', '粤语集|清风徐来  暗香浮动心扉'),
(12, '我只是你的爱人', 'framend', 'http://on3qzhhgk.bkt.clouddn.com/Frande%CC%81%20-%20%E6%88%91%E5%8F%AA%E6%98%AF%E4%BD%A0%E7%9A%84%E7%88%B1%E4%BA%BA.mp3', '4:17', '我只是你的爱人', 'http://on3qzhhgk.bkt.clouddn.com/8.jpg', '粤语集|清风徐来  暗香浮动心扉'),
(13, '阿和', '催开潮', 'http://on3qzhhgk.bkt.clouddn.com/%E5%B4%94%E5%BC%80%E6%BD%AE%20-%20%E9%98%BF%E5%92%8C.mp3', '4:35', '急驶的马车.红', 'http://on3qzhhgk.bkt.clouddn.com/9.jpg', '粤语集|清风徐来  暗香浮动心扉'),
(14, '我喜欢', '上海彩虹室内合唱团', 'http://on3qzhhgk.bkt.clouddn.com/%E4%B8%8A%E6%B5%B7%E5%BD%A9%E8%99%B9%E5%AE%A4%E5%86%85%E5%90%88%E5%94%B1%E5%9B%A2%20-%20%E6%88%91%E5%96%9C%E6%AC%A2.mp3', '3:57', '上海彩虹室内合唱团', 'http://on3qzhhgk.bkt.clouddn.com/10-fm.jpg', '粤语集|清风徐来  暗香浮动心扉'),
(15, '儿时', '刘昊霖', 'http://on3qzhhgk.bkt.clouddn.com/%E5%88%98%E6%98%8A%E9%9C%96%20-%20%E5%84%BF%E6%97%B6.mp3', '4:21', '鱼干铺里', 'http://on3qzhhgk.bkt.clouddn.com/11-fm.jpg', '将回忆酿成烈酒入喉 从此不再挽留不再回头'),
(16, '皮皮虾我们走', 'Mc梦柯', 'http://on3qzhhgk.bkt.clouddn.com/Mc%E6%A2%A6%E6%9F%AF%20-%20%E7%9A%AE%E7%9A%AE%E8%99%BE%E6%88%91%E4%BB%AC%E8%B5%B0.mp3', '1:57', '皮皮虾我们走', 'http://on3qzhhgk.bkt.clouddn.com/12-fm.jpg', '将回忆酿成烈酒入喉 从此不再挽留不再回头'),
(17, '还不是因为你长得不好看', '满汉全席', 'http://on3qzhhgk.bkt.clouddn.com/%E6%BB%A1%E6%B1%89%E5%85%A8%E5%B8%AD%20-%20%E8%BF%98%E4%B8%8D%E6%98%AF%E5%9B%A0%E4%B8%BA%E4%BD%A0%E9%95%BF%E5%BE%97%E4%B8%8D%E5%A5%BD%E7%9C%8B.mp3', '4:24', '还不是因为你长得不好看', 'http://on3qzhhgk.bkt.clouddn.com/13-fm.jpg', '将回忆酿成烈酒入喉 从此不再挽留不再回头'),
(18, '深夜书店', '许崇', 'http://on3qzhhgk.bkt.clouddn.com/%E8%AE%B8%E5%B5%A9,%E6%B4%9B%E5%A4%A9%E4%BE%9D%20-%20%E6%B7%B1%E5%A4%9C%E4%B9%A6%E5%BA%97.mp3', '4:20', '深夜书店', 'http://on3qzhhgk.bkt.clouddn.com/14-fm.jpg', '将回忆酿成烈酒入喉 从此不再挽留不再回头'),
(19, '高尚', '薛之谦', 'http://on3qzhhgk.bkt.clouddn.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E9%AB%98%E5%B0%9A.mp3', '5:18', '高尚', 'http://on3qzhhgk.bkt.clouddn.com/15-fm.jpg', '将回忆酿成烈酒入喉 从此不再挽留不再回头'),
(20, '你就不要想起我', '简弘亦', 'http://on3qzhhgk.bkt.clouddn.com/%E7%AE%80%E5%BC%98%E4%BA%A6%20-%20%E4%BD%A0%E5%B0%B1%E4%B8%8D%E8%A6%81%E6%83%B3%E8%B5%B7%E6%88%91%20%28cover%E7%94%B0%E9%A6%A5%E7%94%84%29.mp3', '4:40', '你就不要想起我', 'http://on3qzhhgk.bkt.clouddn.com/16-fm.jpg', '远离尘世，飞升上仙'),
(21, '我要你', '老狼', 'http://on3qzhhgk.bkt.clouddn.com/%E8%80%81%E7%8B%BC,%E4%BB%BB%E7%B4%A0%E6%B1%90%20-%20%E6%88%91%E8%A6%81%E4%BD%A0.mp3', '4:16', '我要你', 'http://on3qzhhgk.bkt.clouddn.com/17-fm.jpg', '远离尘世，飞升上仙'),
(22, 'Beauty and the Beast', 'Ariana Grande/John Legend', 'http://on3qzhhgk.bkt.clouddn.com/Ariana%20Grande,John%20Legend%20-%20Beauty%20and%20the%20Beast.mp3', '03:48', 'Beauty and the Beast', 'http://on3qzhhgk.bkt.clouddn.com/18-fm.jpg', '远离尘世，飞升上仙'),
(23, 'Stay', 'Zedd/Alessia Cara', 'http://on3qzhhgk.bkt.clouddn.com/Zedd,Alessia%20Cara%20-%20Stay.mp3', '03:30', 'Stay', 'http://on3qzhhgk.bkt.clouddn.com/19-fm.jpg', '远离尘世，飞升上仙'),
(24, '灵魂歌手', '梁博', 'http://on3qzhhgk.bkt.clouddn.com/%E6%A2%81%E5%8D%9A%20-%20%E7%81%B5%E9%AD%82%E6%AD%8C%E6%89%8B.mp3', '06:59', '灵魂歌手', 'http://on3qzhhgk.bkt.clouddn.com/20-fm.jpg', '远离尘世，飞升上仙'),
(25, '1000x', 'BROODS', 'http://on3qzhhgk.bkt.clouddn.com/%E6%A2%81%E5%8D%9A%20-%20%E7%81%B5%E9%AD%82%E6%AD%8C%E6%89%8B.mp3', '04:01', '1000x', 'http://on3qzhhgk.bkt.clouddn.com/21-fm.jpg', '「我想和你做的五十件事」'),
(26, '矜持', '姚贝娜', 'http://on3qzhhgk.bkt.clouddn.com/%E5%A7%9A%E8%B4%9D%E5%A8%9C%20-%20%E7%9F%9C%E6%8C%81.mp3', '04:19', '矜持', 'http://on3qzhhgk.bkt.clouddn.com/22-fm.jpeg', '「我想和你做的五十件事」'),
(27, '太多', '陈冠蒲', 'http://on3qzhhgk.bkt.clouddn.com/%E9%99%88%E5%86%A0%E8%92%B2%20-%20%E5%A4%AA%E5%A4%9A.mp3', '03:56', '就让你走', 'http://on3qzhhgk.bkt.clouddn.com/23-fm.jpg', '「我想和你做的五十件事」'),
(28, '我要你', '任素汐', 'http://on3qzhhgk.bkt.clouddn.com/%E4%BB%BB%E7%B4%A0%E6%B1%90%20-%20%E6%88%91%E8%A6%81%E4%BD%A0.mp3', '02:34', '我要你', 'http://on3qzhhgk.bkt.clouddn.com/24-fm.jpg', '「我想和你做的五十件事」'),
(29, 'This Town', 'Niall Horan', 'http://on3qzhhgk.bkt.clouddn.com/Niall%20Horan%20-%20This%20Town.mp3', '03:53', 'This Town', 'http://on3qzhhgk.bkt.clouddn.com/25-fm.jpeg', '「我想和你做的五十件事」'),
(30, 'One Million Butterflies', 'Pavla', 'http://on3qzhhgk.bkt.clouddn.com/Pavla%20-%20One%20Million%20Butterflies.mp3', '03:34', '经典慢摇', 'http://on3qzhhgk.bkt.clouddn.com/26-fm.jpg', '官灯下的皇位之争'),
(31, 'Back In Time', 'K-391', 'http://on3qzhhgk.bkt.clouddn.com/K-391%20-%20Back%20In%20Time.mp3', '03:43', 'Back In Time', 'http://on3qzhhgk.bkt.clouddn.com/27-fm.jpeg', '官灯下的皇位之争'),
(32, 'Sugar', 'Maroon 5', 'http://on3qzhhgk.bkt.clouddn.com/Maroon%205%20-%20Sugar.mp3', '03:56', 'V', 'http://on3qzhhgk.bkt.clouddn.com/28-fm.jpeg', '官灯下的皇位之争'),
(33, 'Curiosity', 'Carly Rae Jepsen', 'http://on3qzhhgk.bkt.clouddn.com/Carly%20Rae%20Jepsen%20-%20Curiosity.mp3', '03:27', 'Curiosity', 'http://on3qzhhgk.bkt.clouddn.com/29-fm.jpeg', '官灯下的皇位之争'),
(34, 'Solstice', 'K-391', 'http://on3qzhhgk.bkt.clouddn.com/K-391%20-%20Solstice.mp3', '03:47', 'Solstice', 'http://on3qzhhgk.bkt.clouddn.com/30-fm.jpeg', '官灯下的皇位之争'),
(35, 'Cheap Hotel', 'Leon Else', 'http://on3qzhhgk.bkt.clouddn.com/Leon%20Else%20-%20Cheap%20Hotel.mp3', '03:43', 'River Full of Liquor', 'http://on3qzhhgk.bkt.clouddn.com/31-fm.jpeg', '打游戏听这个简直嗨爆了'),
(36, 'Mercy', 'Shawn Mendes', 'http://on3qzhhgk.bkt.clouddn.com/Shawn%20Mendes%20-%20Mercy.mp3', '03:29', 'Illuminate (Deluxe)', 'http://on3qzhhgk.bkt.clouddn.com/32-fm.jpeg', '打游戏听这个简直嗨爆了'),
(37, 'Just The Same', 'Bruno Major', 'http://on3qzhhgk.bkt.clouddn.com/Bruno%20Major%20-%20Just%20The%20Same.mp3', '03:25', 'Just The Same', 'http://on3qzhhgk.bkt.clouddn.com/33-fm.jpeg', '打游戏听这个简直嗨爆了'),
(38, 'Five Voices', '3LAU', 'http://on3qzhhgk.bkt.clouddn.com/3LAU%20-%20Five%20Voices%20%283LAU%20Mashup%29.mp3', '02:23', 'Dance Floor Filth ', 'http://on3qzhhgk.bkt.clouddn.com/34-fm.jpeg', '打游戏听这个简直嗨爆了'),
(39, 'Breakn'' a Sweat', 'Zedd', 'http://on3qzhhgk.bkt.clouddn.com/Zedd%20-%20Breakn%27%20a%20Sweat%20%28Zedd%20Remix%29.mp3', '04:34', 'Dance Floor Filth ', 'http://on3qzhhgk.bkt.clouddn.com/35-fm.jpeg', '打游戏听这个简直嗨爆了'),
(40, 'One Two', 'Kairo Kingdom', 'http://on3qzhhgk.bkt.clouddn.com/Kairo%20Kingdom%20-%20One%20Two%20-%20%C2%A0%28Original%20Mix%29.mp3', '03:06', 'One Two', 'http://on3qzhhgk.bkt.clouddn.com/36-fm.JPG', '我喜欢'),
(41, 'Swamp Thing', 'Pegboard Nerds', 'http://on3qzhhgk.bkt.clouddn.com/Pegboard%20Nerds%20-%20Swamp%20Thing%20%28Original%20Mix%29.mp3', '04:19', 'Swamp Thing', 'http://on3qzhhgk.bkt.clouddn.com/37-fm.jpg', '我喜欢'),
(42, 'Quantum', 'Astronaut', 'http://on3qzhhgk.bkt.clouddn.com/Astronaut%20-%20Quantum%20%28Spag%20Heddy%20Remix%29.mp3', '03:57', 'Destination: Quantum', 'http://on3qzhhgk.bkt.clouddn.com/38-fm.jpg', '我喜欢'),
(43, '左耳', '赵薇', 'http://on3qzhhgk.bkt.clouddn.com/%E8%B5%B5%E8%96%87%20-%20%E5%B7%A6%E8%80%B3.mp3', '03:57', '左耳', 'http://on3qzhhgk.bkt.clouddn.com/39-fm.jpg', '我喜欢'),
(44, '以后别做朋友', '郭斯', 'http://on3qzhhgk.bkt.clouddn.com/%E9%83%AD%E6%96%AF%20-%20%E4%BB%A5%E5%90%8E%E5%88%AB%E5%81%9A%E6%9C%8B%E5%8F%8B.mp3', '03:15', '以后别做朋友', 'http://on3qzhhgk.bkt.clouddn.com/40-fm.jpg', '我喜欢'),
(45, '给陌生女孩的歌', '何洁', 'http://on3qzhhgk.bkt.clouddn.com/%E4%BD%95%E6%B4%81%20-%20%E7%BB%99%E9%99%8C%E7%94%9F%E5%A5%B3%E5%AD%A9%E7%9A%84%E6%AD%8C.mp3', '04:48', '给陌生女孩的歌', 'http://on3qzhhgk.bkt.clouddn.com/41-fm.png', '听民谣的人有多少故事'),
(46, '藤蔓之间', '魏晨', 'http://on3qzhhgk.bkt.clouddn.com/%E9%AD%8F%E6%99%A8%20-%20%E8%97%A4%E8%94%93%E4%B9%8B%E9%97%B4.mp3', '03:51', '藤蔓之间', 'http://on3qzhhgk.bkt.clouddn.com/42-fm.png', '听，这些女生唱出的人生领悟'),
(47, '动物世界', '薛之谦', 'http://on3qzhhgk.bkt.clouddn.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E5%8A%A8%E7%89%A9%E4%B8%96%E7%95%8C.mp3', '03:51', '动物世界', 'http://on3qzhhgk.bkt.clouddn.com/43-fm.png', '又是清明雨上，折菊寄到你身边'),
(48, '少年弦', '晓月老板', 'http://on3qzhhgk.bkt.clouddn.com/%E6%99%93%E6%9C%88%E8%80%81%E6%9D%BF%20-%20%E5%B0%91%E5%B9%B4%E5%BC%A6.mp3', '03:55', '少年弦', 'http://on3qzhhgk.bkt.clouddn.com/44-fm.png', '“我养你啊”');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;--
-- Database: `baidu`
--

-- --------------------------------------------------------

--
-- 表的结构 `houtai`
--

CREATE TABLE `houtai` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `src` varchar(100) NOT NULL,
  `source` varchar(10) NOT NULL,
  `time` varchar(50) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `houtai`
--

INSERT INTO `houtai` (`id`, `title`, `content`, `src`, `source`, `time`, `name`) VALUES
(97, '濮存昕卸任北京人艺副院长算是“如愿以偿”？', '这是正文', '/images/beijing.jpg', '感动中国人', '2017-03-02 1:53:12', '娱乐'),
(98, '《Do Re Mi总动员》游戏动漫视听音乐会将在北京举行', '这是正文', '/images/skin.jpg', '搜狐娱乐', '2017-03-02 1:54:55', '娱乐'),
(99, '那英参加《蒙面歌王》遭网友集体抵制, 还被讥笑是山寨天后', '我是正文', '/images/san1.jpg', '湖南电视台', '2017-03-02 1:57:6', '音乐'),
(102, '刘恺威 杨幂公开见面, 见面就开吵 网友: 难道王鸥又犯老毛病了?', '我是正文', '/images/yangmi.jpg', '狗仔追踪', '2017-03-02 2:3:22', '影视'),
(103, '网友夸秦俊杰帅到没朋友，秦俊杰：这是世人皆知的事', '我是正文', '/images/tongliya.jpg', '网易新闻', '2017-03-02 2:4:22', '娱乐'),
(104, '习大大说：锐龙开卖！党和社会要全力支持！', '你说的对', '/images/xizhuxi.jpg', '热点', '2017-03-03 9:00:00 ', '政治'),
(105, '锐不可当！锐龙处理器开卖，白浅上神前来祝贺！', '他说的对', '/images/san1.jpg', '天界祝贺', '2017-03-03 16:27:44', '科技');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `houtai`
--
ALTER TABLE `houtai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `houtai`
--
ALTER TABLE `houtai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
