//
//  fruit.m
//  a1
//
//  Created by DeptEng on 27/6/2018.
//  Copyright © 2018 DeptEng. All rights reserved.

//

#import "mcr.h"
#import <AVFoundation/AVFoundation.h>

@interface mcr ()
{
}

@end


@implementation mcr



- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)song1:(id)sender {
    
    NSString *finalString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=dhZTNgAs4Fc"];
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:finalString]];
}
- (IBAction)song2:(id)sender {
    
    NSString *finalString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=UCCyoocDxBA"];
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:finalString]];
}
- (IBAction)song3:(id)sender {
    
    NSString *finalString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=8bbTtPL1jRs"];
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:finalString]];
}


@end
