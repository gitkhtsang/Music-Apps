//
//  fruit.m
//  a1
//
//  Created by DeptEng on 27/6/2018.
//  Copyright © 2018 DeptEng. All rights reserved.
#import "top.h"

@interface top ()
{

}

@end

@implementation top



- (void)viewDidLoad {
    [super viewDidLoad];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)song1:(id)sender {
    NSString *finalString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=92XVwY54h5k"];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:finalString]];

    
}
- (IBAction)song2:(id)sender {
    NSString *finalString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=3Ez7vi-kQdM"];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:finalString]];

}
- (IBAction)song3:(id)sender {
    NSString *finalString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=K9sZyS6d23E"];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:finalString]];
}
@end
