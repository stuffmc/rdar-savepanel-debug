//
//  AppDelegate.m
//  rdar-savepanel-debug
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 04.12.13.
//  Copyright (c) 2013 Manuel "StuFF mc" Carrasco Molina. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self click:nil];
}

- (IBAction)click:(id)sender {
    NSSavePanel *savepanel = [NSSavePanel savePanel];
    [savepanel setAllowedFileTypes:@[@"txt"]];
    [savepanel beginSheetModalForWindow:_window completionHandler:^(NSInteger result) {
        
        // Steps to reproduce
        // - Without Sandboxing (turn it off!), when at this breakpoint, you can type in the Debug Console (e.g. "p result")
        // - With Sandboxing, you can't! It seems the PowerBox or something is having "control" over the Keyboard Input.
        // ** Worst even some times when debugging/running is stopped, Xcode doesn't have a Keyboard anymore either, until I restart it!
        
        NSLog(@"%ld", (long)result);
    }];
}

@end
