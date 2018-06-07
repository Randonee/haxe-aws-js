package aws.cognito;


typedef AuthenticationDetailsData = {
	Username:String,
	Password:String,
	?ValidationData:Dynamic,
	?AuthParamaters:Dynamic,
}

@:jsRequire("amazon-cognito-identity-js", "AuthenticationDetails")
@:native("AmazonCognitoIdentity.AuthenticationDetails")
extern class AuthenticationDetails{
	function new(data:AuthenticationDetailsData);
	function getUsername():String;
	function getPassword():String;
	function getValidationData():Array<Dynamic>;
	function getAuthParameters():Array<Dynamic>;
}