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
    }
    else if([_imgName isEqualToString:@"MileyLevel2.png"]){
        //test level 2 points
        if(point.x>=260&&point.x<=290&&point.y<=225&&point.y>=193.5){
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
    }
    else if([_imgName isEqualToString:@"MileyLevel3.png"]){
        //test level 3 points
        if(point.x>=116&&point.x<=149.5&&point.y<=168.5&&point.y>=149){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [self.delegate unlockLevel:4];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel4.png"]){
        //test level 3 points
        if(point.x>=280.5&&point.x<=292&&point.y<=380&&point.y>=368.5){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [self.delegate unlockLevel:5];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel5.png"]){
        //test level 3 points
        if(point.x>=252.5&&point.x<=268.5&&point.y<=218&&point.y>=208.5){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [self.delegate unlockLevel:6];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel6.png"]){
        //test level 3 points
        if(point.x>=85&&point.x<=97&&point.y<=134.5&&point.y>=118){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [self.delegate unlockLevel:7];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel7.png"]){
        //test level 3 points
        if(point.x>=45&&point.x<=74.5&&point.y<=115.5&&point.y>=99.5){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [self.delegate unlockLevel:8];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel8.png"]){
        //test level 3 points
        if(point.x>=201.5&&point.x<=211.5&&point.y<=135.5&&point.y>=127){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [self.delegate unlockLevel:9];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel9.png"]){
        //test level 3 points
        if(point.x>=277&&point.x<=302&&point.y<=383.5&&point.y>=354){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You found Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            [self.delegate unlockLevel:10];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }
    else if([_imgName isEqualToString:@"MileyLevel10.png"]){
        //test level 3 points
        if(point.x>=96.5&&point.x<=106.5&&point.y<=382&&point.y>=374){
            //ALERT WILL GO HERE
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                            message:@"You beat Where's Miley!"
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Levels",nil];
            //UNLOCK LEVEL 4 WILL GO HERE
            //[self.delegate unlockLevel:10];
            [alert show];
            [alert reloadInputViews];
            
        }
        //ELSE (THIS IS WHERE WE WILL WORK WITH 'LIVES'
    }



}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}





@end
