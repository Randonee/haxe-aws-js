package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "CognitoIdToken")
@:native("AmazonCognitoIdentity.CognitoIdToken")
extern class CognitoIdToken extends CognitoJwtToken{
	function new(data:Dynamic);
}