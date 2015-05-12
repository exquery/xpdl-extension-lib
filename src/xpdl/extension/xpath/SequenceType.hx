package xpdl.extension.xpath;

import haxe.ds.Option;
import xpdl.xdm.Item;

class SequenceType {
    var type: Option<ItemOccurrence>; //None indicates empty-sequence()

    public function new(type) {
        this.type = type;
    }
}

class ItemOccurrence {
    var itemType: Class<Item>;
    var occurrenceIndicator: OccurrenceIndicator;

    public function new(itemType, ?occurenceIndicator) {
        this.itemType = itemType;
        this.occurrenceIndicator = (occurrenceIndicator == null) ? OccurrenceIndicator.ONE : occurrenceIndicator;
    }
}
