# REVVIA
OTT 기반 리뷰영상 제공/추천 서비스
<img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/85d973ef-7bef-46d8-b594-01e7cdee168c" style="width:100%; height:500px"/>
<br><br><br><br>

## 프로젝트 소개
### 개발 목표
- 리뷰/결말/해석에 대한 여러 영상 서비스 구현
- 사용자가 찜한 영화 장르를 분석하여 취향에 맞는 영화 추천 서비스 구현
### 주제 선정 이유
- 코로나 이후 국내 OTT 시장의 증가
- 유튜브 15~20분짜리 조회 수가 증가, 설문조사 -> 긴 시간의 영상을 선호하지 않고 짧은 영상을 선호하며 요약 영상을 많이 보는 것을 알 수 있음
  | :------------: | :-------------: |
  |<img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/e690a1ce-e8bf-4943-b9c8-1d808d0e0fdb" /> | <img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/5e63e223-af5b-40b7-8731-270c49694827" />|
### 🕰개발 기간
  - 2023.3 ~ 2023.4.06
<br>

### 개발 환경
- FrontEnd
<img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white"/> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black"/> <img src="https://img.shields.io/badge/jQuery-0769AD?style=flat-square&logo=jQuery&logoColor=white"/>

- BackEnd
<img src="https://img.shields.io/badge/java-007396?style=flat-square&logo=java&logoColor=white"/> <img src="https://img.shields.io/badge/JSP-F37626?style=flat-square&logo=JSP&logoColor=black"/> <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=Python&logoColor=white"/> <img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat-square&logo=apachetomcat&logoColor=black"/>  <img src="https://img.shields.io/badge/Oracle-F80000?style=flat-square&logo=Oracle&logoColor=white"/>

- Tool
<img src="https://img.shields.io/badge/Eclipse%20IDE-2C2255.svg?&style=flat-square&logo=Eclipse%20IDE&logoColor=white"/> <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat-square&logo=Visual Studio Code&logoColor=white"/> <img src="https://img.shields.io/badge/Jupyter-F37626?style=flat-square&logo=Jupyter Code&logoColor=white"/> <img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=GitHub&logoColor=white"/>

<br>

## 메뉴 흐름도

<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/117342414/345303499-4a8b4ef4-8932-4efe-bf89-bb71ba540ebe.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240703%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240703T062237Z&X-Amz-Expires=300&X-Amz-Signature=b84943f2224fef92ff411998e6fb030da1e375f9f13edf85661fc51e14d05b97&X-Amz-SignedHeaders=host&actor_id=117342414&key_id=0&repo_id=618228873"/>
<br>

## 주 기능
### 1. 데이터 크롤링
  크롤링을 통한 영화 정보, 동영상 수집
  <br>
  <img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/2d31b582-3a9f-4bce-85b3-73a300da1906" />
  <br><br>
### 2. 찜 기능
  상세페이지에서 찜 기능으로 영화를 보관함에 저장
  <br>
  <img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/8f5706bc-8398-495a-984c-93fcdc076c24" />
  <br><br>
### 3. 댓글 기능
  상세페이지에서 영화에 대한 리뷰를 남길 수 있음
  <br>
  <img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/0e3a1592-21b5-403f-ad2c-23d12f0e2d5a" />
  <br><br>
### 4. 검색 기능
  검색창에 영화 키워드를 입력하면 관련 영화 분류
  <img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/91c7ebf2-7b22-4518-93ab-05a8f0c769d2" />
  <br><br>
### 5. AI 추천 기능
  보관함에 저장된 영화 장르를 통해 영상 추천
  <img src="https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4/assets/117342414/91c7ebf2-7b22-4518-93ab-05a8f0c769d2" />
  <br><br>
