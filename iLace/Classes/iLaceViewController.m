//
//  iLaceViewController.m
//  iLace
//
//  Created by Alessio on 25/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iLaceViewController.h"

@implementation iLaceViewController

- (void) viewDidAppear:(BOOL)animated
{
	[self play];
}
- (void) play
{
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"entry" withExtension:@"m4v"];
	
    m_player = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [m_player.backgroundView setBackgroundColor:[UIColor blackColor]];
    [m_player.view setBackgroundColor:[UIColor blackColor]];
    [m_player setControlStyle:MPMovieControlStyleNone];
    [[m_player view] setFrame:[self.view bounds]];
	
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayBackDidFinish:) name:MPMoviePlayerPlaybackDidFinishNotification object:nil];
	
    [m_player play];
	
    [self.view addSubview:[m_player view]];
}

- (void) moviePlayBackDidFinish:(NSNotification*)_notification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification
                                                  object:nil];
	
    [m_player.view removeFromSuperview];
    [m_player stop];
    [m_player release];
    m_player = nil;
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/





/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
