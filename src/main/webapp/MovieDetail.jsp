<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<!-- css 경로  -->
<link rel="stylesheet" href="./MovieDetail.css">
<body>

   <!-- j쿼리 -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <!-- 예고편 -->
      <script src="https://unpkg.com/youtube-background@1.0.14/jquery.youtube-background.min.js"></script>
   <!-- JS 경로 -->
   <script src="./MovieDetail.js"></script>
   
    <div>
         
         <!-- 예고편 -->
         <div class="trailer" mute="false" data-vbg-autoplay="true" data-vbg="https://youtu.be/jBdRhhSt3Bc"></div>
         <!-- 영화정보  -->
         <div class="movie_import">
          <p id="movie_date">2019</p>
          <p id="movie_genre">드라마</p>               
          <P id="movie_title">기생충</P>
              <!-- 총 평점 -->
              <p class="all-score">⭐ 9.9</p>
         <!-- 찜 -->   
         <ul class="tg-list">
             <li class="tg-list-item">
                 <input class="tgl tgl-flip" id="cb5" type="checkbox" /><label class="tgl-btn" data-tg-off="찜❤" data-tg-on="저장💕" for="cb5"></label>
             </li>
             <li>
	             <span class="tgNum">0</span>
             </li>
         </ul>
         <P id="movie_actor">주연배우 : OOO</P>         
          <P id="movie_story">반지하에서 근근이 먹고 살던 가족. 우연히 생긴 알바로 부잣집에 발을 들이더니, 어느덧 온 식구가 저택 곳곳의 밥줄을 꿰찬다. 공간도 세간도 남아돌잖아요. 그러니 우리 같이 나눠 씁시다.</P>
           <br>   
              <!-- 사용자 별점 -->
              <p>사용자평</p>
            <div class="star-source">
              <svg>
                     <linearGradient x1="50%" y1="5.41294643%" x2="87.5527344%" y2="65.4921875%" id="grad">
                        <stop stop-color="#bf209f" offset="0%"></stop>
                        <stop stop-color="#d62a9d" offset="60%"></stop>
                        <stop stop-color="#ED009E" offset="100%"></stop>
                    </linearGradient>
                <symbol id="star" viewBox="153 89 106 108">   
                  <polygon id="star-shape" stroke="url(#grad)" stroke-width="5" fill="currentColor" points="206 162.5 176.610737 185.45085 189.356511 150.407797 158.447174 129.54915 195.713758 130.842203 206 95 216.286242 130.842203 253.552826 129.54915 222.643489 150.407797 235.389263 185.45085"></polygon>
                </symbol>
            </svg>
            
            </div>
               
            <div class="star-container">
              <input type="radio" name="star" id="five">
              <label for="five">
                <svg class="star">
                    <use xlink:href="#star"/>
                </svg>
              </label>
              <input type="radio" name="star" id="four">
              <label for="four">
                <svg class="star">
                    <use xlink:href="#star"/>
                 </svg>
              </label>
                <input type="radio" name="star" id="three">
                <label for="three">
                  <svg class="star">
                    <use xlink:href="#star"/>
                  </svg>
                </label>
              <input type="radio" name="star" id="two">
              <label for="two">
                <svg class="star">
                  <use xlink:href="#star" />
                </svg>
              </label>
              <input type="radio" name="star" id="one">
              <label for="one">
                <svg class="star">
                   <use xlink:href="#star" />
                 </svg>
              </label>
               
            </div>
            <!-- 댓글 입력 -->
            <form class="command" action="">
                <input id="inputCom" type="text" placeholder="댓글 입력...">
                <input type="submit" value="저장"></input>
             </form>
           
          <!-- 댓글창 -->
          <div>
            <table id="board">
               <tr>
                  <th>Nickname</td>
                  <th>Content</td>
                  <th>Date</td>
                  <th>Delete</td>                 
               </tr>
                <tr>
                  <td class="id">test1</td>
                  <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                  <td class="date">2023.03.26</td>
                  <td class="delete"><a href="">삭제</a></td>
               </tr>
                <tr>
                  <td class="id">test1</td>
                  <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                  <td class="date">2023.03.26</td>
                  <td class="delete"><a href="">삭제</a></td>
               </tr>
                <tr>
                  <td class="id">test1</td>
                  <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                  <td class="date">2023.03.26</td>
                  <td class="delete"><a href="">삭제</a></td>
               </tr>
                <tr>
                  <td class="id">test1</td>
                  <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                  <td class="date">2023.03.26</td>
                  <td class="delete"><a href="">삭제</a></td>
               </tr>
                <tr>
                  <td class="id">test1</td>
                  <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                  <td class="date">2023.03.26</td>
                  <td class="delete"><a href="">삭제</a></td>
               </tr>
               <tr>
                  <td class="id">test1</td>
                  <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                  <td class="date">2023.03.26</td>
                  <td class="delete"><a href="">삭제</a></td>
               </tr>
            </table>            
          </div>  
        </div>   
     </div>
   
   
   <!-- 리뷰영상 -->
  <div>
  <div class="review">
      <h3>Review</h3>
      <a href=""><img id="review1" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title1">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
      <a href=""><img id="review2" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title2">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
      <a href=""><img id="review3" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title3">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
   </div>
    <div class="include_end">
      <h3>Include End</h3>
 	  <a href=""><img id="include_end1" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title4">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
      <a href=""><img id="include_end2" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title5">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
      <a href=""><img id="include_end3" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title6">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
     </div>
     <div class="interpretation">
      <h3>interpretation</h3>
 	  <a href=""><img id="interpretation1" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title7">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
      <a href=""><img id="interpretation2" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title8">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
      <a href=""><img id="interpretation3" alt="#" src="https://img.youtube.com/vi/2nZGfC0nS7s/0.jpg"></a>
      <p id="title9">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p>
     </div>
   </div>  
	
	</body>
</html>