/**
 * src/ios: AppStoreReviewPrompt.h
**/

#import <Cordova/CDVPlugin.h>

@interface AppStoreReviewPrompt : CDVPlugin
    - (void) prompt: (CDVInvokedUrlCommand*) command;
@end;
