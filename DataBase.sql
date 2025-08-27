-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 27 2025 г., 22:40
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `house`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `position`, `email`, `img1`, `img2`) VALUES
(1, 'Асабина Анна', 'гендиректор', 'anna_3945@gmail.com', 'http://localhost:3000/36.svg', 'http://localhost:3000/37.svg'),
(2, 'Васькина Юлия', 'дизайнер интерьера', 'yulia_vas@mail.ru', 'http://localhost:3000/42.svg', 'http://localhost:3000/43.svg'),
(3, 'Герасимов Евгений', 'архитектор', 'evgeniy2828@yandex.ru', 'http://localhost:3000/37.svg', 'http://localhost:3000/43.svg'),
(4, 'Кочетков Кирилл', 'ландшафтный архитектор', 'kirill_dkxn@gmail.com', 'http://localhost:3000/36.svg', 'http://localhost:3000/42.svg'),
(5, 'Устинов Павел', 'инжинер-строитель', 'pavel_ust@mail.ru', 'http://localhost:3000/36.svg', 'http://localhost:3000/43.svg'),
(6, 'Пальников Иван', 'специалист по энергоэффективности', 'ivaoxxxtention@mail.com', 'http://localhost:3000/37.svg', 'http://localhost:3000/42.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `activs`
--

CREATE TABLE `activs` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_actv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `activs`
--

INSERT INTO `activs` (`id`, `img`, `subtitle`, `id_actv`) VALUES
(1, 'http://localhost:3000/1_1.jpg', 'Прокат sub-board', 'sub-board'),
(2, 'http://localhost:3000/1_2.jpg', 'Велопрогулка', 'bicycling'),
(3, 'http://localhost:3000/1_3.jpg', 'Пикник', 'piknic'),
(4, 'http://localhost:3000/2.jpg', 'Рыбалка', 'fishing'),
(5, 'http://localhost:3000/3_1.jpg', 'Сбор грибов', 'mashroom_picking'),
(6, 'http://localhost:3000/3_2.jpg', 'Tracking', 'tracking');

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `img`, `title`, `text`) VALUES
(1, 'http://localhost:3000/65.png', 'Какие цвета лучше всего сочетаются в интерьере', 'При выборе комбинации цветов для интерьера, важно учитывать стиль помещения, настроение, которое вы хотите создать, а также функциональность помещения. Вот некоторые популярные сочетания цветов, которые могут помочь вам в создании гармоничного интерьера:\r\n\r\n1. Серый и голубой: это сочетание создает спокойную и элегантную атмосферу. Серый может быть использован в качестве основного цвета, а голубой - в качестве акцента.\r\n\r\n2. Белый и светло-розовый: это нежное и романтичное сочетание, которое подходит для спальни или гостиной. Белый может служить основным цветом, а светло-розовый - акцентом.\r\n\r\n3. Коричневый и золотой: такая комбинация цветов создает теплую и роскошную атмосферу. Коричневый может быть использован для мебели или стен, а золотой - для декоративных элементов или акцентов.\r\n\r\n4. Зеленый и бежевый: это натуральное и свежее сочетание, которое подходит для природно-ориентированных интерьеров. Зеленый цвет может быть использован для растений или текстиля, а бежевый - для стен или мебели.\r\n\r\n5. Черный и белый: это классическое сочетание, которое создает стильный и элегантный интерьер. Черный может быть использован для акцентов или мебели, а белый - для стен или основных поверхностей.\r\n\r\nНо помните, что это всего лишь предложения, и в конечном итоге выбор цветов зависит от вашего вкуса и предпочтений.'),
(2, 'http://localhost:3000/66.png', 'Выбираем линолеум, ламинат или паркет', 'Выбор материала для пола - это важный шаг при обустройстве интерьера. Каждый из них имеет свои преимущества и особенности, поэтому рассмотрим их более подробно:\r\n\r\n1. Линолеум: эта практичная и доступная по цене покрытие. Линолеум обладает хорошей износостойкостью, долговечностью и устойчивостью к влаге. Он также легко устанавливается и очень прост в уходе. Линолеум доступен в широком ассортименте дизайна, что позволяет подобрать его под любой стиль интерьера.\r\n\r\n2. Ламинат: это популярное покрытие, имитирующее дерево. Ламинат обладает высокой износостойкостью, прост в уходе и устойчив к влаге. Он также легко устанавливается и доступен в различных оттенках и фактурах, чтобы создать желаемый вид деревянного пола.\r\n\r\n3. Паркет: это натуральное и роскошное покрытие. Паркет создает теплую атмосферу, обладает высокой прочностью и долговечностью. Он требует более тщательного ухода и регулярного обновления, но результат стоит затраченных усилий. Паркет также имеет широкий выбор оттенков и узоров, чтобы подчеркнуть стиль интерьера.\r\n\r\nВ конечном итоге, выбор между линолеумом, ламинатом и паркетом зависит от ваших предпочтений, бюджета, стиля интерьера и функциональности помещения. Рассмотрите их преимущества и особенности, а также проконсультируйтесь с профессионалами, чтобы сделать правильный выбор.'),
(3, 'http://localhost:3000/67.png', 'Какой тип дома вам подходит', 'В зависимости от ваших предпочтений и потребностей, можно дать рекомендации по различным типам домов:\r\n\r\n1. Коттедж: это отдельно стоящий дом, который обычно имеет два или более этажа. Коттеджи обладают просторными внутренними помещениями и собственной территорией. Они идеальны для семей и тех, кто ценит приватность и пространство.\r\n\r\n2. Апартаменты: это квартиры, расположенные в многоэтажных зданиях. Апартаменты обычно предлагают удобства, такие как охраняемая территория, парковка, лифты и возможность использования общих помещений. Они хорошо подходят для одиноких людей, пар, а также тех, кто предпочитает жить вблизи городской инфраструктуры.\r\n\r\n3. Таунхаус: это дом, который является частью рядовой застройки и имеет общие стены с соседними домами. Таунхаусы предлагают комбинацию пространства и приватности. Они подходят для семей, которые ценят комфорт и удобство жизни в доме, но предпочитают более компактное жилье.\r\n\r\n4. Дом в стиле загородного коттеджа: это дом с характерной архитектурой, обычно из натуральных материалов, в окружении природы. Такие дома создают атмосферу уюта и спокойствия. Они подходят для людей, которые хотят наслаждаться природой и уединением.\r\n\r\n5. Дуплекс: это дом с двумя отдельными жилыми единицами, которые располагаются друг над другом. Дуплексы предлагают возможность жить рядом с родственниками или сдавать одну из единиц в аренду. Они подходят для семей или инвесторов, которые хотят получить дополнительный доход.\r\n\r\nВажно учитывать ваши желания, финансовые возможности и потребности при выборе типа дома. Рекомендую обсудить это с риэлтором или специалистом в области недвижимости, чтобы получить более детальную консультацию.'),
(4, 'http://localhost:3000/69.png', 'Какой дом лучше: деревянный или кирпичный', 'Когда речь идет о выборе между деревянным и кирпичным домом, многие люди сталкиваются с дилеммой. Оба варианта имеют свои преимущества и недостатки, и выбор зависит от ваших предпочтений, бюджета и потребностей. В этой статье мы рассмотрим основные факторы, которые следует учесть при выборе между деревянным и кирпичным домом.\r\n\r\nПреимущества деревянного дома\r\nДеревянные дома имеют свой уникальный шарм и привлекают многих своей естественной красотой. Они также обладают рядом преимуществ:\r\n\r\nЭкологичность: Древесина является природным материалом и не загрязняет окружающую среду. При правильной обработке и уходе, деревянный дом может длиться десятилетиями, сохраняя свою прочность и привлекательность.\r\nУдобство в строительстве: Строительство деревянного дома может быть быстрым и относительно простым процессом. Деревянные конструкции легкие и могут быть легко установлены на любой тип фундамента.\r\nЕстественная теплоизоляция: Дерево обладает хорошей теплоизоляцией, что означает, что в деревянных домах будет более комфортная температура'),
(5, 'http://localhost:3000/70.png', 'Как по фен-шую организовать пространство в квартире', 'Фен-шуй — это древнекитайское искусство гармонизации пространства, которое помогает создать гармоничную и благоприятную энергетику в доме или квартире. Если вы хотите улучшить энергетику своего жилища и создать комфортную атмосферу, следуйте принципам фен-шуя при организации пространства в вашей квартире.\r\n\r\nУберите беспорядок. Первое правило фен-шуя — избавиться от ненужных вещей и хаоса. Уберите все, что не используется или не приносит радости. Организуйте свои вещи так, чтобы они были легко доступны и удобно размещены.\r\n\r\nСоздайте гармоничное расположение мебели. Относительное расположение мебели влияет на энергетику в комнате. Поставьте кровать так, чтобы она была видна с двери, но не напрямую напротив нее. Разместите мебель так, чтобы она образовывала уютные углы и не преграждала свободный поток энергии.\r\n\r\nИспользуйте природные материалы. Фен-шуй рекомендует использовать натуральные материалы в интерьере, такие как дерево, камень и ткани из натуральных волокон. Они создают ощущение естественности и природной гармонии.\r\n\r\nСделайте правильное освещение.'),
(6, 'http://localhost:3000/71.png', 'Как правильно клеить обои', 'Когда приходит время обновить интерьер дома или квартиры, одним из самых популярных и доступных способов является поклейка обоев. Клеить обои может показаться сложной задачей, особенно для тех, кто делает это впервые. Однако, с правильным подходом и немного терпения, вы сможете справиться с этой задачей самостоятельно. В этой статье я расскажу вам о том, как правильно клеить обои, чтобы получить качественный и привлекательный результат.\r\n\r\nПодготовка поверхности\r\nПеред тем, как приступить к клейке обоев, необходимо правильно подготовить поверхность. Важно, чтобы стены были чистыми, сухими и ровными. Убедитесь, что поверхность не имеет неровностей, трещин или выступающих гвоздей. Если есть неровности, их необходимо выровнять шпатлевкой и затем обработать поверхность шлифовальной бумагой. Если на стенах есть старые обои, их необходимо удалить.\r\n\r\nВыбор и расчет необходимого количества обоев\r\nПеред покупкой обоев необходимо определиться с выбором дизайна и текстуры, которая подходит для вашего интерьера. При выборе обратите внимание на качество материала и его прочность.');

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `img`, `text`, `link`) VALUES
(1, 'http://localhost:3000/65.png', 'Какие цвета лучше всего сочетаются в интерьере', 'article_1'),
(2, 'http://localhost:3000/66.png', 'Выбираем линолеум, ламинат или паркет', 'article_2'),
(3, 'http://localhost:3000/67.png', 'Какой тип дома вам подходит', 'article_3'),
(4, 'http://localhost:3000/69.png', 'Какой дом лучше: деревянный или кирпичный', 'article_4'),
(5, 'http://localhost:3000/70.png', 'Как по фен-шую организовать пространство в квартире', 'article_5'),
(6, 'http://localhost:3000/71.png', 'Как правильно клеить обои', 'article_6');

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_check_in` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_of_adults` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_check_out` date NOT NULL,
  `amount_of_rooms` int(11) NOT NULL,
  `amount_of_children` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `name`, `date_check_in`, `type`, `amount_of_adults`, `phone`, `date_check_out`, `amount_of_rooms`, `amount_of_children`, `date`) VALUES
(10, 'sdehukfhufdhu', '2024-03-08', 'summer', 3, '478479845788', '2024-03-30', 1, 1, '2024-03-21'),
(11, 'kgjjjjjj.', '6880-05-31', 'hytte', 67, '70987654', '4567-07-05', 1, 456, '2024-03-21');

-- --------------------------------------------------------

--
-- Структура таблицы `home_slider`
--

CREATE TABLE `home_slider` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `home_slider`
--

INSERT INTO `home_slider` (`id`, `img`) VALUES
(1, 'http://localhost:3000/home_1.png'),
(2, 'http://localhost:3000/home_2.png'),
(3, 'http://localhost:3000/home_3.png');

-- --------------------------------------------------------

--
-- Структура таблицы `img_prices`
--

CREATE TABLE `img_prices` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `img_prices`
--

INSERT INTO `img_prices` (`id`, `img`) VALUES
(1, 'http://localhost:3000/bathroom.png'),
(2, 'http://localhost:3000/brazier.png'),
(3, 'http://localhost:3000/diningtable.png'),
(4, 'http://localhost:3000/doublebed.png'),
(5, 'http://localhost:3000/hairdryer.png'),
(6, 'http://localhost:3000/icebox.png'),
(7, 'http://localhost:3000/kettle.png'),
(8, 'http://localhost:3000/kitchen.png'),
(9, 'http://localhost:3000/microwaveoven.png'),
(10, 'http://localhost:3000/oven.png'),
(11, 'http://localhost:3000/parking.png'),
(12, 'http://localhost:3000/stove.png'),
(13, 'http://localhost:3000/tableware.png'),
(14, 'http://localhost:3000/toilet.png'),
(15, 'http://localhost:3000/tv.png'),
(16, 'http://localhost:3000/wardrobe.png');

-- --------------------------------------------------------

--
-- Структура таблицы `main_desc`
--

CREATE TABLE `main_desc` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_desc`
--

INSERT INTO `main_desc` (`id`, `img`, `title`, `text`) VALUES
(1, 'http://localhost:3000/45.svg', 'From the city to nature', 'Мы создали дома в четырех разных стилях, в которых люди хотят находится. С 2015 года мы помогаем людям почувствовать единение с природой и насладится умиротворяющей тишиной. Основная философия Leafy Lodge заключается в том, чтобы подарить людям то драгоценное время наедине с природой, вдали от шума и суеты.');

-- --------------------------------------------------------

--
-- Структура таблицы `main_gallery`
--

CREATE TABLE `main_gallery` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_gallery`
--

INSERT INTO `main_gallery` (`id`, `img`, `class`) VALUES
(1, 'http://localhost:3000/26.png', 'img-30'),
(2, 'http://localhost:3000/27.png', 'img-40'),
(3, 'http://localhost:3000/28.png', 'img-40'),
(4, 'http://localhost:3000/29.png', 'img-30');

-- --------------------------------------------------------

--
-- Структура таблицы `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats` int(11) NOT NULL,
  `addit` int(11) NOT NULL,
  `square` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `array` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`id`, `type`, `seats`, `addit`, `square`, `description`, `schedule1`, `schedule2`, `img`, `array`) VALUES
(1, 'Hytte', 2, 2, 24, 'Вместимость: до 4 человек. Доп. гость: 500 ₽.Гостиная: шкаф-купе, раскладной диван, журнальный и барный стол с барными стульями и телевизор.Спальная зона: двуспальная кровать и кресло. В кухонной зоне есть большой гарнитур, холодильник, микроволновка, чайник + посуда.Санузел: большая душевая кабина, раковина, унитаз + тапочки, гели, шампуни, мыло, комплект полотенец, фен.Передняя веранда: качель кокон, диван, 2 кресла и столик.Задняя веранда: мангал и 2 кресла.Залог при заселении (на случай порчи имущества) 2000₽', 'ВС-ЧТ: 11 200 ₽/СУТКИ', 'ПТ, СБ: 14 450 ₽/СУТКИ', 'http://localhost:3000/13.png', 'hytte'),
(2, 'A-frame house', 2, 0, 20, 'Вместимость: до 4 человек. Доп. гость: 500 ₽.Гостиная: шкаф-купе, раскладной диван, журнальный и барный стол с барными стульями и телевизор.Спальная зона: двуспальная кровать и кресло. В кухонной зоне есть большой гарнитур, холодильник, микроволновка, чайник + посуда.Санузел: большая душевая кабина, раковина, унитаз + тапочки, гели, шампуни, мыло, комплект полотенец, фен.Передняя веранда: качель кокон, диван, 2 кресла и столик.Задняя веранда: мангал и 2 кресла.Залог при заселении (на случай порчи имущества) 2000₽', 'ВС-ЧТ: 11 200 ₽/СУТКИ', 'ПТ, СБ: 14 450 ₽/СУТКИ', 'http://localhost:3000/30.png', 'a_frame'),
(3, 'Summer house', 1, 0, 17, 'Вместимость: до 4 человек. Доп. гость: 500 ₽.Гостиная: шкаф-купе, раскладной диван, журнальный и барный стол с барными стульями и телевизор.Спальная зона: двуспальная кровать и кресло. В кухонной зоне есть большой гарнитур, холодильник, микроволновка, чайник + посуда.Санузел: большая душевая кабина, раковина, унитаз + тапочки, гели, шампуни, мыло, комплект полотенец, фен.Передняя веранда: качель кокон, диван, 2 кресла и столик.Задняя веранда: мангал и 2 кресла.Залог при заселении (на случай порчи имущества) 2000₽', 'ВС-ЧТ: 11 200 ₽/СУТКИ', 'ПТ, СБ: 14 450 ₽/СУТКИ', 'http://localhost:3000/50.png', 'summer'),
(4, 'Barn house', 4, 0, 60, 'Вместимость: до 4 человек. Доп. гость: 500 ₽.Гостиная: шкаф-купе, раскладной диван, журнальный и барный стол с барными стульями и телевизор.Спальная зона: двуспальная кровать и кресло. В кухонной зоне есть большой гарнитур, холодильник, микроволновка, чайник + посуда.Санузел: большая душевая кабина, раковина, унитаз + тапочки, гели, шампуни, мыло, комплект полотенец, фен.Передняя веранда: качель кокон, диван, 2 кресла и столик.Задняя веранда: мангал и 2 кресла.Залог при заселении (на случай порчи имущества) 2000₽', 'ВС-ЧТ: 11 200 ₽/СУТКИ', 'ПТ, СБ: 14 450 ₽/СУТКИ', 'http://localhost:3000/89.png', 'barn');

-- --------------------------------------------------------

--
-- Структура таблицы `quest_form`
--

CREATE TABLE `quest_form` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `quest_form`
--

INSERT INTO `quest_form` (`id`, `date`, `name`, `email`, `text`) VALUES
(2, '2023-12-06 14:13:57', 'иван', 'flafycat5@gmail.com', 'кещкещвщевщшеевщшщзве'),
(3, '2023-12-09 20:56:56', 'хуй', 'korovina.27052005@mail.ru', 'idgaf'),
(4, '2024-03-21 13:51:22', 'Анастасия', 'flafycat5@gmail.com', 'uhrfehugrfgrfu'),
(5, '2024-03-21 20:43:05', 'В', 'Nexus.c@yandex.ru', 'x');

-- --------------------------------------------------------

--
-- Структура таблицы `social_net`
--

CREATE TABLE `social_net` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `social_net`
--

INSERT INTO `social_net` (`id`, `img`) VALUES
(1, 'http://localhost:3000/vk.svg'),
(2, 'http://localhost:3000/inst.svg'),
(3, 'http://localhost:3000/twitter.svg'),
(4, 'http://localhost:3000/whatsapp.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `typeHouse`
--

CREATE TABLE `typeHouse` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `typeHouse`
--

INSERT INTO `typeHouse` (`id`, `img`, `title`, `text`) VALUES
(1, 'http://localhost:3000/13.png', 'Hytte', 'Если вы когда-либо путешествовали в Норвегию или другие северные страны, вы, возможно, заметили, что многие люди там имеют свои собственные дома в окружении природы. Один из наиболее популярных типов домов в этих регионах - это hytte. В этой статье мы рассмотрим, что такое hytte, какие особенности у этого типа дома, и почему он становится все более популярным.\r\nHytte - это норвежское слово, которое означает дом в горах или на природе. Это тип дома, который обычно используется как место для отдыха или убежища от городской суеты. Hytte обычно строится в окружении природы, вдали от шума и суеты городской жизни. Он может быть как небольшим и простым, так и большим и роскошным, в зависимости от предпочтений владельца.\r\nОдин из главных аспектов hytte - это его местоположение. Эти дома строятся вдали от городов, обычно на берегу озера или реки, в горах или в лесистых районах. Это позволяет владельцам наслаждаться красотой природы, проводить время на свежем воздухе и наслаждаться спокойствием и покоем.'),
(2, 'http://localhost:3000/30.png', 'A-frame house', 'Если вы ищете необычный и стильный дом, который привлекает внимание с первого взгляда, то тип дома A-frame может быть идеальным выбором для вас. Этот уникальный стиль дома, который напоминает букву \"А\", обладает своей уникальной эстетикой и привлекает внимание своей необычной формой. В этой статье мы рассмотрим историю, особенности и преимущества данного типа дома.\r\nA-frame, или \"шалаш\", как его часто называют, имеет давнюю историю. Впервые такой тип дома появился в Европе в XVI веке и был широко распространен в горных районах. Однако наибольшую популярность A-frame приобрел в Северной Америке в середине XX века. Это было связано с его простой и доступной конструкцией, которую можно было легко возвести самостоятельно.\r\nОсновной характеристикой A-frame является его треугольная форма, которая придает ему уникальность.'),
(3, 'http://localhost:3000/50.png', 'Summer house', 'Лето - это время, когда мы стремимся насладиться природой и провести больше времени на свежем воздухе. В этом контексте дом, специально предназначенный для летнего отдыха и отдыха на природе, становится все более популярным. Такой тип дома называется \"summer house\".\r\n\"Summer house\" - это место, где можно уйти от городской суеты и насладиться спокойствием и красотой природы. Это дом, который создан для того, чтобы привнести лет'),
(4, 'http://localhost:3000/89.png', 'Barn house', 'Барн-хаус, или \"дом в стиле амбара\", - это уникальный и оригинальный тип дома, который стал популярным в современной архитектуре. Он сочетает в себе элементы сельской и городской жизни, создавая уютное пространство для жизни и отдыха.\r\nБарн-хаус внешне напоминает старинные амбары или конюшни с их характерными деревянными стенами и крышами из металлочерепицы. Однако, внутренняя планировка и дизайн дома могут быть совершенно современными и функциональными.\r\nБарн-хаусы обычно имеют просторные гостиные с высокими потолками и большими окнами, что позволяет максимально использовать естественное освещение. Кухня и столовая зоны могут быть объединены в одно пространство, создавая уютную и функциональную область для приготовления пищи и общения.');

-- --------------------------------------------------------

--
-- Структура таблицы `type_of_house`
--

CREATE TABLE `type_of_house` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `type_of_house`
--

INSERT INTO `type_of_house` (`id`, `img`, `type`) VALUES
(1, 'http://localhost:3000/type_1.jpg', 'Hytte'),
(2, 'http://localhost:3000/type_2.jpg', 'A-frame house'),
(3, 'http://localhost:3000/type_3.jpg', 'Summer house'),
(4, 'http://localhost:3000/type_4.jpg', 'Barn house');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `activs`
--
ALTER TABLE `activs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `img_prices`
--
ALTER TABLE `img_prices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_desc`
--
ALTER TABLE `main_desc`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_gallery`
--
ALTER TABLE `main_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `quest_form`
--
ALTER TABLE `quest_form`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `social_net`
--
ALTER TABLE `social_net`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `typeHouse`
--
ALTER TABLE `typeHouse`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type_of_house`
--
ALTER TABLE `type_of_house`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `activs`
--
ALTER TABLE `activs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `img_prices`
--
ALTER TABLE `img_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `main_desc`
--
ALTER TABLE `main_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `main_gallery`
--
ALTER TABLE `main_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `quest_form`
--
ALTER TABLE `quest_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `social_net`
--
ALTER TABLE `social_net`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `typeHouse`
--
ALTER TABLE `typeHouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `type_of_house`
--
ALTER TABLE `type_of_house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
