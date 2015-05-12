package xpdl.extension.xpath;

class Param {
    var name: QName;
    var type: SequenceType;
    var description : String; //implementation detail

    public function new(name, type, ?description) {
        this.name = name;
        this.type = type;
        this.description = description;
    }
}
