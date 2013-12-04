//
//  CSE494LandscapeViewController.h
//  Wheres_Miley
//
//  Created by Jorden Whicker on 10/23/13.
//  Copyright (c) 2013 ASU. All rights reserved. dfsd
//

@protocol MyDataDelegate

-(void)unlockLevel:(int)completionData;

@end

#import <UIKit/UIKit.h>

#import "CSE494LevelsViewController.h"

@interface CSE494LandscapeViewController : UIViewController <UIAlertViewDelegate>

@property (nonatomic, strong) IBOutlet UIImageView* level;
@property (nonatomic, strong) UIImage* levelImage;
@property (nonatomic, strong) NSString* imgName;
@property (nonatomic) id<MyDataDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIImageView *lifeOne;
@property (weak, nonatomic) IBOutlet UIImageView *lifeTwo;
@property (weak, nonatomic) IBOutlet UIImageView *lifeThree;
@property (nonatomic, retain) NSTimer *myTimer;

-(void)setLevelImage:(UIImage*)image;

-(void)getImageName:(NSString*)imageName;

@end