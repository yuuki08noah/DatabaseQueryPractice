select * from Book;
select * from Customer;
select * from Orders;

# 김연아 고객의 전화번호
select phone from Customer where name='김연아';
# 모든 도서의 이름과 가격
select bookname, price from Book;
# 모든 도서의 도서번호, 도서이름, 출판사, 가격
select * from Book;
# 모든 출판사를 검색
select distinct publisher from Book;
# 도서를 출고하는 출판사의 총 개수
select count(distinct publisher) from Book;

# 도서번호가 1인 도서의 이름
select bookname from Book where bookid=1;

# 가격이 20000원 미만인 도서를 검색
select * from Book where Book.price < 20000;

# 가격이 10000원 이상 20000원 이하인 도서를 검색
select * from Book where price >= 10000 AND price <= 20000;
select * from Book where price between 10000 and 20000;

# 출판사가 굿스포츠 혹은 대한미디어인 도서를 검색
select * from Book where publisher='굿스포츠' or publisher='대한미디어';
select * from Book where publisher like '굿스포츠' or publisher like '대한미디어';
select * from Book where publisher in('굿스포츠','대한미디어');

# 축구의 역사를 출간한 출판사
select publisher from Book where Book.bookname like '축구의 역사';

# 도서이름에 축구가 포함된 출판사를 검색
select publisher from Book where bookname like '%축구%';

# 도서이름의 왼쪽 두 번째 위치에 '구'라는 문자열을 갖는 도서를 검색
select bookname from Book where bookname like '_구%';

# 축구에 관한 도서 중 가격이 20000원 이상인 도서를 검색
select * from Book where bookname like '%축구%' and Book.price >= 20000;

# 성이 김씨인 고객의 이름과 주소
select name, address from Customer where name like '김%';

# 성이 김 씨고 이름이 아로 끝나는 고객의 이름과 주소
select name, address from Customer where name like '김%아';

# 출판사가 굿스포츠 혹은 대한미디어인 도서를 검색
select * from Book where publisher in ('굿스포츠', '대한미디어');

# 2020년 7월 4일에서 7일 사이에 주문 받은 도서의 주문번호
select orderid from Orders where orderdate between '2020-07-04' and '2020-07-07';

# 2020년 7월 4일에서 7일 사이에 주문 받은 도서를 제외한 주문번호
select orderid from Orders where orderdate not between '2020-07-04' and '2020-07-07';

# 도서를 이름순으로 검색
select bookname from Book order by bookname;

# 도서를 가격순으로 검색하고 가격이 같음 이름순으로 검색
select price, bookname from Book order by price, bookname;

# 도서를 가격의 내림차순으로 검색하고 가격이 같다면 출판사의 오름차순으로 검색
select * from Book order by price desc, publisher asc;

# 모든 고객이 주문한 도서의 총 판매액
select sum(Orders.saleprice) as 총매출 from Orders;

# 고객번호 1의 고객의 총 구매액
select sum(Orders.saleprice) from Orders where Orders.custid = 1;

# 고객번호 2의 고객이 주문한 도서의 총 판매액
select sum(Orders.saleprice) from Orders where Orders.custid = 2;

# 모든 고객이 주문한 도서의 총 판매액, 평균값, 최저가, 최고가
select sum(Orders.saleprice), avg(Orders.saleprice), min(Orders.saleprice), max(Orders.saleprice) from Orders;

# 모든 판매 건수
select count(*) from Orders;