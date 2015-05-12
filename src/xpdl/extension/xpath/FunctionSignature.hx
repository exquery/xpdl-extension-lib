package xpdl.extension.xpath;

class FunctionSignature {
    var name: QName;
    var returnType: SequenceType;
    var paramLists: Array<Array<Param>>;

    public function new(name, returnType, paramLists) {
        this.name = name;
        this.returnType = returnType;
        this.paramLists = paramLists;
    }
}
