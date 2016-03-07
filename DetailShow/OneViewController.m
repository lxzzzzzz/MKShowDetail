//
//  OneViewController.m
//  DetailShow
//
//  Created by 微指 on 16/3/7.
//  Copyright © 2016年 CityNight. All rights reserved.
//

#import "OneViewController.h"

@implementation OneViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%s",__func__);
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID
                ];
        cell.backgroundColor = [UIColor lightGrayColor];
    }
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"123123123%ld",indexPath.row];
    
    return cell;
}
@end