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
    /*NSLog(@"X location: %f", point.x);
    NSLog(@"Y location: %f", point.y);*/

    if([_imgName isEqualToString:@"MileyLevel1.png"]){
        if(point.x>=86&&point.x<=111&&point.y<=263&&point.y>=243.5){
            //ALERT WILL GO HERE
            NSLog(@"Test");
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:nil
                                                  cancelButtonTitle:@"Next Level"
                                                  otherButtonTitles:nil];
            
            [alert show];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel2.png"]){
        //test level 2 points
    }
    else if([_imgName isEqualToString:@"MileyLevel3.png"]){
        //test level 3 points
    }


}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        
    }
}


@end
