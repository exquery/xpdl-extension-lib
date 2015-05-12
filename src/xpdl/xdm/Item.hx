package xpdl.xdm;

import xpdl.HaxeTypes.HString;

@:nativeGen //removes __hx_ methods from generated code
interface Item {
    public function stringValue() : xpdl.xdm.String;
}

@:nativeGen
interface AnyType {
}

@:nativeGen
interface AnyAtomicType extends Item extends AnyType {
}

//TODO(AR) see https://github.com/HaxeFoundation/haxe/issues/4203
//@:nativeGen //removes __hx_ methods from generated code
//interface NativeItem<T> {
//    public function haxe() : T; //TODO(AR) change into abstract class for Impls
//}


class Boolean implements AnyAtomicType {
  //implements NativeItem<Bool> {

    var value: Bool;

    public function new(value) {
        this.value = value;
    }

    public function stringValue() {
        return new xpdl.xdm.String(Std.string(value));
    }

    public function haxe() {
        return value;
    }
}

class String implements AnyAtomicType {
    //implements NativeItem<HString> {
    var value: HString;

    public function new(value) {
        this.value = value;
    }

    public function stringValue() {
        return this;
    }

    public function haxe() {
        return value;
    }
}
