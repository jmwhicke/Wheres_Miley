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
    
    self.view.backgroundColor = [UIColor blackColor];
    
    self.level2.enabled = NO;
    self.level3.enabled = NO;
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
}

-(void)unlockLevel:(int)completionData{
    if(completionData == 2){
        self.level2.enabled = YES;
        [self.level2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    else if(completionData == 3){
        self.level3.enabled = YES;
        [self.level3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    else if(completionData == 4){
        //UNLOCK
    }
    else if(completionData == 5){
        //UNLOCK
    }
    else if(completionData == 6){
        //UNLOCK
    }
    else if(completionData == 7){
        //UNLOCK
    }
    else if(completionData == 8){
        //UNLOCK
    }
    else if(completionData == 9){
        //UNLOCK
    }
    else if(completionData == 10){
        //UNLOCK
    }
}



@end
