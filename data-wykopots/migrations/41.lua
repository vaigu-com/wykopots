function onUpdateDatabase()
	logger.info("Updating database to version 41 (house transfer ownership on startup)")
	db.query("ALTER TABLE `houses` ADD `new_owner` int(11) NOT NULL DEFAULT '-1';")
	return true
end
