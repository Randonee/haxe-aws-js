package aws.cognito;

typedef CognitoUserData = {
	Username:String,
	Pool:CognitoUserPool,
	?Storage:Dynamic
}

@:jsRequire("amazon-cognito-identity-js", "CognitoUser")
@:native("AmazonCognitoIdentity.CognitoUser")
extern class CognitoUser{

	function new(data:CognitoUserData);
	function setSignInUserSession(signInUserSession:CognitoUserSession):Void;
	function getSignInUserSession():CognitoUserSession;
	function getUsername():String;
	function getAuthenticationFlowType():String;
	function setAuthenticationFlowType(authenticationFlowType:Dynamic):Void;
	function initiateAuth(authDetails:AuthenticationDetails, callback:Dynamic, ?onFailure:Dynamic, ?customChallenge:Dynamic, ?authSuccess:Dynamic):Void;
	function authenticateUser(authDetails:AuthenticationDetails, callback:Dynamic, ?onFailure:Dynamic, ?customChallenge:Dynamic, ?authSuccess:Dynamic):Void;
	function authenticateUserDefaultAuth(authDetails:AuthenticationDetails, callback:Dynamic, ?onFailure:Dynamic, ?customChallenge:Dynamic, ?authSuccess:Dynamic):Void;
	function authenticateUserPlainUsernamePassword(authDetails:AuthenticationDetails, callback:Dynamic, ?onFailure:Dynamic, ?mfaRequired:Dynamic, ?authSuccess:Dynamic):Void;
	function authenticateUserInternal(dataAuthenticate:Dynamic, authenticationHelper:Dynamic, callback:Dynamic):Void;
	function completeNewPasswordChallenge(newPassword:String, requiredAttributeData:Dynamic, callback:Dynamic, onFailure:Dynamic, mfaRequired:Dynamic, customChallenge:Dynamic, authSuccess:Dynamic):Void;
	function getDeviceResponse(callback:Dynamic):Void;
	function confirmRegistration(confirmationCode:String, forceAliasCreation:Bool, callback:Dynamic):Void;
	function sendCustomChallengeAnswer(answerChallenge:String, callback:Dynamic):Void;
	function sendMFACode(confirmationCode:String, callback:Dynamic, mfaType:Dynamic):Void;
	function changePassword(oldUserPassword:String, newUserPassword:String, callback:Dynamic):Void;
	function enableMFA(callback:Dynamic):Void;
	function setUserMfaPreference(smsMfaSettings:Array<String>, softwareTokenMfaSettings:Array<String>, callback:Dynamic):Void;
	function deleteUser(callback:Dynamic):Void;
	function updateAttributes(attributes:Array<Dynamic>, callback:Dynamic):Void;
	function getUserAttributes(callback:Dynamic):Void;
	function getMFAOptions(callback:Dynamic):Void;
	function getUserData(callback:Dynamic):Void;
	function deleteAttributes(attributes:Array<Dynamic>, callback:Dynamic):Void;
	function resendConfirmationCode(callback:Dynamic):Void;
	function getSession(callback:Dynamic):Void;
	function refreshSession(refreshToken:CognitoRefreshToken, callback:CognitoUserSession->Void):Void;
	function cacheTokens():Void;
	function cacheDeviceKeyAndPassword():Void;
	function getCachedDeviceKeyAndPassword():Void;
	function clearCachedDeviceKeyAndPassword():Void;
	function clearCachedTokens():Void;
	function getCognitoUserSession(authResult:Dynamic):CognitoUserSession;
	function forgotPassword(callback:Dynamic):Void;
	function confirmPassword(confirmationCode:String, newPassword:String, callback:Dynamic):Void;
	function getAttributeVerificationCode(attributeName:String, callback:Dynamic):Void;
	function verifyAttribute(attributeName:String, confirmationCode:String, callback:Dynamic):Void;
	function getDevice(callback:Dynamic):Void;
	function forgetSpecificDevice(deviceKey:String, callback:Dynamic):Void;
	function forgetDevice(callback:Dynamic):Void;
	function setDeviceStatusRemembered(callback:Dynamic):Void;
	function setDeviceStatusNotRemembered(callback:Dynamic):Void;
	function listDevices(limit:Int, paginationToken:String, callback:Dynamic):Void;
	function globalSignOut(callback:Dynamic):Void;
	function signOut():Void;
	function sendMFASelectionAnswer(answerChallenge:String, callback:Dynamic):Void;
	function getUserContextData():Void;
	function associateSoftwareToken(callback:Dynamic):Void;
	function verifySoftwareToken(totpCode:String, friendlyDeviceName:String, callback:Dynamic):Void;
}