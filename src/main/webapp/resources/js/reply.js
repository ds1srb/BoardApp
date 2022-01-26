console.log("Reply Module-------------");

var replyService = (function() {

   function add(contents, callback, error) {
	
      console.log("add reply...............");
      console.log(contents.reply);
      console.log(name.replyer);
      console.log(contents.id);
      

      $.ajax({
         type : 'post',
         url : '/replies/new',
         data : JSON.stringify(contents), //stringify : 위 reply(문자열)를 json타입으로 변환할 때 사용
         contentType : "application/json; charset=utf-8",
         success : function(result, status, xhr) {
            if (callback) {
               callback(result);
            }
         },
         error : function(xhr, status, er) {
            if (error) {
               error(er);
            }
         }
      })
   }
   
   
   function getList(param, callback, error) {
	var boardid = param.boardid;
	var page = param.page || 1;
	
	$.getJSON("/replies/pages/" + boardid + "/" + page+".json",
		function(data) {
			if (callback) {
				callback(data);	
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	
}

	function update(contents, callback, error) {
		console.log("boardid: " + contents.id);
		$.ajax({
			type : 'put',
			url : '/replies/'+contents.id,
			data : JSON.stringify(contents),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
}

function get(id, callback, error) {
	$.get("/replies/" + id + ".json", function(result) {
		if (callback) {
			callback(result);
		}
		
		
	}).fail(function(xhr, status, err) {
		if (error) {
			error();
		}
	});
}
	
function displayTime(timeValue) {
	var today = new Date();
	var gap = today.getTime() - timeValue;
	
	var dateObj = new Date(timeValue);
	var str = "";
	
	if (gap < (1000 * 60 * 60 * 24)) {
		var hh = dateObj.getHours();
		var mi = dateObj.getMinutes();
		var ss = dateObj.getSeconds();
		
		return [ (hh > 9 ? '' : '0') + hh,':',
				 (mi > 9 ? '': '0') + mi,':',
				 (ss > 9 ? '' : '0') + ss].join('');
		
	} else {
		var yy = dateObj.getFullYear();
		var mm = dateObj.getMonth() +1;
		var dd = dateObj.getDate();
		
		return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
			(dd > 9 ? '' : '0') + dd ].join('');
	}
	
};
	
   return {
		add : add, 
		getList : getList, 
		update : update, 
		get : get, 
		displayTime : displayTime
		};
   
})();
