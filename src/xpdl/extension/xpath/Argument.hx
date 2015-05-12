package xpdl.extension.xpath;

import xpdl.xdm.Sequence;

/**
    A lazily evaluated argument
**/

@:nativeGen //removes __hx_ methods from generated code
interface Argument {
    public function getArgument() : Sequence;
}
