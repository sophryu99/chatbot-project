### NoSQL vs RDB



Not Only SQL - 관계형 데이터베이스와의 극명한 차이



**Dynamic Schema**

- Structure를 정의하지 않고도 documents, key values 등을 생성
- 각각의 다큐먼트는 유니크한 structure로 구성 가능
- 데이터베이스마다 다른 syntax
- 필드들을 지속적으로 추가 가능



**Scalability**

- SQL databases are vertically scalable - CPU, RAM or SSD
- NoSQL Databases are horizontally scalable - sharding / <u>partitioning</u>



**Partitioning**

![Screen Shot 2020-11-11 at 1.06.32 AM](/Users/sehwaryu/Library/Application Support/typora-user-images/Screen Shot 2020-11-11 at 1.06.32 AM.png)

- NoSQL : horizontal



**Vertical partitioning**

- 테이블을 더 작은 테이블들로 나누는 작업으로써 정규화 후에도 경우에 따라 칼럼을 나누는 파티션 작업을 함

  ![Screen Shot 2020-11-11 at 1.08.26 AM](/Users/sehwaryu/Library/Application Support/typora-user-images/Screen Shot 2020-11-11 at 1.08.26 AM.png)



**Horizontal partitioning**

- Schema / structure 자체를 카피하여 데이터 자체를 sharded key로 분리

  ![Screen Shot 2020-11-11 at 1.09.39 AM](/Users/sehwaryu/Library/Application Support/typora-user-images/Screen Shot 2020-11-11 at 1.09.39 AM.png)

-> 칼럼은 똑같은데 한 디비는 한 서버, 다른 디비는 다른 서버가 관리하는 시스템

-> Partition Key?

