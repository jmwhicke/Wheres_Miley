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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"level1"]){
        //[[segue destinationViewController] ];
        UIImage *image = [UIImage imageNamed:@"MileyLevel1.png"];
        [segue.destinationViewController setLevelImage:image];
        
    }
    else if([[segue identifier] isEqualToString:@"level2"]){
        
        
    }
    else if([[segue identifier] isEqualToString:@"level3"]){
        
        
    }
}


@end
