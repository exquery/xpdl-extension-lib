package example.xpdl.expath.file;

import xpdl.extension.xpath.Function;
import xpdl.extension.Module;

@:nativeGen
class FileModule implements Module {


    @final public static var NAMESPACE = "http://expath.org/ns/file";
    @final public static var PREFIX = "file";

    public function name() {
        return "FileModule.hx";
    }

    public function description() {
        return "Haxe implementation of the EXPath File Module";
    }

    public function functions() : List<Class<Function>> {
        var lst = new List<Class<Function>>();
        lst.add(ExistsFunction);
        return lst;
    }

}
