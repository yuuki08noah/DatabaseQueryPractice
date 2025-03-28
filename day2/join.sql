# 고객과 고객의 주문에 관한 데이터를 모두 보이시오
select * from Customer c join Orders o on c.custid = o.custid;

# 고객과 고객의 주문에 관한 데이터를 고객번호 순으로 정렬하여 보이시오
select * from Customer join Orders on Customer.custid = Orders.custid order by Orders.custid;

# 고객 이름과 고객이 주문한 도서의 판매가격을 검색
select C.name, O.saleprice from Customer C join yellow.Orders O on C.custid = O.custid;

# 고객의 이름과 고객별 구매액
select C.name, sum(O.saleprice) from Customer C join yellow.Orders O on C.custid = O.custid group by C.name;

# 고객의 이름과 고객별로 주문한 모든 도서의 총 판매액을 구하고, 고객별로 정렬하시오
select C.name, sum(O.saleprice) from Customer C join yellow.Orders O on C.custid = O.custid group by C.name order by C.name;

# 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름
select C.name from Customer C join Orders O on C.custid = O.custid group by C.name having avg(O.saleprice) > (select avg(saleprice) from Orders);

# 박지성이 구매한 도서의 출판사 수
select count(distinct Book.publisher) from Orders join Customer on Orders.custid = Customer.custid join Book on Orders.bookid = Book.bookid where Customer.name = '박지성';

# 박지성이 구매한 도서의 이름, 정가, 판매가, 가격 차이
select bookname, price, saleprice, (price - saleprice) as 가격차이 from Orders join Customer on Orders.custid = Customer.custid join Book on Orders.bookid = Book.bookid where Customer.name = '박지성';

# 고객의 이름과 고객이 주문한 도서의 이름
select name, bookname from Orders join Customer on Orders.custid = Customer.custid join Book on Orders.bookid = Book.bookid;

# 가격이 20000원인 도서를 주문한 고객의 이름과 도서의 이름
select name, bookname from Orders join Customer on Orders.custid = Customer.custid join Book on Orders.bookid = Book.bookid where saleprice=20000;

# 도서를 구매하지 않은 고객을 포함하여 고객의 이름과 고객이 주문한 도서의 판매가격을 구하시오
select C.name, O.saleprice from Customer C left outer join yellow.Orders O on C.custid = O.custid;