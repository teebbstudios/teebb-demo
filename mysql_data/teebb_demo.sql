-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-12-29 23:52:42
-- 服务器版本： 5.7.30
-- PHP 版本： 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `teebb_demo`
--

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `comment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` smallint(6) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bundle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_field_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lft` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `comment__field_comment_body`
--

CREATE TABLE `comment__field_comment_body` (
  `id` int(11) NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delta` int(11) NOT NULL,
  `field_value` longtext COLLATE utf8mb4_unicode_ci,
  `entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bool_top` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `content`
--

INSERT INTO `content` (`id`, `title`, `type_alias`, `status`, `slug`, `bool_top`, `created_at`, `updated_at`, `author_id`) VALUES
(1, '菜单演示', 'article', 'publish', 'cai-dan-yan-shi', 0, '2020-12-29 18:27:05', '2020-12-29 18:27:05', 1),
(2, '页面代码块的缓存', 'article', 'publish', 'ye-mian-dai-ma-kuai-de-huan-cun', 0, '2020-12-29 19:30:10', '2020-12-29 19:30:10', 1),
(3, '内容列表区块（Block）', 'article', 'publish', 'nei-rong-lie-biao-qu-kuai-block', 0, '2020-12-29 19:40:15', '2020-12-29 19:40:15', 1),
(4, '某分类下的内容列表区块（Block）', 'article', 'publish', 'mou-fen-lei-xia-de-nei-rong-lie-biao-qu-kuai-block', 0, '2020-12-29 19:58:34', '2020-12-29 19:58:34', 1),
(5, '前台页面搜索框区块（Block）', 'article', 'publish', 'qian-tai-ye-mian-sou-suo-kuang-qu-kuai-block', 0, '2020-12-29 20:02:07', '2020-12-29 20:08:44', 1),
(6, '使用twig全局变量获取系统设置', 'article', 'publish', 'shi-yong-twigquan-ju-bian-liang-huo-qu-xi-tong-she-zhi', 0, '2020-12-29 20:20:19', '2020-12-29 20:20:19', 1);

-- --------------------------------------------------------

--
-- 表的结构 `content__field_article_body`
--

CREATE TABLE `content__field_article_body` (
  `id` int(11) NOT NULL,
  `text_body_value` longtext COLLATE utf8mb4_unicode_ci,
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `formatter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delta` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `content__field_article_body`
--

INSERT INTO `content__field_article_body` (`id`, `text_body_value`, `summary`, `formatter`, `types`, `delta`, `entity_id`) VALUES
(1, '<p>在TEEBB控制台，已添加用于测试的自定义菜单别名&ldquo;test_menu_show&rdquo;，使用如下代码显示此菜单。</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">使用此命令显示test_menu_show，以KnpMenuBundle的默认样式显示\r\n{{ knp_menu_render(\'test_menu_show\') }}</code></pre>\r\n\r\n<p><iframe align=\"left\" class=\"w-100\" frameborder=\"0\" height=\"150\" scrolling=\"no\" src=\"http://demo.teebb.com/show-menu\"></iframe></p>\r\n\r\n<div style=\"page-break-after:always\"><span style=\"display:none\">&nbsp;</span></div>\r\n\r\n<p>我们可以修改菜单的显示样式，当前页面的主导航显示样式使用了如下代码：</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">{{ knp_menu_render(\'main_nav\', {template: \'menu/main_nav.html.twig\'}) }}</code></pre>\r\n\r\n<div style=\"page-break-after:always\"><span style=\"display:none\">&nbsp;</span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>更多使用方法请参考<a href=\"https://symfony.com/doc/current/bundles/KnpMenuBundle/index.html\"> KnpMenuBundle 文档</a></p>\r\n</blockquote>', '在TEEBB控制台，已添加用于测试的自定义菜单别名“test_menu_show”，使用如下方法显示此菜单。', 'full_html', 'article', 0, 1),
(2, '<p>TEEBB在前台页面的twig模板中添加了teebb_core全局对象，这个对象可以对twig变量进行缓存。</p>\r\n\r\n<p>参看代码：</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// \\Teebb\\CoreBundle\\Twig\\GlobalVariables\r\n    \r\n/**\r\n * 用于页面部分数据缓存\r\n * @param string $cacheKey\r\n * @param mixed $data\r\n * @return mixed\r\n */\r\npublic function getCache(string $cacheKey, $data = null)\r\n{\r\n    return $this-&gt;cacheAdapter-&gt;get($cacheKey,\r\n        function (ItemInterface $item) use ($data) {\r\n            $item-&gt;expiresAfter($this-&gt;expireAfter);\r\n            return $data;\r\n        });\r\n}\r\n\r\n/**\r\n * @param string $cacheKey\r\n * @return bool\r\n * @throws InvalidArgumentException\r\n */\r\npublic function hasCache(string $cacheKey): bool\r\n{\r\n    return $this-&gt;cacheAdapter-&gt;hasItem($cacheKey);\r\n}</code></pre>\r\n\r\n<p>在前台Twig模板中这样调用：</p>\r\n\r\n<pre>\r\n<code class=\"language-http\">{% if teebb_core.hasCache(\'main_nav\') %}\r\n    {% set main_nav = teebb_core.cache(\'main_nav\') %}\r\n{% else %}\r\n    {% set mainNavHtml = knp_menu_render(\'main_nav\', {template: \'menu/main_nav.html.twig\'}) %}\r\n    {% set main_nav = teebb_core.cache(\'main_nav\', mainNavHtml) %}\r\n{% endif %}\r\n\r\n//在页面中合适的位置显示main_nav\r\n{{ main_nav|raw }}</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>缓存的过期时间在<u>config/packages/teebb_core.yaml</u>文件中进行修改。默认86400秒（24小时）。</p>\r\n\r\n<p>参看文档： <a href=\"https://doc.teebb.com/web/#/5?page_id=37\">TEEBB的其他设置</a></p>\r\n</blockquote>', 'TEEBB在前台页面的twig模板中添加了teebb_core全局对象，这个对象可以对twig变量进行缓存。\r\n\r\n参看代码：\r\n\r\n\r\n// \\Teebb\\CoreBundle\\Twig\\GlobalVariables\r\n    \r\n/**\r\n * 用于页面部分数据缓存\r\n *...', 'full_html', 'article', 0, 2),
(3, '<p>TEEBB使用了SonataBlockBundle，内置了一些展示列表的block_type。我们使用如下代码可获取&ldquo;文章&rdquo;类型的内容列表：</p>\r\n\r\n<pre>\r\n<code>{{ sonata_block_render({type:\'teebb.core.block.contents\'}, {\r\n    limit: 5,\r\n    order: {createdAt: \'DESC\'},\r\n    criteria: {typeAlias: \'article\'}\r\n}) }}</code></pre>\r\n\r\n<p><iframe class=\"w-100\" frameborder=\"1\" height=\"150\" scrolling=\"yes\" src=\"http://demo.teebb.com/article-list\"></iframe></p>\r\n\r\n<div style=\"page-break-after:always\"><span style=\"display:none\">&nbsp;</span></div>\r\n\r\n<p>使用Symfony命令行查看完整参数配置：</p>\r\n\r\n<pre>\r\n<code>symfony console debug:sonata:block</code></pre>\r\n\r\n<pre>\r\n<code>#block的type及设置列表\r\n&gt;&gt; teebb.core.block.contents  \r\n    #要搜索的EntityType的Entity，默认搜索内容，也可搜索分类、用户等其他EntityType的Entity\r\n    entity_class                  \"Teebb\\\\CoreBundle\\\\Entity\\\\Content\" \r\n    label                         \"\" #块标题\r\n    translation_domain            \"messages\" #translation_domain\r\n    limit                         5 #数量限制\r\n    #默认的block模板\r\n    template                      \"@TeebbCore\\/blocks\\/last_contents.html.twig\" \r\n    criteria                      [] #过滤条件\r\n    order                         [] #结果排序\r\n    exclude                       [] #排除条件\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>', 'TEEBB使用了SonataBlockBundle，内置了一些展示列表的block_type。我们使用如下代码可获取&ldquo;文章&rdquo;类型的内容列表：\r\n\r\n\r\n{{ sonata_block_render({type:\'teebb.core.block.conte...', 'full_html', 'article', 0, 3),
(4, '<p>如果您的内容类型引用了分类字段，想要单独显示某分类的内容列表，使用如下区块（block）:</p>\r\n\r\n<pre>\r\n<code>{{ sonata_block_render({type:\'teebb.core.block.contents_in_taxonomy\'}, {\r\n    taxonomy_slug: courseTaxonnomy.slug,\r\n    get_children: false,\r\n    bundle: \'content\',\r\n    order: {id: \'ASC\'},\r\n    template: \'blocks/course-detail-list.html.twig\'\r\n}) }}</code></pre>\r\n\r\n<p>现对设置参数做下注释：&nbsp;</p>\r\n\r\n<pre>\r\n<code>symfony console debug:sonata:block</code></pre>\r\n\r\n<pre>\r\n<code>#获取某分类词汇下的内容列表\r\n&gt;&gt; teebb.core.block.contents_in_taxonomy\r\n    entity_class #EntityType对应的Entity，默认搜索内容，也可搜索分类等\r\n    label #区块标题\r\n    get_children #是否获取子分类的内容\r\n    limit #数量限制\r\n    translation_domain \r\n    order #结果排序\r\n    template\r\n    taxonomy_slug #要搜索的分类的别名\r\n    bundle #当前分类字段所属的EntityType bundle，用于查找字段表名\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>', '如果您的内容类型引用了分类字段，想要单独显示某分类的内容列表，使用如下区块（block）:\r\n\r\n\r\n{{ sonata_block_render({type:\'teebb.core.block.contents_in_taxonomy\'}, {\r\n    taxonomy_sl...', 'full_html', 'article', 0, 4),
(5, '<p>参考：<a href=\"https://www.teebb.com/types/blog/contents\">TEEBB.com动态列表页面右侧搜索框</a>&nbsp; ，该框使用了搜索框区块（Block）</p>\r\n\r\n<p><img src=\"http://127.0.0.1:8000/uploads/2020-12-29/image-5feb1ad0f0cfb.png\" style=\"height:96px; width:400px\" /></p>\r\n\r\n<p>代码如下：</p>\r\n\r\n<pre>\r\n<code>&lt;div class=\"search pb-4\"&gt;\r\n    {{ sonata_block_render({type:\'teebb.core.block.search\'}, {\r\n        route: \'search\',\r\n        template: \'blocks/search_form.html.twig\'\r\n    }) }}\r\n&lt;/div&gt;</code></pre>\r\n\r\n<p>对此block设置参数如下解释：</p>\r\n\r\n<pre>\r\n<code>symfony console debug:sonata:block</code></pre>\r\n\r\n<pre>\r\n<code>#搜索框block类型\r\n&gt;&gt; teebb.core.block.search\r\n    label                         \"\" #区块标题\r\n    translation_domain            \"messages\" \r\n    template                      \"@TeebbCore\\/blocks\\/search_form.html.twig\" #默认显示模板\r\n    #请替换，区块将表单参数追加并跳转到此搜索页面Route，此行必须！！！\r\n    route                         \"teebb_content_index\" \r\n    form_class                    \"\" #表单样式类\r\n    property                      \"title\" #关键字输入框的name属性对应的值\r\n    extra                         {\"fields\":[]} #是否要搜索字段表的内容，此处应填写字段别名fieldAlias\r\n\r\n</code></pre>\r\n\r\n<blockquote>\r\n<p>使用效果请参考：<a href=\"https://www.teebb.com/types/blog/contents\">https://www.teebb.com/types/blog/contents</a></p>\r\n\r\n<p>此区块必须提前设置好搜索页面！！！</p>\r\n</blockquote>', '参考：TEEBB.com动态列表页面右侧搜索框&nbsp; ，该框使用了搜索框区块（Block）\r\n\r\n&nbsp;', 'full_html', 'article', 0, 5),
(6, '<p>TEEBB在前台页面的twig模板中添加了teebb_core全局对象，这个对象可以获取全局系统设置，可将获取到的设置信息存入缓存。</p>\r\n\r\n<p>参考代码：</p>\r\n\r\n<pre>\r\n<code>// \\Teebb\\CoreBundle\\Twig\\GlobalVariables\r\n/**\r\n * 使用此方法获取TEEBB的设置值\r\n * @param string $optionName\r\n * @return mixed\r\n * @throws InvalidArgumentException\r\n */\r\npublic function getOptionValue(string $optionName)\r\n{\r\n    if (!$this-&gt;hasCache($optionName)) {\r\n        $optionRepo = $this-&gt;entityManager-&gt;getRepository(Option::class);\r\n        $option = $optionRepo-&gt;findOneBy([\'optionName\' =&gt; $optionName]);\r\n\r\n        return $this-&gt;getCache($optionName, $option-&gt;getOptionValue());\r\n    }\r\n    return $this-&gt;getCache($optionName);\r\n}</code></pre>\r\n\r\n<p><img src=\"http://127.0.0.1:8000/uploads/2020-12-29/image-5feb1d68d8b0e.png\" style=\"float:left; height:206px; margin:10px; width:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>TEEBB使用<u>\\Teebb\\CoreBundle\\Entity\\Option</u>类对一些设置参数进行管理。</p>\r\n\r\n<p>默认对左图的&ldquo;系统设置&rdquo;使用\\Teebb\\CoreBundle\\Entity\\Options\\System类进行管理，并将此类以key-value的形式存储，key值为：system</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>参考如下代码：</p>\r\n\r\n<pre>\r\n<code>{% set system = teebb_core.optionValue(\'system\') %}\r\n</code></pre>\r\n\r\n<p>可获取system值，并在取值时进行了缓存。参看上文getOptionValue方法。</p>', 'TEEBB在前台页面的twig模板中添加了teebb_core全局对象，这个对象可以获取全局系统设置，可将获取到的设置信息存入缓存。\r\n\r\n参考代码：\r\n\r\n\r\n// \\Teebb\\CoreBundle\\Twig\\GlobalVariables\r\n/**\r\n * 使用此方法获取T...', 'full_html', 'article', 0, 6);

-- --------------------------------------------------------

--
-- 表的结构 `content__field_page_body`
--

CREATE TABLE `content__field_page_body` (
  `id` int(11) NOT NULL,
  `text_body_value` longtext COLLATE utf8mb4_unicode_ci,
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `formatter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delta` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `ext_translations`
--

CREATE TABLE `ext_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `ext_translations`
--

INSERT INTO `ext_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(1, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'label', '1', 'Article'),
(2, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'description', '1', 'Use articles to post content about time, such as news, news or logs.'),
(3, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'label', '2', 'Page'),
(4, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'description', '2', 'Use basic pages for your static content, such as the \"About Us\" page.'),
(5, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'label', '3', 'Basic tags'),
(6, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'description', '3', 'Basic tags.'),
(7, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'label', '4', 'Basic comment'),
(8, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'description', '4', 'Basic Comment.'),
(9, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'label', '5', 'Basic User'),
(10, 'en_US', 'Teebb\\CoreBundle\\Entity\\Types\\Types', 'description', '5', 'Basic User.'),
(11, 'en_US', 'Teebb\\CoreBundle\\Entity\\Formatter', 'name', '1', 'Full Html'),
(12, 'en_US', 'Teebb\\CoreBundle\\Entity\\Formatter', 'name', '2', 'Standard Html'),
(13, 'en_US', 'Teebb\\CoreBundle\\Entity\\Formatter', 'name', '3', 'Restrict Html');

-- --------------------------------------------------------

--
-- 表的结构 `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `bundle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delta` int(11) NOT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `fields`
--

INSERT INTO `fields` (`id`, `bundle`, `type_alias`, `field_label`, `field_alias`, `field_type`, `delta`, `settings`) VALUES
(1, 'content', 'article', '正文', 'article_body', 'textFormatSummary', 0, 'O:79:\"Teebb\\CoreBundle\\Entity\\Fields\\Configuration\\TextFormatSummaryItemConfiguration\":8:{s:7:\"\0*\0type\";s:4:\"text\";s:19:\"\0*\0showSummaryInput\";b:0;s:18:\"\0*\0summaryRequired\";b:0;s:16:\"\0*\0summaryLength\";i:140;s:14:\"\0*\0description\";N;s:11:\"\0*\0required\";b:0;s:8:\"\0*\0limit\";i:1;s:12:\"\0*\0showLabel\";b:0;}'),
(2, 'content', 'page', '正文', 'page_body', 'textFormatSummary', 0, 'O:79:\"Teebb\\CoreBundle\\Entity\\Fields\\Configuration\\TextFormatSummaryItemConfiguration\":8:{s:7:\"\0*\0type\";s:4:\"text\";s:19:\"\0*\0showSummaryInput\";b:0;s:18:\"\0*\0summaryRequired\";b:0;s:16:\"\0*\0summaryLength\";i:140;s:14:\"\0*\0description\";N;s:11:\"\0*\0required\";b:0;s:8:\"\0*\0limit\";i:1;s:12:\"\0*\0showLabel\";b:1;}'),
(3, 'comment', 'comment', '评论', 'comment_body', 'text', 0, 'O:72:\"Teebb\\CoreBundle\\Entity\\Fields\\Configuration\\TextFormatItemConfiguration\":5:{s:7:\"\0*\0type\";s:4:\"text\";s:14:\"\0*\0description\";N;s:11:\"\0*\0required\";b:0;s:8:\"\0*\0limit\";i:1;s:12:\"\0*\0showLabel\";b:1;}'),
(4, 'user', 'people', '头像', 'avatar', 'referenceImage', 0, 'O:76:\"Teebb\\CoreBundle\\Entity\\Fields\\Configuration\\ReferenceImageItemConfiguration\":13:{s:7:\"\0*\0type\";s:6:\"entity\";s:11:\"\0*\0allowExt\";a:1:{i:0;s:12:\"jpg,jpeg,png\";}s:12:\"\0*\0uploadDir\";s:39:\"[date.Year~\"-\"~date.month~\"-\"~date.day]\";s:10:\"\0*\0maxSize\";N;s:16:\"\0*\0maxResolution\";N;s:16:\"\0*\0minResolution\";N;s:9:\"\0*\0useAlt\";b:1;s:14:\"\0*\0altRequired\";b:1;s:11:\"\0*\0useTitle\";b:0;s:14:\"\0*\0description\";N;s:11:\"\0*\0required\";b:0;s:8:\"\0*\0limit\";i:1;s:12:\"\0*\0showLabel\";b:1;}');

-- --------------------------------------------------------

--
-- 表的结构 `file_managed`
--

CREATE TABLE `file_managed` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `file_managed`
--

INSERT INTO `file_managed` (`id`, `file_name`, `origin_file_name`, `file_size`, `file_mime`, `file_path`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'image-5feb1ad0f0cfb.png', 'image.png', 8830, 'image/png', '2020-12-29/image-5feb1ad0f0cfb.png', '2020-12-29 20:02:24', '2020-12-29 20:02:24', 1),
(2, 'image-5feb1d4daa92a.png', 'image.png', 63583, 'image/png', '2020-12-29/image-5feb1d4daa92a.png', '2020-12-29 20:13:01', '2020-12-29 20:13:01', 1),
(3, 'image-5feb1d68d8b0e.png', 'image.png', 44726, 'image/png', '2020-12-29/image-5feb1d68d8b0e.png', '2020-12-29 20:13:28', '2020-12-29 20:13:28', 1);

-- --------------------------------------------------------

--
-- 表的结构 `formatter`
--

CREATE TABLE `formatter` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ck_editor_config` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_settings` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `formatter`
--

INSERT INTO `formatter` (`id`, `name`, `alias`, `ck_editor_config`, `filter_settings`) VALUES
(1, '完整的HTML', 'full_html', 'full', 'a:0:{}'),
(2, '基本的HTML', 'standard_html', 'standard', 'a:1:{s:10:\"strip_tags\";a:2:{s:11:\"filter_name\";b:1;s:12:\"filter_extra\";s:121:\"<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd> <h2> <h3> <h4> <h5> <h6> <p> <br> <span> <img>\";}}'),
(3, '严格的HTML', 'restricted_html', 'basic', 'a:1:{s:10:\"strip_tags\";a:2:{s:11:\"filter_name\";b:1;s:12:\"filter_extra\";s:99:\"<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd> <h2> <h3> <h4> <h5> <h6>\";}}');

-- --------------------------------------------------------

--
-- 表的结构 `formatters_groups`
--

CREATE TABLE `formatters_groups` (
  `formatter_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `formatters_groups`
--

INSERT INTO `formatters_groups` (`formatter_id`, `group_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `group_permissions` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `ckeditor_config` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `group_alias`, `group_roles`, `group_permissions`, `ckeditor_config`) VALUES
(1, '超级管理员', 'super_admin', 'a:2:{i:0;s:16:\"ROLE_SUPER_ADMIN\";i:1;s:10:\"ROLE_ADMIN\";}', 'a:0:{}', 'full'),
(2, '注册用户', 'user', 'a:0:{}', 'a:1:{s:10:\"permission\";a:2:{i:0;s:11:\"file_upload\";i:1;s:17:\"file_owner_delete\";}}', 'standard');

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `menu_alias`, `description`) VALUES
(1, '主菜单', 'main_nav', '前台页面主导航菜单'),
(2, '测试菜单的显示', 'test_menu_show', '本菜单用于前台页面的代码展示。您可以随意修改查看效果。');

-- --------------------------------------------------------

--
-- 表的结构 `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `parent_menu_item_id` int(11) DEFAULT NULL,
  `tree_root` int(11) DEFAULT NULL,
  `menu_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_title` longtext COLLATE utf8mb4_unicode_ci,
  `menu_title_attr` longtext COLLATE utf8mb4_unicode_ci,
  `lft` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menu_item`
--

INSERT INTO `menu_item` (`id`, `parent_menu_item_id`, `tree_root`, `menu_link`, `menu_title`, `menu_title_attr`, `lft`, `lvl`, `rgt`, `priority`, `menu_id`) VALUES
(1, NULL, 1, NULL, NULL, NULL, 1, 0, 20, 0, 1),
(2, 1, 1, '/', '首页', '首页', 2, 1, 3, 0, 1),
(3, NULL, 3, NULL, NULL, NULL, 1, 0, 12, 0, 2),
(4, 3, 3, 'http://www.baidu.com', '百度', '百度', 2, 1, 7, 0, 2),
(5, 3, 3, 'http://cn.bing.com', '必应', '必应', 8, 1, 9, 1, 2),
(6, 3, 3, 'https://www.google.com', '谷歌', '谷歌', 10, 1, 11, 2, 2),
(7, 4, 3, 'map.baidu.com', '百度地图', '百度地图', 5, 2, 6, 0, 2),
(8, 4, 3, 'wenku.baidu.com', '百度文库', '百度文库', 3, 2, 4, 1, 2),
(9, 16, 1, '/content/cai-dan-yan-shi', '菜单演示', '菜单演示', 17, 2, 18, 0, 1),
(10, 16, 1, '/content/ye-mian-dai-ma-kuai-de-huan-cun', '页面代码块的缓存', '页面代码块的缓存', 15, 2, 16, 1, 1),
(11, 15, 1, '/content/nei-rong-lie-biao-qu-kuai-block', '内容列表区块（Block）', '内容列表区块（Block）', 9, 2, 10, 0, 1),
(12, 15, 1, '/content/mou-fen-lei-xia-de-nei-rong-lie-biao-qu-kuai-block', '某分类下的内容列表区块（Block）', '某分类下的内容列表区块（Block）', 7, 2, 8, 1, 1),
(13, 15, 1, '/content/qian-tai-ye-mian-sou-suo-kuang-qu-kuai-block', '前台页面搜索框区块（Block）', '前台页面搜索框区块（Block）', 5, 2, 6, 2, 1),
(14, 16, 1, '/content/shi-yong-twigquan-ju-bian-liang-huo-qu-xi-tong-she-zhi', '使用twig全局变量获取系统设置', '使用twig全局变量获取系统设置', 13, 2, 14, 2, 1),
(15, 1, 1, '#', 'TEEBB提供的BLOCK', 'TEEBB提供的BLOCK', 4, 1, 11, 1, 1),
(16, 1, 1, '#', 'TWIG功能', 'TWIG功能', 12, 1, 19, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `options`
--

INSERT INTO `options` (`id`, `option_type`, `option_name`, `option_label`, `option_value`) VALUES
(1, 'Teebb\\CoreBundle\\Form\\Type\\Options\\SystemType', 'system', '系统', 'O:38:\"Teebb\\CoreBundle\\Entity\\Options\\System\":4:{s:48:\"\0Teebb\\CoreBundle\\Entity\\Options\\System\0siteName\";s:5:\"Teebb\";s:50:\"\0Teebb\\CoreBundle\\Entity\\Options\\System\0siteSlogan\";N;s:49:\"\0Teebb\\CoreBundle\\Entity\\Options\\System\0siteEmail\";s:15:\"admin@admin.com\";s:47:\"\0Teebb\\CoreBundle\\Entity\\Options\\System\0icpCode\";N;}');

-- --------------------------------------------------------

--
-- 表的结构 `taxonomy`
--

CREATE TABLE `taxonomy` (
  `id` int(11) NOT NULL,
  `parent_taxonomy_id` int(11) DEFAULT NULL,
  `tree_root` int(11) DEFAULT NULL,
  `taxonomy_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `bundle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `types`
--

INSERT INTO `types` (`id`, `bundle`, `label`, `type_alias`, `description`) VALUES
(1, 'content', '文章', 'article', '使用文章发布有关时间的内容，如消息，新闻或日志。'),
(2, 'content', '基本页面', 'page', '对您的静态内容使用基本页面，比如“关于我们”页面。'),
(3, 'taxonomy', '基本分类', 'tags', '基本的分类'),
(4, 'comment', '默认评论', 'comment', '默认的评论'),
(5, 'user', '用户类型', 'people', '默认的用户类型');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `account_non_expired` tinyint(1) NOT NULL,
  `credentials_non_expired` tinyint(1) NOT NULL,
  `account_non_locked` tinyint(1) NOT NULL,
  `roles` json NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `username_canonical`, `email`, `email_canonical`, `password`, `enabled`, `account_non_expired`, `credentials_non_expired`, `account_non_locked`, `roles`, `salt`, `last_login`, `created_at`, `updated_at`) VALUES
(1, '权', '伟伟', 'admin', 'admin', 'admin@teebb.com', 'admin@example.com', '$argon2id$v=19$m=65536,t=4,p=1$jZQPRoOeGuBMRJ6+50YTNQ$Nq8nz8eDW8HeTTcB+Z92hI+ltZ45NJh3EY4o/xjpHx4', 1, 1, 1, 1, '[\"ROLE_SUPER_ADMIN\", \"ROLE_ADMIN\"]', NULL, '2020-12-29 11:41:42', '2020-12-29 11:35:58', '2020-12-29 18:36:30');

-- --------------------------------------------------------

--
-- 表的结构 `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user__field_avatar`
--

CREATE TABLE `user__field_avatar` (
  `id` int(11) NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delta` int(11) NOT NULL,
  `reference_file_id` int(11) DEFAULT NULL,
  `entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user__field_avatar`
--

INSERT INTO `user__field_avatar` (`id`, `alt`, `title`, `width`, `height`, `types`, `delta`, `reference_file_id`, `entity_id`) VALUES
(1, NULL, NULL, NULL, NULL, 'people', 0, NULL, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CF675F31B` (`author_id`),
  ADD KEY `IDX_9474526CA977936C` (`tree_root`),
  ADD KEY `IDX_9474526C727ACA70` (`parent_id`);

--
-- 表的索引 `comment__field_comment_body`
--
ALTER TABLE `comment__field_comment_body`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F38F1D9581257D5D` (`entity_id`);

--
-- 表的索引 `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FEC530A9989D9B62` (`slug`),
  ADD KEY `IDX_FEC530A9F675F31B` (`author_id`);

--
-- 表的索引 `content__field_article_body`
--
ALTER TABLE `content__field_article_body`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C55A88F81257D5D` (`entity_id`);

--
-- 表的索引 `content__field_page_body`
--
ALTER TABLE `content__field_page_body`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C8807FC81257D5D` (`entity_id`);

--
-- 表的索引 `ext_translations`
--
ALTER TABLE `ext_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  ADD KEY `translations_lookup_idx` (`locale`,`object_class`,`foreign_key`);

--
-- 表的索引 `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7EE5E388CACBFD6F` (`field_alias`);

--
-- 表的索引 `file_managed`
--
ALTER TABLE `file_managed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_559629D3F675F31B` (`author_id`);

--
-- 表的索引 `formatter`
--
ALTER TABLE `formatter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BA50A5595E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_BA50A559E16C6B94` (`alias`);

--
-- 表的索引 `formatters_groups`
--
ALTER TABLE `formatters_groups`
  ADD PRIMARY KEY (`formatter_id`,`group_id`),
  ADD KEY `IDX_DACC44F1BD37C9ED` (`formatter_id`),
  ADD KEY `IDX_DACC44F1FE54D947` (`group_id`);

--
-- 表的索引 `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7D053A9370C048F3` (`menu_alias`);

--
-- 表的索引 `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D754D550CCD7E912` (`menu_id`),
  ADD KEY `IDX_D754D550CADA12CE` (`parent_menu_item_id`),
  ADD KEY `IDX_D754D550A977936C` (`tree_root`);

--
-- 表的索引 `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D035FA8764D0FDCA` (`option_type`),
  ADD UNIQUE KEY `UNIQ_D035FA87B62DD4E5` (`option_name`),
  ADD UNIQUE KEY `UNIQ_D035FA87374CED80` (`option_label`);

--
-- 表的索引 `taxonomy`
--
ALTER TABLE `taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FD12B83DFE7BF486` (`parent_taxonomy_id`),
  ADD KEY `IDX_FD12B83DA977936C` (`tree_root`);

--
-- 表的索引 `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5F37A13BA76ED395` (`user_id`);

--
-- 表的索引 `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_59308930EA750E8` (`label`),
  ADD UNIQUE KEY `UNIQ_59308930EF60EC63` (`type_alias`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- 表的索引 `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_FF8AB7E0A76ED395` (`user_id`),
  ADD KEY `IDX_FF8AB7E0FE54D947` (`group_id`);

--
-- 表的索引 `user__field_avatar`
--
ALTER TABLE `user__field_avatar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88E631D494BBDCC4` (`reference_file_id`),
  ADD KEY `IDX_88E631D481257D5D` (`entity_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `comment__field_comment_body`
--
ALTER TABLE `comment__field_comment_body`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `content__field_article_body`
--
ALTER TABLE `content__field_article_body`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `content__field_page_body`
--
ALTER TABLE `content__field_page_body`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ext_translations`
--
ALTER TABLE `ext_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `file_managed`
--
ALTER TABLE `file_managed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `formatter`
--
ALTER TABLE `formatter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `taxonomy`
--
ALTER TABLE `taxonomy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `user__field_avatar`
--
ALTER TABLE `user__field_avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 限制导出的表
--

--
-- 限制表 `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9474526CA977936C` FOREIGN KEY (`tree_root`) REFERENCES `comment` (`id`) ON DELETE CASCADE;

--
-- 限制表 `formatters_groups`
--
ALTER TABLE `formatters_groups`
  ADD CONSTRAINT `FK_DACC44F1BD37C9ED` FOREIGN KEY (`formatter_id`) REFERENCES `formatter` (`id`);

--
-- 限制表 `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `FK_D754D550A977936C` FOREIGN KEY (`tree_root`) REFERENCES `menu_item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D754D550CADA12CE` FOREIGN KEY (`parent_menu_item_id`) REFERENCES `menu_item` (`id`) ON DELETE CASCADE;

--
-- 限制表 `taxonomy`
--
ALTER TABLE `taxonomy`
  ADD CONSTRAINT `FK_FD12B83DA977936C` FOREIGN KEY (`tree_root`) REFERENCES `taxonomy` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FD12B83DFE7BF486` FOREIGN KEY (`parent_taxonomy_id`) REFERENCES `taxonomy` (`id`) ON DELETE CASCADE;

--
-- 限制表 `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `FK_FF8AB7E0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
