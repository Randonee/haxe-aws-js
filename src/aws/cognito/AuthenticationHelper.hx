package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "AuthenticationHelper")
@:native("AmazonCognitoIdentity.AuthenticationHelper")
extern class AuthenticationHelper{
	function new(poolName:String);
	function getSmallAValue():BigInteger;
	function getLargeAValue(callback:Dynamic):Void;
	function generateRandomSmallA():BigInteger;
	function generateRandomString():String;
	function getRandomPassword():String;
	function getSaltDevices():String;
	function getVerifierDevices():String;
	function generateHashDevice(deviceGroupKey:String, username:String, callback:Dynamic):Void;
	function calculateA(a:BigInteger, callback:Dynamic):Void;
	function calculateU(A:BigInteger;, B:BigInteger;):BigInteger;
	function hexHash(hexStr:String):String;
	function computehkdf(ikm:Dynamic, salt:Dynamic):Dynamic;
	function getPasswordAuthenticationKey(username:String, password:String, serverBValue:BigInteger, salt:BigInteger, callback:Dynamic):Void;
	function calculateS(xValue:BigInteger, serverBValue:BigInteger, callback:Dynamic):Void;
	function getNewPasswordRequiredChallengeUserAttributePrefix():Dynamic;
}