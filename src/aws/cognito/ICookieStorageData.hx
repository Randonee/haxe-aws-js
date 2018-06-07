package aws.cognito;

typedef ICookieStorageData = {
        domain: String;
        ?path: String;
        ?expires: Int;
        ?secure: Bool;
    }