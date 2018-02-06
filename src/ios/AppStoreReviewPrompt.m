/**
 * src/ios: AppStoreReviewPrompt.m
**/

#import <Cordova/CDVPlugin.h>
#import <StoreKit/StoreKit.h>
#import "AppStoreReviewPrompt.h"

@implementation AppStoreReviewPrompt
    - (void) prompt: (CDVInvokedUrlCommand*) command {
        [self.commandDelegate runInBackground: ^{
            CDVPluginResult* pluginResult = nil;
            
            if ([SKStoreReviewController class]) {
                [SKStoreReviewController requestReview];
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
            } else {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"SKStoreReviewController not supported."];
            }
            
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        }];
    }
@end;
