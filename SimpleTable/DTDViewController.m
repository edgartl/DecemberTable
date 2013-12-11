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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellID];
    }
    
    //config the cell
    UIImage *image = [UIImage imageNamed:@"star.png"];
    cell.imageView.image = image;
    
    UIImage *imageHighlight = [UIImage imageNamed:@"star2.png"];
    cell.imageView.highlightedImage = imageHighlight;
    
    
    NSInteger row = indexPath.row;
    cell.textLabel.text = [self.dwarves objectAtIndex:row];
    
    if (row < 7) {
        cell.detailTextLabel.text = @"Mr. Disney";
    } else {
        cell.detailTextLabel.text = @"Mr. Tolkien";
    }
    
    
    return cell;
    
}

#pragma mark - tableView delegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"You picked: %@", [self.dwarves objectAtIndex:indexPath.row]);
}

@end


















