//
//  FISPrimeTimeTableViewController.m
//  PrimeTime
//
//  Created by Flatiron School on 6/28/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPrimeTimeTableViewController.h"

@interface FISPrimeTimeTableViewController ()

@end

@implementation FISPrimeTimeTableViewController
@synthesize primeNumbersArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(NSInteger)primeNumber:(NSInteger)prime
{
    NSInteger num = 0;
    while ([primeNumbersArray count] <= prime + 1)
    {
        BOOL isAPrime = YES;
        num = num + 1;
    
        for (NSInteger x = 2; x < num; x++)
        {
            if (num % x == 0)
            {
                isAPrime = NO;
                break;
            }
        }
        
        if (isAPrime)
        {
            [primeNumbersArray addObject:@(num)];
        }
        
    }
    
    return [primeNumbersArray[prime] integerValue];
  
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"primeCell" forIndexPath:indexPath];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"primeCell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%li", [self primeNumber:indexPath.row + 1]];
    
    return cell;
    
}



@end
