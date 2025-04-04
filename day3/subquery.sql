# - 가장 비싼 도서의 이름을 보이시오.
select bookname from Book where price = (
    select max(price) from Book
    )

# - 도서를 구매한 적이 있는 고객의 이름을 검색하시오.
select name from Customer where custid in(select custid from Orders)

# - 주문하지 않은 고객의 이름 (부속질의 사용)

# - 박지성이 구매하지 않은 도서의 이름
# - 대한미디어에서 출판한 도서를 구매한 고객의 이름을 보이시오.
# - 출판사별로 출판사의 평균 도서 가격보다 비싼 도서를 구하시오.
# - 주문이 있는 고객의 이름과 주소를 보이시오.(exists)

