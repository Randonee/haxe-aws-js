package aws.amplify.api;

@:jsRequire("aws-amplify", "API")
extern class Api{
    public static function register(comp:Dynamic):Void;
    public static function configure(config:Dynamic):Dynamic;
    public static function addPluggable(pluggable:Dynamic):Void;

    public static function graphql(     schema: Dynamic,
                                        ?requestString: String,
                                        ?rootValue: Dynamic,
                                        ?contextValue: Dynamic,
                                        ?variableValues: Dynamic,
                                        ?operationName: String
                                    ):Dynamic;
}