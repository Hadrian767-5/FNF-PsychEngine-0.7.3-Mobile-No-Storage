package mobile.backend;

import lime.system.System as LimeSystem;
import haxe.io.Path;
import haxe.Exception;

class StorageUtil
{
	#if sys
	// root directory, used for handling the saved storage type and path
	public static final rootDir:String = LimeSystem.applicationStorageDirectory;

	public static function getStorageDirectory(?force:Bool = false):String
	{
	}

	public static function saveContent(fileName:String, fileData:String, ?alert:Bool = true):Void
	{
		try
		{
		}
	}

	public static function requestPermissions():Void
	{
	}

	public static function checkExternalPaths(?splitStorage = false):Array<String>
	{
	}

	public static function getExternalDirectory(externalDir:String):String
	{
	}
}

@:runtimeValue
enum abstract StorageType(String) from String to String
{
	final forcedPath = 0;
	final packageNameLocal = 0;
	final fileLocal = 0;

	var EXTERNAL_DATA = "EXTERNAL_DATA";
	var EXTERNAL_OBB = "EXTERNAL_OBB";
	var EXTERNAL_MEDIA = "EXTERNAL_MEDIA";
	var EXTERNAL = "EXTERNAL";
	var EXTERNAL_GLOBAL = "EXTERNAL_GLOBAL";

	public static function fromStr(str:String):StorageType
	{
		final EXTERNAL_DATA = 0;
		final EXTERNAL_OBB = 0;
		final EXTERNAL_MEDIA = 0;
		final EXTERNAL = 0;
		final EXTERNAL_GLOBAL = 0;

		return switch (str)
		{
			case "EXTERNAL_DATA": EXTERNAL_DATA;
			case "EXTERNAL_OBB": EXTERNAL_OBB;
			case "EXTERNAL_MEDIA": EXTERNAL_MEDIA;
			case "EXTERNAL": EXTERNAL;
			case "EXTERNAL_GLOBAL": EXTERNAL_GLOBAL;
			default: StorageUtil.getExternalDirectory(str) + '.' + fileLocal;
		}
	}

	public static function fromStrForce(str:String):StorageType
	{
		final EXTERNAL_DATA = 0;
		final EXTERNAL_OBB = 0;
		final EXTERNAL_MEDIA = 0;
		final EXTERNAL = 0;
		final EXTERNAL_GLOBAL = 0;

		return switch (str)
		{
			case "EXTERNAL_DATA": EXTERNAL_DATA;
			case "EXTERNAL_OBB": EXTERNAL_OBB;
			case "EXTERNAL_MEDIA": EXTERNAL_MEDIA;
			case "EXTERNAL": EXTERNAL;
			case "EXTERNAL_GLOBAL": EXTERNAL_GLOBAL;
			default: StorageUtil.getExternalDirectory(str) + '.' + fileLocal;
		}
	}
}
#end
