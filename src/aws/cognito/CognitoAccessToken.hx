package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "CognitoAccessToken")
@:native("AmazonCognitoIdentity.CognitoAccessToken")
extern class CognitoAccessToken{
	function new(data:Dynamic);
}