/**
 * Created by Levi on 2/18/2017.
 */

var md5 = require('md5');
var URI = require('uri');
var request = require('request');

module.exports = class ServerTracker {
    constructor (publicKey, privateKey) {
        this.publicKey = publicKey;
        this.privateKey = privateKey;
    }

    postError (reqUrl, message) {
        var builtUrl = this.buildUrl(reqUrl);

        return new Promise(function (resolve, reject){
            request
                .post(builtUrl, {
                    json: { "message": message  }
                }, function (err, res, body) {
                    if (err) {
                        reject(err);
                    } else {
                        resolve(body);
                    }
                })
        });
    }

    buildUrl (reqUrl) {
        var timestamp = Date.now();
        var url = new URI(reqUrl);
        url += '?publickey=' + this.publicKey;
        url += '&timestamp=' + timestamp;
        url += '&hash=' + md5(this.publicKey + this.privateKey + timestamp);
        return url;
    }

};