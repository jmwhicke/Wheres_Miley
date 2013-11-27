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

@property (nonatomic,strong) IBOutlet UILabel* label2;
@property (nonatomic,strong) IBOutlet UILabel* label3;
@property (nonatomic,strong) IBOutlet UILabel* label4;
@property (nonatomic,strong) IBOutlet UILabel* label5;
@property (nonatomic,strong) IBOutlet UILabel* label6;
@property (nonatomic,strong) IBOutlet UILabel* label7;
@property (nonatomic,strong) IBOutlet UILabel* label8;
@property (nonatomic,strong) IBOutlet UILabel* label9;
@property (nonatomic,strong) IBOutlet UILabel* label10;


@end

