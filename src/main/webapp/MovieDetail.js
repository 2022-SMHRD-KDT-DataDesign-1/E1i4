/* 예고편 */
$(document).ready(function() {
$('[data-vbg]').youtube_background(); // 실행
});
       
/* 별점 */
/*let member_rank = $('star-container').click(()=>{
   
})*/

/* 찜 */
let like_number = $('.tgNum')
let member_like = $('#cb5').click(()=>{
	
	console.log("클릭")
	
	let total = parseInt(like_number.text())
	if(total == 0) {
		like_number.text(total+1)
		console.log("찜");
	}
	
	if(total == 1){
		like_number.text(total-1)
		console.log("찜 취소")
	}
	
	
})