package xpdl.support;

@:nativeGen //removes __hx_ methods from generated code
interface Iterator<T> {
    public function hasNext() : Bool;
    public function next() : T;
}
