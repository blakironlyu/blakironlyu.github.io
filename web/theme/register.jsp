<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<!DOCTYPE html>
<style>
form{
margin-top:100px;
height:600px;
}
.colorgraph {
  height: 2px;
  border-top: 0;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
<script>
$(function () {
    $('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>');
            }
        }
        init();
    });
});
function register(f) {
	var uid = f.uid.value;
	var pwd = f.pwd.value;
	var pwd_confirm = f.pwd_confirm.value;
	var name = f.name.value;
	var bdate = f.bdate.value;
	
	if(uid == null || uid == '') {
		alert('ID를 입력해주세요.');
		f.uid.focus();
		return;
	}
	if(pwd == null || pwd== '') {
		alert('비밀번호를 입력해주세요.');
		f.uid.focus();
		return;
	}
	if(pwd_confirm == null || pwd_confirm == '') {
		alert('비밀번호를 입력해주세요.');
		f.uid.focus();
		return;
	}
	if(name == null || name == '') {
		alert('이름을 입력해주세요.');
		f.uid.focus();
		return;
	}
	if(bdate == null || bdate == '') {
		alert('생년월일을 입력해주세요.');
		f.uid.focus();
		return;
	}
	if(f.check.checked == false) {
		alert("'동의'란에 체크해주세요. ");
		$('#check').focus();
		return;
	}
	if(pwd != pwd_confirm) {
		alert('비밀번호가 다르게 입력되었습니다. ');
		f.pwd.focus();
		return;
	}
	
	f.action = 'register.4jo';
	f.method = 'post';
	f.submit();
};
</script>
<div class="container_register">
<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form">
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<div class="form-group">
				<input type="text" name="uid" id="uid" required="required" class="form-control input-lg" placeholder="ID" tabindex="1">
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="pwd" required="required" id="pwd" class="form-control input-lg" placeholder="Password" tabindex="2">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="pwd_confirm" required="required" id="pwd_confirm" class="form-control input-lg" placeholder="Confirm Password" tabindex="3">
					</div>
				</div>
			</div>
			<div class="form-group">
				<input type="text" name="name" id="name" required="required" class="form-control input-lg" placeholder="Name" tabindex="4">
			</div>
			<div class="form-group">
				<input type="date" name="bdate" id="bdate" required="required" class="form-control input-lg" placeholder="Birth Date" tabindex="5">
			</div>
			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="6">Agree</button>
                        <input type="checkbox" required="required" name="check" id="check" class="hidden">
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site, including our Cookie Use.
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="button" onclick="register(this.form);" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-12 col-md-6"><a href="main.4jo?view=login" class="btn btn-success btn-block btn-lg">LOGIN</a></div>
			</div>
		</form>
	</div>
</div>
<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
         </div>
         <div class="modal-body">
            <p>이 사이트는 불법적으로 개인의 신상정보를 모으지 않습니다.</p>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal"> Agree</button>
         </div>
      </div><!-- /.modal-content -->
   </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>
<!-- /.modal -->
