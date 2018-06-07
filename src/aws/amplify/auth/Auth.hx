package web.src.aws.amplify.auth;

import aws.cognito.ICookieStorageData;

typedef AuthOptions = {
    userPoolId: String,
    userPoolWebClientId: String,
    identityPoolId: String,
    ?region: String,
    mandatorySignIn: Bool
    ?cookieStorage: ICookieStorageData,
    ?oauth: OAuth,
    ?refreshHandlers: Dynamic
}

typedef OAuth = {
    domain : String,
	scope : Array<String>,
	redirectSignIn : String,
	redirectSignOut : String,
    responseType: String,
    ?options: Dynamic
}

typedef FederatedResponse = {
    // access token
    token:String,
    // identity id
    ?identity_id:String,
    // the universal time when token expired
    expires_at:Int
}

@:jsRequire("aws-amplify", "Auth")
extern class Auth{
    public function new(config:AuthOptions);

    public function signUp(params:Dynamic):js.Promise<Dynamic>;
    public function confirmSignUp(username: String, code: String):js.Promise<Dynamic>;
    public function resendSignUp(username: String):js.Promise<Dynamic>;
    public function signIn(username: String, password: String):js.Promise<Dynamic>;
    public function getMFAOptions(user:CognitoUser):js.Promise<Dynamic>;
    public function setPreferredMFA(user:CognitoUser, mfaMethod:String):js.Promise<Dynamic>;
    public function disableSMS(user:CognitoUser):js.Promise<Dynamic>;
    public function enableSMS(user:CognitoUser):Void;
    public function setupTOTP(user:CognitoUser):Void;
    public function verifyTotpToken(user:CognitoUser, challengeAnswer:Dynamic):Void;
    public function confirmSignIn(user:Dynamic, code:String, mfaType:String):js.Promise<Dynamic>;
    public function completeNewPassword(user:CognitoUser, password:String, requiredAttributes:Dynamic):js.Promise<Dynamic>;
    public function updateUserAttributes(user:CognitoUser, attributes:Dynamic):js.Promise<Dynamic>;
    public function public userAttributes(user:Dynamic):js.Promise<Dynamic>;
    public function verifiedContact(user:Dynamic):Void;
    public function currentUserPoolUser():js.Promise<Dynamic>;
    public function getSyncedUser():js.Promise<Dynamic>;
    public function currentAuthenticatedUser():js.Promise<Dynamic>;
    public function currentSession():js.Promise<Dynamic>;
    public function userSession(user:Dynamic):js.Promise<Dynamic>;
    public function currentUserCredentials():js.Promise<Dynamic>;
    public function currentCredentials():js.Promise<Dynamic>;
    public function verifyUserAttribute(user:Dynamic, attr:Dynamic):js.Promise<Dynamic>;
    public function verifyUserAttributeSubmit(user:Dynamic, attr:Dynamic, code:String):js.Promise<Dynamic>;
    public function signOut():js.Promise<Dynamic>;
    public function changePassword(user:Dynamic, oldPassword:String, newPassword:String):js.Promise<Dynamic>;
    public function forgotPassword(username:String):js.Promise<Dynamic>
    public function forgotPasswordSubmit(username:String, code:String, password:String):js.Promise<Dynamic>;
    public function currentUserInfo():Dynamic;
    public function federatedSignIn(provider:String, response:FederatedResponse, user:Dynamic):js.Promise<Dynamic>;
    public function essentialCredentials(credentials:Dynamic):Dynamic;
}