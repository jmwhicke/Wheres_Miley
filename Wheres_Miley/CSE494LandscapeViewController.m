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

    int counter = 2;

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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch =[touches anyObject];
    
    CGPoint point = [touch locationInView:self.view];
    /*NSLog(@"X location: %f", point.x);
    NSLog(@"Y location: %f", point.y);*/

    if([_imgName isEqualToString:@"MileyLevel1.png"])
    {
        if(point.x>=86&&point.x<=111&&point.y<=263&&point.y>=243.5)
        {
            counter = 2;
            
            //ALERT WILL GO HERE
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            [self.delegate unlockLevel:2];
            [alert show];
            [alert reloadInputViews];
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
        else
        {
            if (counter == 2)
            {
                _lifeOne.hidden = YES;
                counter--;
            }
            else if (counter == 1)
            {
                _lifeTwo.hidden = YES;
                counter--;
            }
            else
            {
                _lifeThree.hidden = YES;
                counter--;
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Go Home!"
                                                                message:@"You ran out of lives, try again."
                                                               delegate:self
                                                      cancelButtonTitle:nil
                                                      otherButtonTitles:@"Levels",nil];
                [alert show];
                [alert reloadInputViews];
                counter = 2;
            }
            
        }
    }
    else if([_imgName isEqualToString:@"MileyLevel2.png"]){
        //test level 2 points
        if(point.x>=260&&point.x<=290&&point.y<=225&&point.y>=193.5)
        {
            counter = 2;

            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            [self.delegate unlockLevel:3];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
        else
        {
            if (counter == 2)
            {
                _lifeOne.hidden = YES;
                counter--;
            }
            else if (counter == 1)
            {
                _lifeTwo.hidden = YES;
                counter--;
            }
            else
            {
                _lifeThree.hidden = YES;
                counter--;
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Go Home!"
                                                                message:@"You ran out of lives, try again."
                                                               delegate:self
                                                      cancelButtonTitle:nil
                                                      otherButtonTitles:@"Levels",nil];
                [alert show];
                [alert reloadInputViews];
                counter = 2;
            }
            
        }
    }
    else if([_imgName isEqualToString:@"MileyLevel3.png"]){
        //test level 3 points
        if(point.x>=116&&point.x<=149.5&&point.y<=168.5&&point.y>=149)
        {
            counter = 2;

            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
        else
        {
            if (counter == 2)
            {
                _lifeOne.hidden = YES;
                counter--;
            }
            else if (counter == 1)
            {
                _lifeTwo.hidden = YES;
                counter--;
            }
            else
            {
                _lifeThree.hidden = YES;
                counter--;
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Go Home!"
                                                                message:@"You ran out of lives, try again."
                                                               delegate:self
                                                      cancelButtonTitle:nil
                                                      otherButtonTitles:@"Levels",nil];
                [alert show];
                [alert reloadInputViews];
                counter = 2;
            }
            
        }
    }

}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}





@end
