extends Node

const MOD_DIR = "Stanley-SentryMod/"
const TESTMOD_LOG = "sentry_mod"

var dir = ""

func _init():
	ModLoaderLog.info("Init", TESTMOD_LOG)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	
func _ready():
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")
	ContentLoader.load_data(dir + "content_data/content.tres", TESTMOD_LOG)
	ModLoaderMod.add_translation("res://mods-unpacked/Stanley-SentryMod/translations/sentry_translations.en.translation")
	ModLoaderLog.info("Ready", TESTMOD_LOG)
	
