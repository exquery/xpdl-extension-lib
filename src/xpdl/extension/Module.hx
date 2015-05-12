package xpdl.extension;

import xpdl.extension.xpath.Function;

/**
    Simply a collection of similar functions
**/

interface Module {

    public function name() : String;

    public function description() : String;

    public function functions() : List<Class<Function>>;
}
