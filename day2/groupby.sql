# 고객별로 주문한 도서의 총 수량과 총 판매액을 구하시오
select custid, count(bookid), sum(saleprice) from Orders group by custid;

# 가격이 8000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총수량을 구하시오. 단, 두권 이상 구매한 고객만 구한다.
select custid, count(bookid), sum(saleprice) from Orders where saleprice >= 8000 group by custid having count(*) >= 2;
