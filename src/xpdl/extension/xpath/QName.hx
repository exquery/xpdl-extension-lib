package xpdl.extension.xpath;

//@:nativeGen //removes __hx_ methods from generated code
class QName {
    public static var NULL_NS_URI = "";
    public static var DEFAULT_NS_PREFIX = "";

    //TODO(AR) these should most likely be Utf8 (or Utf16) typed and not String. See https://github.com/HaxeFoundation/haxe/issues/3072
    var localPart : String;
    var namespaceUri(default, null) : String;
    var prefix(default, null) : String;

    public function new(localPart, ?namespaceUri, ?prefix) {
        this.localPart = localPart;
        this.namespaceUri = (namespaceUri == null) ? NULL_NS_URI : namespaceUri;
        this.prefix = (prefix == null) ? DEFAULT_NS_PREFIX : prefix;
    }
}
