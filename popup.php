 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
 <link href="http://static.scripting.com/github/bootstrap2/css/bootstrap.css" rel="stylesheet">
 <script src="http://static.scripting.com/github/bootstrap2/js/jquery.js"></script>
<script src="http://static.scripting.com/github/bootstrap2/js/bootstrap-transition.js"></script>
<script src="http://static.scripting.com/github/bootstrap2/js/bootstrap-modal.js"></script>
<style>
.lightbox {
	position: absolute;
	border:4px solid #39F;
	top: 0;
	height:auto;
	left: 50%;
	width: 500px;
	margin-left: -250px;
	background: #fff;
	z-index: 1001;
	/*display: none;*/
	visibile:false;
	
}
.lightbox-shadow {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 1500px;
	background: #000;
	filter: alpha(opacity=75);
	-moz-opacity: 0.75;
	-khtml-opacity: 0.75;
	opacity: 0.75;
	z-index: 1000;
	display: none;
}
.light{
	position: absolute;
	border:4px solid #39F;
	top: 0;
	height:auto;
	left: 50%;
	width: 500px;
	margin-left: -250px;
	background: #fff;
	z-index: 1001;
	display: none;
}
.light-shadow {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 1500px;
	background: #000;
	filter: alpha(opacity=75);
	-moz-opacity: 0.75;
	-khtml-opacity: 0.75;
	opacity: 0.75;
	z-index: 1000;
	display: none;
}
</style>     
<script type="text/jscript">

function roomlightbox(insertContent, roomId , propId,room_id){
	(function($) {
		if($('.lightbox').size() == 0){
			var theLightbox = $('<div class="lightbox"/>');
			var theShadow = $('<div class="lightbox-shadow"/>');
			$(theShadow).click(function(e){
				closeLightbox();
			});
			$('body').append(theShadow);
			$('body').append(theLightbox);
		}
		$('.lightbox').empty();
		if(insertContent != null){
			$('.lightbox').append(insertContent);
		}
		if(roomId != null && propId !=null){
			
			$('.lightbox').append('<p class="loading">Loading...</p>');
			$.ajax({
				type: 'GET',
				url: 'roompopup.php',
				data: {ppd:propId, rid:roomId, room_id:room_id},
				success:function(data){
					// remove "Loading..." message and append AJAX content
					$('.lightbox').empty();
					$('.lightbox').append(data);
				},
				error:function(){
					alert('AJAX Failure!');
				}
			});
			
		}
		$('.lightbox').css('top', $(window).scrollTop() + 100 + 'px');
		$('.lightbox').show();
		$('.lightbox-shadow').show();
	
	})(jQuery); 
	
}


function closeLightbox(){
	(function($) {
		$('.lightbox').hide();
		$('.lightbox-shadow').hide();
		$('.lightbox').empty();
	
	})(jQuery); 
	
}
</script>
<?php 
$rid=2;
$id=3;
$id1=4;
?>
<a href="javascript:roomlightbox(null, <?php echo $rid; ?> , <?php echo $id; ?>, <?php echo $id1; ?> );">  
      Rooms</a>