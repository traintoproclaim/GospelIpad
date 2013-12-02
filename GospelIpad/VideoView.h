//
//  VideoView.h
//  GospelIpad
//
//  Created by vibha on 5/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface VideoView : UIViewController
{
    IBOutlet UIButton *play;
    MPMoviePlayerController *themovie;
}
@property(nonatomic,retain) MPMoviePlayerController *themovie;
@property(nonatomic,retain) UIButton *play;

-(void)longTap;
-(void)playmovie;


@end
