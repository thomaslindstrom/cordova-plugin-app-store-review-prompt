# cordova-plugin-app-store-review-prompt

Prompt the app user for a review of your app.

## Methods

### `prompt`

Opens a `SKStoreReviewController` prompt if available, throws an error if it's not. You will need to handle devices on < iOS 10.3+ yourself.

#### Example:
```javascript
const {AppStoreReviewPrompt} = window.cordova.plugins;

AppStoreReviewPrompt.prompt(() => {
    console.log('Prompted successfully.');
}, (error) => {
    console.error(error); // > SKStoreReviewController not supported.
});
```
