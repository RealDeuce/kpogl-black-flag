#!/bin/sh

pack () {
	local name=$1
	echo node_modules/.bin/fvtt package --type Module --in "${name}" --out packs pack "${name}"
	node_modules/.bin/fvtt package --type Module --in "${name}" --out packs pack "${name}"
}

rm -rf packs
pack KPitems
pack KPjournal
pack KPmonsters
pack KPspells

rm koboldpressogl.zip
zip -r koboldpressogl.zip lang module.json packs
