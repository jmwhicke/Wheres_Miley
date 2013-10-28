//
//  CSE494LandscapeViewController.m
//  Wheres_Miley
//
//  Created by Jorden Whicker on 10/23/13.
//  Copyright (c) 2013 ASU. All rights reserved.
//

#import "CSE494LandscapeViewController.h"

#import "CSE494LevelsViewController.h"


@interface CSE494LandscapeViewController ()



@end

@implementation CSE494LandscapeViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [self.level setImage:_levelImage];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setLevelImage:(UIImage*)image{
    _levelImage = image;
}

-(void)getImageName:(NSString*)imageName{
    _imgName = imageName;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch =[touches anyObject];
    
    CGPoint point = [touch locationInView:self.view];
    
    if([_imgName  isEqual: @"MileyLevel1.png"]){
        if(point.x>=86&&point.x<=111&&point.y>=209&&point.y<=225){
            //ALERT WILL GO HERE
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName  isEqual: @"MileyLevel2.png"]){
        //points for level2
    }
    else if([_imgName  isEqual: @"MileyLevel3.png"]){
        //points for level3
    }
 
}

@end
