package aws.appsync;

import graphql.language.Parser;


class HaxeAppSyncClient extends AWSAppSyncClient{

    public function graphql(query:String):js.Promise<Dynamic>{

        var docNode = Parser.parse(query);

        trace(docNode);
        
        return this.query({query:docNode, variables:{name:"firstGym"}});
    }
    override public function mutate(options: Dynamic):js.Promise<Dynamic>{


        var docNode = Parser.parse(options);
        return super.mutate({query:docNode, variables:{name:"firstGym"}});
    }

}