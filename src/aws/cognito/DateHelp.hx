package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "DateHelper")
@:native("AmazonCognitoIdentity.DateHelper")
extern class DateHelper{
	function getNowString():String;
}