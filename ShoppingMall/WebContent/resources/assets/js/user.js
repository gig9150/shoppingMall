/**
 * 
 */
// 아이디 중복체크
function checkUserIdExist(){
	
	let user_id = $("#user_id").val();
	
	//아이디 입력됐나 확인
	if(user_id.length == 0){
		alert("아이디를 입력해주세요");
		return 
	}
	
	$.ajax({
		url : "/ShoppingMall/user/checkUserIdExist/" + user_id,
		type : "get",
		dataType : 'text',
		success:function(result){
			// 공백 제거
			if(result.trim() == 'true'){
				alert('사용할 수 있는 아이디입니다.');
				$("#userIdExist").val('true');
			}else{
				alert("사용할 수 없는 아이디입니다.");
				$("#userIdExist").val("false");
			}
		}
	})
	
}


// 만약 아이디를 수정하면 중복체크 값 초기화
function resetUserIdExist(){
	$("#userIdExist").val("false");
}

//로그인 안되어있으면 장바구니 확인불가
$("")



