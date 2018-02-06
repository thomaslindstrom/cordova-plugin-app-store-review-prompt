/**
 * www: AppStoreReviewPrompt.js
**/

var exec = require('cordova/exec');

exports.prompt = function (success, error) {
    exec(success, error, 'AppStoreReviewPrompt', 'prompt');
};
