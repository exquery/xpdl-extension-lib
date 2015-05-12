package example.xpdl.expath.file;

import xpdl.xdm.Sequence;
import xpdl.extension.xpath.*;
import xpdl.extension.xpath.SequenceType.ItemOccurrence;
import sys.FileSystem;
import xpdl.xdm.Item.Item;
import xpdl.xdm.Item.Boolean;

class ExistsFunction implements Function {

    private static var sig = new FunctionSignature(
        new QName("exists", FileModule.NAMESPACE, FileModule.PREFIX),
        new SequenceType(Some(new ItemOccurrence(Boolean))),
        [
            [ new Param(new QName("path"), new SequenceType(Some(new ItemOccurrence(xpdl.xdm.Item.String)))) ]
        ]
    );

    public function new() {}

    public function signature() {
        return sig;
    }

    public function eval(arguments : Array<Argument>, context: Context) {
        var path = arguments[0].getArgument().iterator().next().stringValue().haxe();
        var exists = FileSystem.exists(path);
        return new ArraySequence( [ new Boolean(exists) ] );
    }
}

class ArraySequence implements Sequence {
    var items: Array<Item>;

    public function new(items: Array<Item>) {
        this.items = items;
    }

    public function iterator() {
        return new ArraySequenceIterator(items.iterator());
    }
}

class ArraySequenceIterator implements xpdl.support.Iterator<Item> {
    var it: Iterator<Item>;

    public function new(it) {
        this.it = it;
    }

    public function hasNext() {
        return it.hasNext();
    }

    public function next() {
        return it.next();
    }
}