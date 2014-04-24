//
//  LukeFlowerViewController.m
//  LukeFlower
//
//  Created by Luke on 24/04/2014.
//  Copyright (c) 2014 Luke. All rights reserved.
//

#import "LukeFlowerViewController.h"

@implementation LukeFlowerViewController

@synthesize colorChoice;
@synthesize flowerView;
@synthesize flowerDetailView;

// fetch flower with specified session and color
-(IBAction)getFlower:(id)sender {
    
    // declare variable instances
    NSURL *imageURL;
    NSURL *detailURL;
    NSString *imageURLString;
    NSString *detailURLString;
    NSString *color;
    int sessionID;
    
    // retrieve title of selected segment from the segment control instance
    // of outlet colorChoice using methods and properties from it UISegmentControl class
    color=[colorChoice titleForSegmentAtIndex:
           colorChoice.selectedSegmentIndex];
    
    // generate random number for sessionID
    sessionID=random()%10000;
    
    // format urls placeholders with color and sessionid of flower request
    imageURLString=[[NSString alloc] initWithFormat:
                    @"http://www.floraphotographs.com/showrandomiphone.php?color=%@&session=%d"
                    ,color,sessionID];
    detailURLString=[[NSString alloc] initWithFormat:
                     @"http://www.floraphotographs.com/detailiphone.php?session=%d"
                     ,sessionID];
    
    // allocate and create NSURL objects
    imageURL=[[NSURL alloc] initWithString:imageURLString];
    detailURL=[[NSURL alloc] initWithString:detailURLString];
    
    // load NSURL objects as parameters indirectly using method from UIWebView class to update views
    [flowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
    [flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
    
    // translucent overlay of details over main flower image
    flowerDetailView.backgroundColor=[UIColor clearColor];
    
    // release memory used as getFlower potentially called repeatedly
    [imageURLString release];
    [detailURLString release];
    [imageURL release];
    [detailURL release];
    
}

// hide flower detail view when toggle button is off
-(IBAction)toggleFlowerDetail:(id)sender {
    flowerDetailView.hidden=![sender isOn];
}

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
    flowerDetailView.hidden=YES;
    [self getFlower:nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc {
	[colorChoice release];
	[flowerDetailView release];
	[flowerView release];
    [super dealloc];
}

@end
