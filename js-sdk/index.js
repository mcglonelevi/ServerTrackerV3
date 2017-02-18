/**
 * Created by Levi on 2/18/2017.
 */
const ServerTracker = require("./lib/ServerTracker");

var st = new ServerTracker('lOZpuLPgIxGfORJ0VlGRU9WuqaxFNA9T', 'k0mwLGdaJLDTW59yLEMKSyejm2pqbAeM');
st.postError("http://localhost:3000/servers/1/error_events.json", "THERE WAS AN ERROR!").then(function (val) {
    console.log(val);
});