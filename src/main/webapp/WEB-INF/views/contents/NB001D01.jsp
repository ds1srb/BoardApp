<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="work-area">
<!-- Modal -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>Reply</label> 
                <input class="form-control" name='contents' value='New Reply!!!!'>
              </div>      
              <div class="form-group">
                <label>Replyer</label> 
                <input class="form-control" name='name' value='replyer'>
              </div>
              <div class="form-group">
                <label>Reply Date</label> 
                <input class="form-control" name='createdat' value=''>
              </div>
      
            </div>
<div class="modal-footer">
        <button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
        <button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
        <button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
        <button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
      </div>          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
<!-- ------------- -->      
<script type="text/javascript" src="/resources/js/reply.js"> </script>

<script>

console.log("-------------------");
console.log("JS TEST");


$(document).ready(function () {
var boardidValue = '<c:out value="${applicantIn.id}"/>';
var contentsUL = $(".chat");

	showList(1);
	
	function showList(page){
		replyService.getList({boardid:boardidValue, page : page|| 1}, function(list){
			var str="";
			if(list == null || list.length == 0){
				contentsUL.html("");
				
				return;
			}
				
				
			for(var i = 0, len = list.length || 0; i < len; i++ ) {
				str +="<li class='left clearfix' data-id='"+list[i].id+"'>";
				str +="<div> <div class='header'><strong class='primary-font'>" + list[i].name+"</strong>";
				str +="<small class='pull-right text-muted'>" + replyService.displayTime(list[i]. createdat)+"</small></div>";
				str +="<p>"+list[i].contents+"</p></div></li>";
			}
			contentsUL.html(str);
		});//end function
	}// end showList */
	
	var modal = $(".modal");
	var modalInputContents = modal.find("input[name='contents']");
	var modalInputName = modal.find("input[name='name']");
	var modalInputCreateDat = modal.find("input[name='createdat']");
	
	var modalModBtn = $("#modalModBtn");
	var modalRemoveBtn = $("#modalRemoveBtn");
	var modalRegisterBtn = $("#modalRegisterBtn");
	
	$("#addReplyBtn").on("click", function(e){
		modal.find("input").val("");
		modalInputCreateDat.closest("div").hide();
		modal.find("button[id !='modalColseBtn']").hide();
		modalRegisterBtn.show();
		$(".modal").modal("show");
	});
	
	$("#test").on("click",function(){
		console.log("asdfasdf");
	});
	modalRegisterBtn.on("click", function(e){	//event error

		modal.modal("hide");
		
		var contents = {
				contents: modalInputContents.val(),
				name:modalInputName.val(),
				boardid:boardidValue
		};
		console.log(contents);
		
		replyService.add(contents, function(result){
			alert(result);
			modal.find("input").val("");
			modal.modal("hide");
			
			showList(1);
		});
	});
});

		

</script>

<%-- ${id}
${applicantIn.islock} --%>
		<table class="table table-striped table-hover" style="text-align: center; border: 1px solid #dddddd" >
			<thead>
				<tr>
					
					<th colspan="3" style="text-align: center;"><i class="bi bi-file-earmark-text-fill"></i></th>
				</tr>
			<thead>
			<tbody>	
					<tr>
						<td style="width:20%;">タイトル</td>
						<td colspan="3"><strong>${applicantIn.title }</strong></td>
					</tr>
					<tr>
						<td style="width:20%;">名前</td>	
						<td colspan="3">${applicantIn.name }</td>
					</tr>
					<tr>
						<td style="width:20%;">作成日</td>	
						<td colspan="3"><fmt:formatDate value="${applicantIn.createdat }" pattern="yyyy-MM-dd kk:mm"></fmt:formatDate></td>
					</tr>
					<tr>
						<td>内容</td>	
						<td colspan="2" style="height: 200px; text-align: left; word-break:break-all">${applicantIn.contents }</td>
					</tr>
			</tbody>	
		</table>
			<a href="list" class="btn btn-danger">リスト</a>
			<a href="/board/update?id=${id}" role="button" class="btn btn-warning">アップデート</a>
			<button id="addReplyBtn" class='btn btn-primary pull-right'>コメント</button>
<div class='row'>
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw">コメント目録</i> 
			</div>
				<div class="panel-body">
					<ul class="chat">
					<li class="left clearfix" data-id='12'>
						<div>
							<div class="header">
								<strong class="primary-font"> user00 </strong>
								<small class="pull-right text-muted">2018-01-01 13:13 </small>
							</div>
							<p> Good job!!</p>
						</div>
						</li>
					</ul>
				</div>
		</div>
	</div>
</div>

	
</div>
		

