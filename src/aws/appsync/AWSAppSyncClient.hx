package aws.appsync;

import apollo.client.ApolloClient;

@:jsRequire("aws-appsync", "AWSAppSyncClient")
extern class AWSAppSyncClient extends ApolloClient{
    public function new(options:{url:String,
                        region:String,
                        auth:Dynamic,
                        ?conflictResolver:Dynamic,
                        ?complexObjectsCredentials:Dynamic,
                        ?cacheOptions:Dynamic,
                        ?disableOffline:Bool
                    });
}