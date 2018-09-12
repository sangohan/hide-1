package monaco;

@:native("monaco.editor")
extern class Editor {


	function addCommand( command : Int, callback : Void -> Void ) : Void;
	function getValue( ?options : { ?lineEnding : String, ?preserveBOM : Bool } ) : String;
	function onDidChangeModelContent( listener : Void -> Void ) : Void;
	function focus() : Void;
	function dispose() : Void;
	function deltaDecorations( old : Array<String>, newDeco : Array<ModelDeltaDecoration> ) : Array<String>;

	public static function create( elt : js.html.Element, ?options : Dynamic ) : Editor;

}
