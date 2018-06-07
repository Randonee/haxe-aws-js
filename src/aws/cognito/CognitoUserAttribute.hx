package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "CognitoUserAttribute")
@:native("AmazonCognitoIdentity.CognitoUserAttribute")
extern class CognitoUserAttribute{
	function new(data:Dynamic);
	function getValue():String;
	function setValue(value:String):CognitoUserAttribute;
	function getName():String;
	function setName(value:String):CognitoUserAttribute;
	function toString():String;
	function toJSON():Dynamic;
}