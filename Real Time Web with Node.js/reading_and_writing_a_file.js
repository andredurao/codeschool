var fs = require('fs') // FilySytem

var file = fs.createReadStream('readme.md');
var newFile = fs.createWriteStream('readme_copy.md');

file.pipe(newFile);
