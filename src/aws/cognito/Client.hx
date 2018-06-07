package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "Client")
@:native("AmazonCognitoIdentity.Client")
extern class Client{
	function new(region:String, endpoint:String);
	function request(operation:String, params:Dynamic, callback:Dynamic):Void;
}