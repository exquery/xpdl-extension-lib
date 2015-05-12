package xpdl.support;

import xpdl.support.Iterator;

class EmptyIterator<T> implements Iterator<T> {

    public function new() {
    }

    public function hasNext() {
        return false;
    }

    public function next() {
        return null;
    }
}
