//
//  CSE494LevelsViewController.m
//  Wheres_Miley
//
//  Created by Jorden Whicker on 10/23/13.
//  Copyright (c) 2013 ASU. All rights reserved.
//

#import "CSE494LevelsViewController.h"

#import "CSE494LandscapeViewController.h"

@interface CSE494LevelsViewController ()

@end

@implementation CSE494LevelsViewController


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
	// Do any additional setup after loading the view.
    
    self.level2.enabled = NO;
    self.level3.enabled = NO;
    self.level3.enabled = NO;
    self.level4.enabled = NO;
    self.level5.enabled = NO;
    self.level6.enabled = NO;
    self.level7.enabled = NO;
    self.level8.enabled = NO;
    self.level9.enabled = NO;
    self.level10.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CSE494LandscapeViewController *secondViewController = segue.destinationViewController;
    
    if ([secondViewController isKindOfClass:[CSE494LandscapeViewController class]]) {
        secondViewController.delegate = self;
    }
    
    if ([[segue identifier] isEqualToString:@"level1"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel1.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel1.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level2"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel2.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel2.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level3"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel3.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel3.png";
        [segue.destinationViewController getImageName:imageName];
    }
    //LEVELS 4-10 PREP HERE
    else if([[segue identifier] isEqualToString:@"level4"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel4.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel4.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level5"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel5.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel5.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level6"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel6.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel6.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level7"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel7.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel7.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level8"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel8.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel8.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level9"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel9.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel9.png";
        [segue.destinationViewController getImageName:imageName];
    }
    else if([[segue identifier] isEqualToString:@"level10"]){
        UIImage *image = [UIImage imageNamed:@"MileyLevel10.png"];
        [segue.destinationViewController setLevelImage:image];
        NSString *imageName = @"MileyLevel10.png";
        [segue.destinationViewController getImageName:imageName];
    }
}

-(void)unlockLevel:(int)completionData{
    if(completionData == 2){
        self.level2.enabled = YES;
        [self.label2 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 3){
        self.level3.enabled = YES;
        [self.label3 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 4){
        //UNLOCK
        self.level4.enabled = YES;
        [self.label4 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 5){
        //UNLOCK
        self.level5.enabled = YES;
        [self.label5 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 6){
        //UNLOCK
        self.level6.enabled = YES;
        [self.label6 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 7){
        //UNLOCK
        self.level7.enabled = YES;
        [self.label7 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 8){
        //UNLOCK
        self.level8.enabled = YES;
        [self.label8 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 9){
        //UNLOCK
        self.level9.enabled = YES;
        [self.label9 setTextColor:[UIColor greenColor]];
    }
    else if(completionData == 10){
        //UNLOCK
        self.level10.enabled = YES;
        [self.label10 setTextColor:[UIColor greenColor]];
    }
}



@end
