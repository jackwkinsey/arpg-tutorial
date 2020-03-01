/// @description execute script with argument array
/// @returns any
/// @arg script
/// @arg args[]

var script = argument0;
var args = argument1;

switch (array_length_1d(args)) {
	case 0: return script_execute(script);
	case 1: return script_execute(script, args[0]);
	case 2: return script_execute(script, args[0], args[1]);
	case 3: return script_execute(script, args[0], args[1], args[2]);
	case 4: return script_execute(script, args[0], args[1], args[2], args[3]);
	case 5: return script_execute(script, args[0], args[1], args[2], args[3], args[4]);
	case 6: return script_execute(script, args[0], args[1], args[2], args[3], args[4], args[5]);
	case 7: return script_execute(script, args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
	case 8: return script_execute(script, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
	default: show_error("ScriptExecuteArray: argument count not supported!", false);
}