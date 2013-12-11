//
//  DTDViewController.m
//  SimpleTable
//
//  Created by Tom Edgar on 12/11/13.
//  Copyright (c) 2013 Tom Edgar. All rights reserved.
//

#import "DTDViewController.h"

@interface DTDViewController ()

@end

@implementation DTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSArray *array = [[NSArray alloc] initWithObjects:@"Sleepy", @"Sneezy",
                      @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey", @"Thorin",
                      @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin", @"Fili", @"Kili",
                      @"Oin", @"Gloin", @"Bifur", @"Bofur", @"Bombur", nil];
    
    self.dwarves = array;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
