
/* Drop Tables */

DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE wishlist CASCADE CONSTRAINTS;
DROP TABLE goods CASCADE CONSTRAINTS;
DROP TABLE goods_category CASCADE CONSTRAINTS;
DROP TABLE orders_status CASCADE CONSTRAINTS;
DROP TABLE USER_INFO CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE goods
(
	goods_idx number(5) NOT NULL,
	goods_category_idx number(5) NOT NULL,
	goods_name varchar2(500) NOT NULL,
	goods_content varchar2(1000) NOT NULL,
	goods_price varchar2(50) NOT NULL,
	goods_file varchar2(500),
	goods_date date NOT NULL,
	PRIMARY KEY (goods_idx)
);


CREATE TABLE goods_category
(
	goods_category_idx number(5) NOT NULL,
	goods_category_name varchar2(50) NOT NULL,
	PRIMARY KEY (goods_category_idx)
);


CREATE TABLE orders
(
	orders_idx number(5) NOT NULL,
	orders_status_idx number(5) NOT NULL,
	user_idx number NOT NULL,
	goods_idx number(5) NOT NULL,
	orders_phone  varchar2(50) NOT NULL,
	orders_Address varchar2(100) NOT NULL,
	orders_Quantity number(5) NOT NULL,
	PRIMARY KEY (orders_idx)
);


CREATE TABLE orders_status
(
	orders_status_idx number(5) NOT NULL,
	orders_status_name varchar2(50),
	PRIMARY KEY (orders_status_idx)
);


CREATE TABLE review
(
	review_idx number(5) NOT NULL,
	goods_idx number(5) NOT NULL,
	user_idx number NOT NULL,
	review_content varchar2(500) NOT NULL,
	review_date date NOT NULL,
	PRIMARY KEY (review_idx)
);


CREATE TABLE USER_INFO
(
	user_idx number NOT NULL,
	user_name varchar2(50) NOT NULL,
	user_id varchar2(100) NOT NULL,
	user_pw varchar2(100) NOT NULL,
	user_email varchar2(50),
	PRIMARY KEY (user_idx)
);


CREATE TABLE wishlist
(
	wishlist_idx number(5) NOT NULL,
	user_idx number NOT NULL,
	goods_idx number(5) NOT NULL,
	wishlist_date date NOT NULL,
	PRIMARY KEY (wishlist_idx)
);



/* Create Foreign Keys */

ALTER TABLE orders
	ADD FOREIGN KEY (goods_idx)
	REFERENCES goods (goods_idx)
;


ALTER TABLE review
	ADD FOREIGN KEY (goods_idx)
	REFERENCES goods (goods_idx)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (goods_idx)
	REFERENCES goods (goods_idx)
;


ALTER TABLE goods
	ADD FOREIGN KEY (goods_category_idx)
	REFERENCES goods_category (goods_category_idx)
;


ALTER TABLE orders
	ADD FOREIGN KEY (orders_status_idx)
	REFERENCES orders_status (orders_status_idx)
;


ALTER TABLE orders
	ADD FOREIGN KEY (user_idx)
	REFERENCES USER_INFO (user_idx)
;


ALTER TABLE review
	ADD FOREIGN KEY (user_idx)
	REFERENCES USER_INFO (user_idx)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (user_idx)
	REFERENCES USER_INFO (user_idx)
;

-- TOPMENU
insert into goods_category values(1,'OUTER');
insert into goods_category values(2,'TOP');
insert into goods_category values(3,'SHIRT');
insert into goods_category values(4,'KNIT');
insert into goods_category values(5,'PANTS');
insert into goods_category values(6,'SHOES');

-- SEQUENCE
create sequence GOODS_SEQ
start with 0
increment by 1
minvalue 0;



