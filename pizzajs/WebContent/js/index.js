function validate() {
    var chitnum=document.getElementById("chit_num").value;
    var code1=document.getElementById("code");
    var saledaete=document.getElementById("saledaete");
    var salesrate=document.getElementById("sales_rate");

    console.log(saledaete);

    if(chitnum==""){
        alert("판매수량을 입력해주세요");
        chit_num.focus();
        return false;
    }
    if(code1==""){
        alert("판매수량을 입력해주세요");
        code1.focus();
        return false;
    }
    if(saledaete==""){
        alert("판매수량을 입력해주세요");
        saledaete.focus();
        return false;
    }
    if(salesrate==""){
        alert("판매수량을 입력해주세요");
        salesrate.focus();
        return false;
    }
}