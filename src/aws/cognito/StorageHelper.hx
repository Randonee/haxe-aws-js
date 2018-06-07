package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "StorageHelper")
@:native("AmazonCognitoIdentity.StorageHelper")
extern class StorageHelper{
	function new();
	function getStorage():Dynamic;
}

@:jsRequire("amazon-cognito-identity-js", "MemoryStorage")
@:native("AmazonCognitoIdentity.MemoryStorage")
extern class MemoryStorage{
	function setItem(key:String, value:Dynamic):String;
	function removeItem(key:String):Dynamic;
	function clear():Void;
}