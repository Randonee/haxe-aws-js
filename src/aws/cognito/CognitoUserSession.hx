package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "CognitoUserSession")
@:native("AmazonCognitoIdentity.CognitoUserSession")
extern class CognitoUserSession{

	function new(data:Dynamic);
	function getIdToken():Dynamic;
	function getRefreshToken():Dynamic;
	function getAccessToken():Dynamic;
	function getClockDrift():Dynamic;
	function calculateClockDrift():Dynamic;
	function isValid():Dynamic;
}