package xpdl.extension.xpath;

import xpdl.xdm.Sequence;

@:nativeGen
interface Function {

    public function signature() : FunctionSignature;

    public function eval(arguments: Array<Argument>, context: Context) : Sequence;
}
