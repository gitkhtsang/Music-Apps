//
//  ViewController.m
//  a1
//
//  Created by DeptEng on 27/6/2018.
//  Copyright © 2018 DeptEng. All rights reserved.
#import "ViewController.h"


@interface ViewController()
{
}

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)web:(id)sender {

    NSString *finalString = [NSString stringWithFormat:@"http://www.google.com/search?q=best+bands"];
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:finalString]];
}
@end
