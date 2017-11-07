/*==============================================================*/
/* database: building_mall                                */
/*==============================================================*/
DROP DATABASE IF EXISTS building_mall;
create database if not exists building_mall default charset utf8 COLLATE utf8_general_ci;

/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/11/7 22:23:54                           */
/*==============================================================*/


drop table if exists t_building_mall_brands;

drop table if exists t_building_mall_category;

drop table if exists t_building_mall_user;

drop table if exists t_building_mall_user_location;

drop table if exists t_building_mall_user_safe;

drop table if exists t_building_production;

drop table if exists t_building_production_appraise;

drop table if exists t_building_production_consulting;

drop table if exists t_building_production_deal_logs;

drop table if exists t_building_store;

/*==============================================================*/
/* Table: t_building_mall_brands                                */
/*==============================================================*/
create table t_building_mall_brands
(
   brd_id               int(10) not null auto_increment,
   brd_name             varchar(50),
   brd_pic_link         varchar(200),
   brd_f_ctg_id         int(10),
   brd_like_num         int(10),
   primary key (brd_id)
);

/*==============================================================*/
/* Table: t_building_mall_category                              */
/*==============================================================*/
create table t_building_mall_category
(
   ctg_id               int(10) not null auto_increment,
   ctg_name             varchar(50),
   ctg_fid              int(10),
   ctg_level            int(3),
   primary key (ctg_id)
);

/*==============================================================*/
/* Table: t_building_mall_user                                  */
/*==============================================================*/
create table t_building_mall_user
(
   user_id              int(10) not null auto_increment,
   user_name            varchar(100) not null,
   user_pwd             varchar(100) not null,
   user_level           varchar(3),
   user_credit          varchar(10),
   user_login_name      varchar(100),
   user_mick_name       varchar(100),
   user_sex             varchar(2) not null,
   user_birth_date      date not null,
   user_hobbit          varchar(100),
   primary key (user_id)
);

/*==============================================================*/
/* Table: t_building_mall_user_location                         */
/*==============================================================*/
create table t_building_mall_user_location
(
   ult_id               int(10) not null auto_increment,
   ult_f_user_id        int(10),
   ult_receiver_name    varchar(20) not null,
   ult_location         varchar(100) not null,
   ult_location_details varchar(100) not null,
   ult_tell_num         varchar(30) not null,
   ult_tell_num1        varchar(30),
   ult_email            varchar(30),
   ult_is_defalt        varchar(1) not null,
   primary key (ult_id)
);

/*==============================================================*/
/* Table: t_building_mall_user_safe                             */
/*==============================================================*/
create table t_building_mall_user_safe
(
   usf_id               int(10) not null auto_increment,
   usf_pwd              varchar(100) not null,
   usf_email            varchar(100),
   usf_tell_num         varchar(20),
   usf_dibet_pwd        varchar(100),
   usf_true_name        varchar(30),
   usf_true_id          varchar(30),
   usf_f_user_id        int(10),
   primary key (usf_id)
);

/*==============================================================*/
/* Table: t_building_production                                 */
/*==============================================================*/
create table t_building_production
(
   prd_id               int(10) not null auto_increment,
   prd_name             varchar(100),
   prd_f_store_id       int(10),
   prd_f_brd_id         int(10),
   prd_market_price     double,
   prd_shop_price       double,
   prd_grade            varchar(10),
   prd_stock            int(10),
   prd_pic_link         varchar(150),
   prd_details          varchar(1000),
   prd_freight          double,
   prd_f_ctg_id         int(10),
   prd_min_del_num      int,
   primary key (prd_id)
);

/*==============================================================*/
/* Table: t_building_production_appraise                        */
/*==============================================================*/
create table t_building_production_appraise
(
   aps_id               int(10) not null auto_increment,
   aps_levle            int(10) not null,
   aps_time             date not null,
   aps_user_id          int(10) not null,
   aps_content          varchar(1000),
   aps_pic_link         varchar(200),
   aps_deal_id          int(10) not null,
   aps_f_prd_id         int(10) not null,
   primary key (aps_id)
);

/*==============================================================*/
/* Table: t_building_production_consulting                      */
/*==============================================================*/
create table t_building_production_consulting
(
   cslt_id              int(10) not null auto_increment,
   cslt_question        varchar(1000) not null,
   clst_quester         int(10),
   cslt_anwser          varchar(1000),
   cslt_anserner        int(10),
   cslt_f_category_id   int(10),
   cslt_f_prd_id        int(10),
   primary key (cslt_id)
);

/*==============================================================*/
/* Table: t_building_production_deal_logs                       */
/*==============================================================*/
create table t_building_production_deal_logs
(
   deal_id              int(10) not null,
   deal_user_id         int(10),
   deal_price           double not null,
   deal_activity        varchar(100),
   deal_number          int,
   deal_time            date,
   deal_f_prd_id        int(10),
   primary key (deal_id)
);

/*==============================================================*/
/* Table: t_building_store                                      */
/*==============================================================*/
create table t_building_store
(
   store_id             int(10) not null auto_increment,
   store_name           varchar(100) not null,
   store_member_level   boolean not null,
   store_f_ctg_id       int(10),
   store_location       varchar(100) not null,
   store_location_deltails varchar(100) not null,
   store_zip_code       varchar(20),
   store_tel_num        varchar(20) not null,
   store_tel_num1       varchar(20),
   store_link_man       varchar(20),
   store_fax_num        varchar(20),
   store_link           varchar(100),
   store_details        varchar(500),
   store_pic_link       varchar(200),
   primary key (store_id)
);

alter table t_building_mall_brands add constraint FK_Reference_1 foreign key (brd_f_ctg_id)
      references t_building_mall_category (ctg_id) on delete restrict on update restrict;

alter table t_building_mall_user_location add constraint FK_Reference_3 foreign key (ult_f_user_id)
      references t_building_mall_user (user_id) on delete restrict on update restrict;

alter table t_building_mall_user_safe add constraint FK_Reference_2 foreign key (usf_f_user_id)
      references t_building_mall_user (user_id) on delete restrict on update restrict;

alter table t_building_production add constraint FK_brands_production_ref foreign key (prd_f_brd_id)
      references t_building_mall_brands (brd_id) on delete restrict on update restrict;

alter table t_building_production add constraint FK_category_production_ref foreign key (prd_f_ctg_id)
      references t_building_mall_category (ctg_id) on delete restrict on update restrict;

alter table t_building_production add constraint FK_store_production_ref foreign key (prd_f_store_id)
      references t_building_store (store_id) on delete restrict on update restrict;

