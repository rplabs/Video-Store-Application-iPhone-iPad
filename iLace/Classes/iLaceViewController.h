//
//  iLaceViewController.h
//  iLace
//
//  Created by Alessio on 25/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface iLaceViewController : UIViewController {
	MPMoviePlayerController* m_player;
}
- (void) play;

@end

