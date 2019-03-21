<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <div class="section">
    
        <form class="content" method="post" action="#" onsubmit="return validate()">
		<div class="tit_comm">매출전표등록</div>
	  	<table border="1">
			<tr>
				<th class="th_comm">매출전표번호</th>
				<td class="td_comm"><input type="text" class="input_comm" name="chit_num" id="chit_num"></td>
			</tr>
			<tr>
				<th class="th_comm">지점코드</th>
				<td class="td_comm"><input type="text" class="input_comm" name="code" id="code"></td>
			</tr>
			<tr>
				<th class="th_comm">판매일자</th>
				<td class="td_comm"><input type="text" name="saledaete" id="saledaete"></td>
			</tr>
			<tr>
				<th class="th_comm" style="width:150px;">피자코드</th>
				<td class="td_comm"><select name="pizzacode" id="pizzacode">
				<option>피자선택</option>
				<option>[AA01] 고르곤졸라피자</option>
				<option>[AA02] 치즈피자</option>	
				<option>[AA03] 페퍼로니피자</option>	
				<option>[AA04] 콤비네이션피자</option>	
				<option>[AA05] 고구마피자</option>		
				<option>[AA06] 포테이토피자</option>	
				<option>[AA07] 불고기피자</option>	
				<option>[AA08] 나폴리피자</option>	
				</select></td>
			</tr>
			<tr>
				<th class="th_comm">판매수량</th>
				<td class="td_comm"><input type="text" class="input_comm" name="sales_rate" id="sales_rate"></td>
			</tr>
			<tr>
			<td class="table_footer_comm" colspan="2">
				<input class="btn_comm" id="Enrollment" value="전표등록" type="submit"/>
				<input class="btn_comm" id="re" type="reset" value="다시쓰기">
			</td>
			</tr>
		 </table>
        </form>
    </div>
</body>
</html>