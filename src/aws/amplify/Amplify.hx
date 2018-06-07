package aws.amplify;

import graphql.type.*;
import graphql.error.*;

@:jsRequire("aws-amplify")
extern class Amplify{
    public static function graphqlOperation(query:String, variables:Dynamic):Dynamic;
}