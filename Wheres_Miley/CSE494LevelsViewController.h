//
//  CSE494LevelsViewController.h
//  Wheres_Miley
//
//  Created by Jorden Whicker on 10/23/13.
//  Copyright (c) 2013 ASU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSE494LandscapeViewController.h"

@interface CSE494LevelsViewController : UIViewController <MyDataDelegate>

@property (nonatomic,strong) IBOutlet UIButton* level1;
@property (nonatomic,strong) IBOutlet UIButton* level2;
@property (nonatomic,strong) IBOutlet UIButton* level3;
@property (nonatomic,strong) IBOutlet UIButton* level4;
@property (nonatomic,strong) IBOutlet UIButton* level5;
@property (nonatomic,strong) IBOutlet UIButton* level6;
@property (nonatomic,strong) IBOutlet UIButton* level7;
@property (nonatomic,strong) IBOutlet UIButton* level8;
@property (nonatomic,strong) IBOutlet UIButton* level9;
@property (nonatomic,strong) IBOutlet UIButton* level10;

@end

