package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "CognitoJwtToken")
@:native("AmazonCognitoIdentity.CognitoJwtToken")
extern class CognitoJwtToken{
	function new(token:String);
	function getJwtToken():String;
	function getExpiration():Int;
	function getIssuedAt():Int;
	function decodePayload():Dynamic;
}