<h1>DeveloperProject (첫 번째 팀 프로젝트)</h1> 
Spring Framework를 활용한 가스 요금 조회 및 납부 내역 관리 시스템입니다.

<h2>프로젝트 구조</h2>
<code>
DeveloperProject
├─ src/main/java                        # Java 소스 파일 디렉토리
│  ├─ com.developer.controller          # 컨트롤러 패키지
│  │  ├─ MainController.java           # 메인 페이지 및 요금 조회 컨트롤러
│  │  ├─ MemberController.java         # 회원 관리 컨트롤러 (로그인, 회원가입 등)
│  │  └─ PaymentReceiptController.java # 납부 내역 관리 컨트롤러
│  ├─ com.developer.dao                # 데이터 액세스 객체 패키지
│  ├─ com.developer.dto                # 데이터 전송 객체 패키지
│  └─ com.developer.service            # 비즈니스 로직 서비스 패키지
│
├─ src/main/resources                   # 리소스 파일 디렉토리
│  ├─ com.developer.dao                # MyBatis 매퍼 XML 파일 디렉토리
│  │  ├─ BillingMapper.xml            # 요금 조회 관련 SQL 매핑
│  │  ├─ MemberMapper.xml             # 회원 관리 관련 SQL 매핑
│  │  └─ PaymentReceiptMapper.xml     # 납부 내역 관련 SQL 매핑
│  └─ log4j.xml                       # 로깅 설정 파일
│
└─ src/main/webapp                      # 웹 애플리케이션 루트 디렉토리
   ├─ WEB-INF                          # 웹 설정 디렉토리
   │  ├─ spring                        # 스프링 설정 파일 디렉토리
   │  ├─ views                         # JSP 뷰 파일 디렉토리
   │  │  ├─ detail                    # 상세 페이지 뷰
   │  │  │  ├─ PaymentReceipt.jsp    # 납부 내역 출력 페이지
   │  │  │  └─ view_details.jsp      # 상세 정보 조회 페이지
   │  │  ├─ main                      # 메인 페이지 관련 뷰
   │  │  │  └─ main.jsp              # 메인 페이지
   │  │  └─ member                    # 회원 관련 뷰
   │  │      ├─ alertPrint.jsp       # 알림 메시지 출력 페이지
   │  │      ├─ header.jsp           # 공통 헤더 페이지
   │  │      ├─ join.jsp             # 회원가입 페이지
   │  │      └─ login.jsp            # 로그인 페이지
   │  └─ web.xml                      # 웹 애플리케이션 설정 파일
   └─ resources                        # 정적 리소스 디렉토리 (CSS, JS, 이미지 등)
</code>

<h2>주요 기능</h2>
<ul>
   <li>회원 관리
      <ul>
         <li>회원가입: 아이디 중복 체크, 유효성 검증</li>
         <li>로그인/로그아웃: 세션 관리, Remember Me 쿠키 지원</li>
         <li>회원탈퇴: 계정 삭제 및 세션 정리</li>
      </ul>
   </li>
   <li>요금 조회
      <ul>
         <li>사용계약번호와 청구년월 기준 요금 조회</li>
         <li>사용량, 공급가액, 부가세, 연체료 등 상세 내역 표시</li>
         <li>Chart.js를 활용한 요금 구성 시각화</li>
      </ul>
   </li>
   <li>납부 내역 관리
      <ul>
         <li>연간 납부 내역 조회 및 출력</li>
         <li>고객명, 계약번호 기반 조회</li>
         <li>납부확인서 PDF 출력</li>
      </ul>
   </li>
</ul>

<h2>기술 스택</h2>
<ol>
  <li>Backend
    <ul>
      <li>Spring MVC</li>
      <li>MyBatis</li>
      <li>MySQL (데이터베이스)</li>
      <li>Java 11</li>
    </ul>
  </li>
  <li>Frontend
    <ul>
      <li>JSP</li>
      <li>HTML/CSS/JavaScript</li>
      <li>jQuery(ajax사용)</li>
      <li>Chart.js (차트 시각화)</li>
    </ul>
  </li>
  <li>ETC
    <ul>
      <li>Apache Tomcat (서버)</li>
      <li>Maven(의존성 관리)</li>
      <li>Spring Tool Suite 3(사용 툴)</li>
      <li>Visual Studio Code(사용 툴)</li>
    </ul>
  </li>
</ol>

<h2>맡은 역할</h2>
<ul>
   <li>박하경
      <ul>
         <li>백엔드</li>
         <li>회원가입/로그인</li>
         <li>DB와 Java연결</li>
      </ul>
   </li>
  <li>김한올
      <ul>
         <li>프론트엔드</li>
         <li>전반적인 디자인 담당</li>
        <li>요금 조회 페이지 담당</li>
      </ul>
   </li>
  <li>김휘원
      <ul>
        <li>DataBase</li>
        <li>데이터베이스 설계함으로써 프로젝트 방향성 제시</li>
      </ul>
   </li>
</ul>
