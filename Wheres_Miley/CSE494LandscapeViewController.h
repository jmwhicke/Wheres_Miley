//
//  CSE494LandscapeViewController.h
//  Wheres_Miley
//
//  Created by Jorden Whicker on 10/23/13.
//  Copyright (c) 2013 ASU. All rights reserved. dfsd
//

#import <UIKit/UIKit.h>

@interface CSE494LandscapeViewController : UIViewController<UIAlertViewDelegate>

@property (nonatomic, strong) IBOutlet UIImageView* level;


@property (nonatomic, strong) UIImage* levelImage;
@property (nonatomic, strong) NSString* imgName;


-(void)setLevelImage:(UIImage*)image;

-(void)getImageName:(NSString*)imageName;
@end

