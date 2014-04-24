//
//  LukeFlowerViewController.m
//  LukeFlower
//
//  Created by Luke on 24/04/2014.
//  Copyright (c) 2014 Luke. All rights reserved.
//

#import "LukeFlowerViewController.h"

@interface LukeFlowerViewController ()

@end

@implementation LukeFlowerViewController

@synthesize colorChoice;
@synthesize flowerView;
@synthesize flowerDetailView;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
