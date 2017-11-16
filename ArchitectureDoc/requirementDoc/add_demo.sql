/*==============================================================*/
/* add t_building_mall_category  demo                           */
/*==============================================================*/

/*level=0*/
insert into t_building_mall_category values (null, '所有分类', 1,0);

/*level=1*/
insert into t_building_mall_category values (null, '住宅家具', 1,1);
insert into t_building_mall_category values (null, '家居饰品', 1,1);
insert into t_building_mall_category values (null, '五金电工', 1,1);

/*level=2  属于住宅家具的*/
insert into t_building_mall_category values (null, '床类', 2,2);
insert into t_building_mall_category values (null, '柜类', 2,2);
insert into t_building_mall_category values (null, '床垫', 2,2);


/*level=2  属于家居饰品的*/
insert into t_building_mall_category values (null, '布艺软饰', 3,2);
insert into t_building_mall_category values (null, '床上用品', 3,2);
insert into t_building_mall_category values (null, '家饰', 3,2);

/*level=2  属于五金电工的*/
insert into t_building_mall_category values (null, '卫浴五金', 4,2);
insert into t_building_mall_category values (null, '电子电工', 4,2);
insert into t_building_mall_category values (null, '五金辅料', 4,2);


/*level=3  属于床类的*/
insert into t_building_mall_category values (null, '木质床', 5,3);
insert into t_building_mall_category values (null, '皮质床', 5,3);
insert into t_building_mall_category values (null, '布艺床', 5,3);

/*level=3  属于柜类的*/
insert into t_building_mall_category values (null, '电视柜', 6,3);
insert into t_building_mall_category values (null, '衣柜', 6,3);
insert into t_building_mall_category values (null, '储物柜', 6,3);

/*level=3  属于床垫的*/
insert into t_building_mall_category values (null, '乳胶床垫', 7,3);
insert into t_building_mall_category values (null, '弹簧床垫', 7,3);
insert into t_building_mall_category values (null, '棕床垫', 7,3);

/*level=3  属于布艺软饰的*/
insert into t_building_mall_category values (null, '窗帘窗纱', 8,3);
insert into t_building_mall_category values (null, '地毯地垫', 8,3);
insert into t_building_mall_category values (null, '抱枕靠垫', 8,3);

/*level=3  属于床上用品的*/
insert into t_building_mall_category values (null, '床品套件', 9,3);
insert into t_building_mall_category values (null, '婚庆床品', 9,3);
insert into t_building_mall_category values (null, '床头', 9,3);

/*level=3  属于家饰的*/
insert into t_building_mall_category values (null, '家具摆件', 10,3);
insert into t_building_mall_category values (null, '墙面装饰', 10,3);
insert into t_building_mall_category values (null, '工艺品', 10,3);


/*==============================================================*/
/* add t_building_mall_brands  demo                           */
/*==============================================================*/

insert into t_building_mall_brands values (null, '迪美斯家具', '',3);
insert into t_building_mall_brands values (null, '马克罗瓷砖', '',3);
insert into t_building_mall_brands values (null, '飞利浦', '',3);
insert into t_building_mall_brands values (null, '大自然地板', '',3);
insert into t_building_mall_brands values (null, '一木一世界', '',3);

/*==============================================================*/
/* add t_building_store  demo                           */
/*==============================================================*/

insert into t_building_store values (null, '千树国际·法木 北二环店 ',1,'陕西 西安','云水一路','710000','18691453575','','安宁','029-2861100','','','' );
insert into t_building_store values (null, '千树国际·法木 南二环店 ',1,'陕西 西安','云水二路','710000','18791453575','','安宁1','029-2861101','','','' );
insert into t_building_store values (null, '千树国际·法木 西二环店 ',1,'陕西 西安','云水三路','710000','18791453575','','安宁3','029-2861102','','','' );
insert into t_building_store values (null, '千树国际·法木 东二环店 ',1,'陕西 西安','云水三路','710000','18791453575','','安宁4','029-2861103','','','' );

/*==============================================================*/
/* add t_building_mall_user  demo                           */
/*==============================================================*/
insert into t_building_mall_user values (null, 'Eason', 'heyilong','3','4.9','Eason-he','哈哈','M','1991-04-19','篮球/吉他');
insert into t_building_mall_user values (null, 'Allen', 'anning','2','4.8','Allen-An','嘻嘻','M','2001-01-01','篮球/吉他/充气娃娃');


/*==============================================================*/
/* add t_building_mall_user_location  demo                           */
/*==============================================================*/

insert into t_building_mall_user_location values (null, 1, '何益龙','陕西省西安市高新区','云水一路中软国际','18691453575','','18691453575@163.com','Y');

insert into t_building_mall_user_location values (null, 2, '安宁','陕西省西安市高新区','云水一路中软国际','18611111111','','18611111111@163.com','Y');

insert into t_building_mall_user_location values (null, 2, '安宁','陕西省西安市高新区','唐延公馆','18611111111','','18611111111@163.com','Y');


/*==============================================================*/
/* add t_building_mall_user_safe  demo                           */
/*==============================================================*/

insert into t_building_mall_user_safe values (null, 'heyilong', '18691453575@163.com','18691453575','123654','何益龙','61050219914536645',1);

insert into t_building_mall_user_safe values (null, 'anning', '18611111111@163.com','18611111111','564321','安宁','61050219914536647',2);


/*==============================================================*/
/* add t_building_production  demo                           */
/*==============================================================*/
insert into t_building_production values (null, '千树法木 卧室 床B311 床头柜 B230 纯实木 环保时尚 精致',1,0,16882.00, 11672.00,'5',16,'','',0,14,1);

insert into t_building_production values (null, '光明家具 笑脸床 1简约中式 18-15106-180 北美红橡 2100*1820*1051实体',2,0,13882.00, 8672.00,'5',20,'','',100.00,14,1);

insert into t_building_production values (null, '光明家具 鸳鸯戏水床 118-15205-180 北美红橡 空体/箱体 2111*1940*1085',3,0,13882.00, 6672.00,'4.9',21,'','',180.00,14,1);


insert into t_building_production values (null, '海时达 皮床 A815 板木 豆沙色 温馨时尚 浪漫',3,0,9600.00, 4300.00,'5',21,'','',180.00,15,1);











