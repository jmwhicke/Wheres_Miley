//
//  CSE494HomeViewController.m
//  Wheres_Miley
//
//  Created by Jorden Whicker on 10/23/13.
//  Copyright (c) 2013 ASU. All rights reserved.
//

#import "CSE494HomeViewController.h"

@interface CSE494HomeViewController ()

@end

@implementation CSE494HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor blackColor];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    // Audio Play
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/wreckingBall.m4a", [[NSBundle mainBundle] resourcePath]]];
    
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    audioPlayer.numberOfLoops = -1;
    audioPlayer.volume = 0.5;
    if (audioPlayer == nil)
        NSLog([error description]);
    else
        [audioPlayer play];
}

-(void)viewWillDisappear:(BOOL)animated{
    [audioPlayer stop];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
