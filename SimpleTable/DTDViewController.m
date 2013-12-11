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

#pragma mark - tableView Data source

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellID = @"CellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    
    if (cell == Nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellID];
    }
    
    //config the cell
    NSInteger row = indexPath.row;
    cell.textLabel.text = [self.dwarves objectAtIndex:row];
    NSLog(@"Called:");
    return cell;
    
}


@end











