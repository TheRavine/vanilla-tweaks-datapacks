RAVINE_DATAPACKS=afk_display anti_enderman_grief armor_statues coordinates_hud custom_nether_portals double_shulker_shells graves more_mob_heads multiplayer_sleep nether_portal_coords player_head_drops silence_mobs timber track_raw_statistics track_statistics wandering_trades_hermit_edition

extract:
	bash extract-datapacks.sh *.zip
	rm *.zip

clean:
	find . -type d \! -name '.*' -maxdepth 1 -print0 | xargs -0 rm -r

ravine_bundle:
	zip -r ravine.zip ${RAVINE_DATAPACKS}

.PHONY: clean extract
