package xpdl.xdm;

import xpdl.support.EmptyIterator;
class EmptySequence implements Sequence {
    public static var INSTANCE = new EmptySequence();
    private static var EMPTY_ITERATOR = new EmptyIterator<Item>();


    private function new() {
    }

    public function iterator() {
        return EMPTY_ITERATOR;
    }
}
