# 用户表的建立
CREATE TABLE IF NOT EXISTS _user (
  id      BIGINT(7)          NOT NULL AUTO_INCREMENT,
  name    VARCHAR(50),
  created TIMESTAMP          DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

# 规则表的建立
CREATE TABLE IF NOT EXISTS _rule (
  id           BIGINT(7)    NOT NULL AUTO_INCREMENT,
  author       BIGINT(7)    ,

  url          VARCHAR(200) NOT NULL,
  table_name   VARCHAR(50)  NOT NULL,

  loop_rule    VARCHAR(200)          DEFAULT 'null',
  title_rule   VARCHAR(200)          DEFAULT 'null',
  content_rule VARCHAR(200)          DEFAULT 'null',
  url_rule     VARCHAR(200)          DEFAULT 'null',
  type_rule    VARCHAR(200)          DEFAULT 'null',
  created      TIMESTAMP             DEFAULT CURRENT_TIMESTAMP,
  type         VARCHAR(50)           DEFAULT 'article',       #爬取的类型
  name         VARCHAR(50)           NOT NULL ,
  PRIMARY KEY (id)
);

# 添加一个用户
INSERT INTO _user (name) VALUES (
  'antonio'
);

# 添加一条规则
INSERT INTO _rule (author, url, table_name, loop_rule, title_rule, content_rule, url_rule, type_rule, name) VALUES (
  1,
  'https://stackoverflow.com',
  'stackoverflow',
  '//div[contains(@class,''question-summary narrow'')]',
  'div/h3/a/text()',
  '//abc',
  'div/h3/a/@href',
  'div/div/a/text()',
  'stackoverflow'
);


INSERT INTO _rule (author, url, table_name, loop_rule, title_rule, content_rule, url_rule, type_rule, name) VALUES (
  2,
  'https://readhub.me',
  'readhub',
  '//div[contains(@class, ''topicItem'')]',
  'string(h2)',
  'div/div[contains(@class, ''bp-pure'')]/text()',
  'div/div/div/div/div/a/@href',
  'div/div/div/div/div/div/span/a/text()',
  'readhub'
);


INSERT INTO _rule (author, url, table_name, loop_rule, title_rule, content_rule, url_rule, type_rule, name) VALUES (
  3,
  'https://readhub.me/tech',
  'readhub_tech',
  '//div[contains(@class, ''timelineItem'')]',
  'string(h2)',
  'div/div[contains(@class, ''bp-pure'')]/text()',
  'h2/a/@href',
  'div/span/text()',
  'readhub 技术'
);

INSERT INTO _rule (author, url, table_name, loop_rule, title_rule, content_rule, url_rule, type_rule, name) VALUES (
  4,
  'https://readhub.me/blockchain',
  'readhub_blockchain',
  '//div[contains(@class, ''timelineItem'')]',
  'string(h2)',
  'div/div[contains(@class, ''bp-pure'')]/text()',
  'h2/a/@href',
  'div/span/text()',
  'readhub 区块链'
);

INSERT INTO _rule (author, url, table_name, loop_rule, title_rule, content_rule, url_rule, type_rule, name) VALUES (
  5,
  'https://www.v2ex.com',
  'v2ex',
  '//div[@class=''cell item'']',
  'table/tr/td[3]/span[@class=''item_title'']/a/text()',
  'string(//div[@class=''markdown_body''])',
  'table/tr/td[3]/span[@class=''item_title'']/a/@href',
  'table/tr/td[3]/span[@class=''small fade'']/a[@class=''node'']/text()',
  'v2ex 论坛'
);

INSERT INTO _rule (author, url, table_name, loop_rule, title_rule, content_rule, url_rule, type_rule, name) VALUES (
  6,
  'https://www.jianshu.com',
  'jianshu',
  '//li[contains (@id,''note'')]',
  'div[@class=''content'']/a[@class=''title'']/text()',
  'string(//div[@class=''show-content-free''])',
  'div[@class=''content'']/a[@class=''title'']/@href',
  'div[@class=''content'']/div[@class=''author'']/div[@class=''info'']/a[@class=''nickname'']/text()',
  '简书'
);

INSERT INTO _rule (author, url, table_name, loop_rule, title_rule, content_rule, url_rule, type_rule, name) VALUES (
  7,
  'http://www.zdfans.com',
  'zdfans',
  '//ul[@class=''excerpt'']/li',
  'h2/a/text()',
  'string(//div[@class=''entry''])',
  'h2/a/@href',
  'div[@class=''info'']/span[@class=''cat'']/a/text()',
  '软件共享'
);
