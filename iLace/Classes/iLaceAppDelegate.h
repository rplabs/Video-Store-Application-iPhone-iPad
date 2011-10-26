//
//  iLaceAppDelegate.h
//  iLace
//
//  Created by Alessio on 25/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iLaceViewController;

@interface iLaceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iLaceViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iLaceViewController *viewController;

@end

