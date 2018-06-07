package aws.cognito;


typedef CookieStorageData = {
	domain:String,
	path:String,
	?expires:Int,
	?secure:Bool
}

@:jsRequire("amazon-cognito-identity-js", "CookieStorage")
@:native("AmazonCognitoIdentity.CookieStorage")
extern class CookieStorage{
	function new(data:CookieStorageData);
	function setItem(key:String, value:Dynamic):String;
	function gitItem():Dynamic;
	function removeItem(key:String):Dynamic;
	function clear():String;
}