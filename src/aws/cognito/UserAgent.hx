package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "UserAgent")
@:native("AmazonCognitoIdentity.UserAgent")
extern class UserAgent{
	public static var userAgent:String;
}