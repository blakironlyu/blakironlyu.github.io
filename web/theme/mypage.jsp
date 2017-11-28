<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<!DOCTYPE html>
<style>
form {
	margin-top: 100px;
	height: 600px;
}

.colorgraph {
	height: 2px;
	border-top: 0;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
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
	if(pwd != pwd_confirm) {
		alert('비밀번호가 다르게 입력되었습니다. ');
		f.pwd.focus();
		return;
	}
	
	f.action = 'user.4jo?cmd=modify';
	f.method = 'post';
	f.submit();
};
</script>
<div class="container_register">
	<div class="row">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<form role="form">
				<h2>My Page</h2>
				<hr class="colorgraph">
				<div class="form-group">
					<input type="text" name="uid" id="uid" readonly
						class="form-control input-lg" placeholder="ID" tabindex="1"
						value="${loginuser.id }">
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
							<input type="password" name="pwd" required="required" id="pwd"
								class="form-control input-lg" placeholder="Password"
								tabindex="2">
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
							<input type="password" name="pwd_confirm" required="required"
								id="pwd_confirm" class="form-control input-lg"
								placeholder="Confirm Password" tabindex="3">
						</div>
					</div>
				</div>
				<div class="form-group">
					<input type="text" name="name" id="name" required="required"
						class="form-control input-lg" placeholder="Name" tabindex="4"
						value="${loginuser.name }">
				</div>
				<div class="form-group">
					<input type="date" name="bdate" id="bdate" required="required"
						class="form-control input-lg" placeholder="Birth Date"
						tabindex="5" value="${loginuser.bdate }">
				</div>

				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-12 col-md-16">
						<input type="button" onclick="register(this.form);" value="Modify"
							class="btn btn-primary btn-block btn-lg" tabindex="7">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
