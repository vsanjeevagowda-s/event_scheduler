// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery-ui
//= require jquery.validate.min
//= require_tree .


 $("document").ready(function(){

$.validator.addMethod('strongPassword', function(value,element){
	return this.optional(element)
	|| value.length >=6
	&& /\d/.test(value)
	&& /[a-z]/i.test(value)
	&& /[A-Z]/i.test(value);

}, "Password must have one alphabet (upper case & lower case each) & one digit & one special charecter ")

$.validator.addMethod('phonenumber', function(value,element){
	return this.optional(element)
	|| value.length >=10
	&& /\d/.test(value);
},"must contain only digits")


$("#signupform").validate({

rules: 
{
"user[email]": {required: true, email: true},
"user[password]": {required: true, strongPassword: true },
"user[password_confirmation]": {required: true, equalTo: "#user_password"},
"user[firstname]": {required: true},
"user[lastname]": {required: true},
"user[username]": {required: true},
"user[phone]": {required: true, phonenumber: true}
}
});




 $(".alert-success").delay(5000).fadeOut("slow");
 $(".alert-warning, .alert-danger").delay(10000).fadeOut("slow");



$("#loginform").validate({

rules: 
{
"login[email]": {required: true, email: true},
"login[password]": {required: true, minlength: 8},

}
});



$("#myModal-login2").modal('show');





 })



