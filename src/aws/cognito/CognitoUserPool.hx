package aws.cognito;

typedef UserPoolData = {
	UserPoolId:String,
	ClientId:String,
	?Storage:Dynamic,
	?AdvancedSecurityDataCollectionFlag:Bool
}

@:jsRequire("amazon-cognito-identity-js", "CognitoUserPool")
@:native("AmazonCognitoIdentity.CognitoUserPool")
extern class CognitoUserPool{

	function new(data:UserPoolData);
	function getUserPoolId():String;
	function signUp(username:String, password:String, userAttributes:Dynamic, validationData:Dynamic, callback:Dynamic->Dynamic->Void):Void;
	function getCurrentUser():CognitoUser;
	function getUserContextData(username:String):String;
}