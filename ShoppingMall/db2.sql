
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

create sequence ORDERS_SEQ
start with 0
increment by 1
minvalue 0;

create sequence USER_SEQ
start with 0
increment by 1
minvalue 0;

create sequence WISH_SEQ
start with 0
increment by 1
minvalue 0;

create sequence REVIEW_SEQ
start with 0
increment by 1
minvalue 0;

--?????? ?????? INSERT

INSERT INTO ORDERS_STATUS VALUES(1,'?????? ?????????');
INSERT INTO ORDERS_STATUS VALUES(2,'?????? ??????');
INSERT INTO ORDERS_STATUS VALUES(3,'?????? ??? ');
INSERT INTO ORDERS_STATUS VALUES(4,'?????? ??????');

-- ORDERS INSERT

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,1,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,2,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,2,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,2,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,3,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,3,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,1,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,2,'a','a',1);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,1,23,3,'a','a',1);

-- GOODS TABLE ADD COLUMN GOODS_SELL(????????? ??????)

ALTER TABLE GOODS ADD goods_sell number(20);

-- goods ????????? ????????? ??????

ALTER TABLE GOODS MODIFY goods_sell NOT NULL;
ALTER TABLE GOODS MODIFY goods_price number(20);

--???????????? ????????? 

INSERT INTO GOODS VALUES(GOODS_SEQ.NEXTVAL,1,'?????????','d',100,'test.jpg',sysdate,0);
INSERT INTO GOODS VALUES(GOODS_SEQ.NEXTVAL,1,'?????????','d',100,'test.jpg','2010-01-01',0);
INSERT INTO GOODS VALUES(GOODS_SEQ.NEXTVAL,1,'?????????','d',1000000,'test.jpg',sysdate,0);

commit;

--?????? ????????? ????????? ??????

CREATE TABLE goods_size
(
	goods_size_idx number(5) NOT NULL,
	goods_idx number(5) NOT NULL,
	goods_size_num number(5) NOT NULL,
	goods_size_name  varchar2(10) NOT NULL,
	goods_size_length number(10) NOT NULL,
	goods_size_shoulder number(10) NOT NULL,
	goods_size_chest number(10) NOT NULL,
	goods_size_sleeve number(10) NOT NULL,
	PRIMARY KEY (goods_size_idx)
);

--orders ????????? ??????

ALTER TABLE orders ADD orders_date date;
ALTER TABLE orders ADD orders_size varchar2(10) not null;
ALTER TABLE orders ADD orders_review char(5) not null;
ALTER TABLE orders MODIFY orders_review VARCHAR2(5);

-- GOODS_SIZE ????????? ??????

insert into goods_size values(5,180,'L',1,1,1,1,1,10);
insert into goods_size values(6,180,'XL',2,2,2,2,2,10);
insert into goods_size values(7,180,'XXL',3,3,3,3,3,10);
insert into goods_size values(8,180,'XXXL',4,4,4,4,4,10);

--goods_size ?????? ??????

ALTER TABLE goods_size ADD goods_size_stock number(10) not null;

--review ????????? ?????? ??????
ALTER TABLE review ADD goods_size varchar2(10) not null;