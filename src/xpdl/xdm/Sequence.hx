package xpdl.xdm;

import xpdl.support.Iterator;
import xpdl.xdm.Item;

@:nativeGen //removes __hx_ methods from generated code
interface Sequence {
    public function iterator() : Iterator<Item>;
}
