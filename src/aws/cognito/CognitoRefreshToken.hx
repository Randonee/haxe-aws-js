package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "CognitoRefreshToken")
@:native("AmazonCognitoIdentity.CognitoRefreshToken")
extern class CognitoRefreshToken{
	function new(data:Dynamic);
	function getToken():String;
}