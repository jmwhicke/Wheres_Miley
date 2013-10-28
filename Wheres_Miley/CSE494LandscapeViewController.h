//
//  CSE494LandscapeViewController.h
//  Wheres_Miley
//
//  Created by Jorden Whicker on 10/23/13.
//  Copyright (c) 2013 ASU. All rights reserved. TEST!
//

#import <UIKit/UIKit.h>

@interface CSE494LandscapeViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView* level;


@property (nonatomic, strong) UIImage* levelImage;



-(void)setLevelImage:(UIImage*)image;

@end
