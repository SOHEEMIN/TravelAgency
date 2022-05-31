## TravelAgency
### 프로젝트 기획안

#### 작성일 : 2022. 05. 31
#### 작성자 : 민소희
#### 프로젝트 명 : 포르투갈 포르투 여행사 사이트 만들기
#### 기획 의도: 
1. 프로그램 설명: 포르투갈의 떠오르고 있는 관광지 중 하나인 포르투. 
이 지역의 자유여행상품을 전문적으로 판매하는 여행사를 구현해보려 한다.


2. 제작 사유: 유럽여행갔던 당시 포르투 관광스팟에 대한 정보가 적어 많은 볼거리를 놓치고 돌아와 아쉬웠다. 
많은 분들께 포르투의 아름다움을 소개하며, 알찬 관광상품을 모아둔 사이트를 만들고 싶어 
제작하게 되었다.


3. 기능 요약: 여행상품 조회, 예약, 예약 확인, 맞춤여행 신청, 지도API 활용, 장바구니, 질문 및 커뮤니티 게시판

#### 벤치마킹
**1. 이오스여행사:**

**특징:**

(1) 항공사, 호텔, 현지투어를 옵션으로 추가하고 뺄 수 있게 설정하여 고객의 입맛에 맞게 선택할 수 있게 하였음.

예시)항공사: 대한항공, 아시아나 중 택 1 / 호텔: 그랜드 하얏트, 힐튼 중 택 1 / 현지투어: 와이너리투어, 나타투어 중 택 1 등

(2) 맞춤여행 기능제공. 어떤 여행상품을 원하는지 선택하여 관리자에게 제출. 추후에 관리자가 확인 후 이에 맞는 맞춤상품을 제작하여 제공하는 시스템

예시) 가족여행, 허니문여행, 단체 여행 중 택1 / 희망 여행일자, 여행인원 입력, 희망 교통편 및 희망 상품가격 입력 후 제출

#### 주요 기능
**1. 고객용**
- 회원가입 (정규식표현, ID중복확인, 비밀번호 확인적용)
- 로그인, 로그아웃(일반 로그인 및 소셜 로그인)
- 관광상품조회 및 검색 (페이징 처리)
- 장바구니 (삭제 및 추가 기능)
- 희망일자 금액 조회
- 예약 기능
- 예약 확인
- 맞춤여행 신청 (글 수정기능 추가)
- 질문 및 커뮤니티 게시판 글쓰기
- 회원정보 수정 및 탈퇴 (비밀번호 입력 시 수정 및 탈퇴 가능)
- 구글지도로 포르투갈 한국 대사관 위치 확인 가능

**2. 관리자용**

- 관광상품 등록
- 상품 수정 및 삭제
- 맞춤여행 신청에 답변하기
- 회원 탈퇴

**3. 기타**
