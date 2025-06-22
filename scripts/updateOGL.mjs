import fs from 'fs';

fs.readFile('KPjournal/Kobold_Press_OGL.json', function(err, data) {
	if (err) throw err;

	const entry = JSON.parse(data);
	const OGL = entry.pages[0].text.content.replace(/<h1>([^<]+)<\/h1>/g, "# $1").replace(/<strong>([^<]+)<\/strong>/g, "**$1**").replace(/<p>/g, "  \n").replace(/<br>/g, "  \n");
	fs.writeFile('LICENSE.md', OGL, err => {
		if (err) throw err;
	});
});
