var app = express();
var server = http.createServer(app);

app.use(express.static(__dirname + '/uploads'));

console.log("listen to 9000");
server.listen(9000);
