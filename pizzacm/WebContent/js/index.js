function validate() {
//    var chitnum=document.getElementById("chit_num").value;
//    var code1=document.getElementById("code").value;
//    var saledaete=document.getElementById("saledaete").value;
//    var pizzacode=document.getElementById("pizzacode").value;
//    var salesrate=document.getElementById("sales_rate").value;
//
//    if(chitnum==""&&code1==""&&saledaete==""&&salesrate==""&&pizzacode==""){
//        if(chitnum==""){
//            alert("매출전표번호를 입력해주세요");
//            chit_num.focus();
//        }else if(code1==""){
//            alert("지점코드를 입력해주세요");
//            code1.focus();
//        }else if(saledaete==""){
//            alert("판매일자를 입력해주세요");
//            saledaete.focus();
//        }else if(pizzacode==""){
//            alert("매출전표번호를 입력해주세요");
//            pizzacode.focus();
//        }else if(salesrate==""){
//            alert("판매수량을 입력해주세요");
//            salesrate.focus();
//        }
//        return false;
//    }

	var array = [fr.chit_num,fr.code,fr.saledaete,fr.pizzacode,fr.sales_rate];
    var txt_array = ["매출전표번호","지점코드","판매일자","피자코드","판매수량"];
	for(var i =0; i<array.length;i++){
		if(array[i].value == ""){
			alert(txt_array[i]+"의 값이 없습니다.");
			array[i].focus();
			return false;
		}
	}
	return true;

}