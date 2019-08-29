ALTER TABLE user MODIFY id bigint AUTO_INCREMENT;
ALTER TABLE article MODIFY id bigint AUTO_INCREMENT;
ALTER TABLE follow MODIFY id bigint AUTO_INCREMENT;
ALTER TABLE hash_tag MODIFY id bigint AUTO_INCREMENT;

insert into file_info(file_name, file_path) values('sample_img_01.jpg', '/Users/kimheejoo/Desktop/miniprojects-2019/src/main/resources/static/images/default');
insert into file_info(file_name, file_path) values('eastjun_profile.jpg', '/Users/kimheejoo/Desktop/miniprojects-2019/src/main/resources/static/images/default');
insert into file_info(file_name, file_path) values('sample_img_02.jpg', '/Users/kimheejoo/Desktop/miniprojects-2019/src/main/resources/static/images/default');


insert into user(email, nick_name, password, user_name, created_date, modified_date) values('qwe@naver.com', 'qwe', 'qweqwe', 'qwe', CURRENT_TIME(), CURRENT_TIME());
insert into user(email, nick_name, password, user_name, created_date, modified_date) values('qwe2@naver.com', 'qwe2', 'qweqwe', 'qwe2', CURRENT_TIME(), CURRENT_TIME());

insert into follow(followed, follower,created_date, modified_date) values(1, 2,CURRENT_TIME(), CURRENT_TIME());


insert into article(contents, author, created_date, modified_date, fileinfo_id) values('1#qwe#qqq#qww#qee', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('2#qwe#qqq', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('3qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('4#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('5#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('6#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('7#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('8#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('9#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('10#qwe',1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('11#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('12#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('13#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('14#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('15#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('16#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('17#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('18#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('19#qwe', 1, CURRENT_TIME(), CURRENT_TIME(), 1);

insert into article(contents, author, created_date, modified_date, fileinfo_id) values('1#hello', 2, CURRENT_TIME(), CURRENT_TIME(), 2);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('2#hello', 2, CURRENT_TIME(), CURRENT_TIME(), 2);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('3#hello', 2, CURRENT_TIME(), CURRENT_TIME(), 2);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('4#hello', 2, CURRENT_TIME(), CURRENT_TIME(), 2);
insert into article(contents, author, created_date, modified_date, fileinfo_id) values('5#hello', 2, CURRENT_TIME(), CURRENT_TIME(), 2);


insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 1,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qqq', 1,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qww', 1,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qee', 1,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 2,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qqq', 2,CURRENT_TIME(), CURRENT_TIME());

insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 4,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 5,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 6,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 7,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 8,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 9,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 10,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 11,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 12,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 13,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 14,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 15,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 16,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 17,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 18,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#qwe', 19,CURRENT_TIME(), CURRENT_TIME());

insert into hash_tag(keyword, article_id, created_date, modified_date) values('#hello', 20,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#hello', 21,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#hello', 22,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#hello', 23,CURRENT_TIME(), CURRENT_TIME());
insert into hash_tag(keyword, article_id, created_date, modified_date) values('#hello', 24,CURRENT_TIME(), CURRENT_TIME());