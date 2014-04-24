//
//  LukeFlowerViewController.h
//  LukeFlower
//
//  Created by Luke on 24/04/2014.
//  Copyright (c) 2014 Luke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LukeFlowerViewController : UIViewController {

    // declare outlets
    IBOutlet UISegmentedControl *colorChoice;
    IBOutlet UIWebView *flowerView;
    IBOutlet UIWebView *flowerDetailView;
    
}

// declare outlet variables as properties for easy access in view controller
// where @synthesize directive used after the @implementation directive
@property (nonatomic, retain) UISegmentedControl *colorChoice;
@property (nonatomic, retain) UIWebView *flowerView;
@property (nonatomic, retain) UIWebView *flowerDetailView;

// declare action instance methods. accepts 'id' generic data type object as parameter
-(IBAction)getFlower:(id)sender;
-(IBAction)toggleFlowerDetail:(id)sender;

@end
