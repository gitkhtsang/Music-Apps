//
//  segment.m
//  a1
//
//  Created by DeptEng on 27/6/2018.
//  Copyright © 2018 DeptEng. All rights reserved.

//
#import "segment.h"

@interface segment ()
{
segment *point;
}
- (void)seg;
@property (strong, nonatomic) IBOutlet UITextView *detail;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segment;
@property (strong, nonatomic) IBOutlet UIButton *btn;
@property (strong, nonatomic) IBOutlet UIImageView *image;

@end

@implementation segment


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self seg];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segColorBtnTapped:(id)sender {
    [self seg];
}
-(void)seg{
    UIImage *image;
    if(self.segment.selectedSegmentIndex==0){
        self.detail.text=@"My Chemical Romance (often abbreviated as MCR) was an American rock band from Newark, New Jersey, active from 2001 to 2013. The band's best-known lineup consisted of lead vocalist Gerard Way, guitarists Ray Toro and Frank Iero, bassist Mikey Way, and drummer Bob Bryar, accompanied by keyboardist James Dewees since 2007.";
        [self.btn  setTitle:@"More About My Chemical Romance" forState:UIControlStateNormal];
        self->point = [self.storyboard instantiateViewControllerWithIdentifier:@"mcr"];
        image = [UIImage imageNamed: @"mcr.jpg"];    }
    else if(self.segment.selectedSegmentIndex==1){
        self.detail.text=@"Panic! at the Disco is an American rock band from Las Vegas, Nevada, formed in 2004 by childhood friends Brendon Urie, Ryan Ross, Spencer Smith and Brent Wilson. Since 2015, vocalist Urie is the only official member in the band, supported on tours by guitarist Kenneth Harris, drummer Dan Pawlovich, and bassist Nicole Row.";
        [self.btn  setTitle:@"More About Panic! At The Disco" forState:UIControlStateNormal];
        self->point = [self.storyboard instantiateViewControllerWithIdentifier:@"patd"];
        image = [UIImage imageNamed: @"patd.jpg"];
    }
    else if(self.segment.selectedSegmentIndex==2){
        self.detail.text=@"Twenty One Pilots (stylized as twenty one pilots, and sometimes as twenty øne piløts) is an American musical duo originating from Columbus, Ohio. The band was formed in 2009 by lead vocalist Tyler Joseph along with former members Nick Thomas and Chris Salih, who left in 2011, and currently consists of Joseph and drummer Josh Dun.";
        [self.btn  setTitle:@"More About Twenty One Pilots" forState:UIControlStateNormal];
        self->point = [self.storyboard instantiateViewControllerWithIdentifier:@"top"];
        image = [UIImage imageNamed: @"top.jpg"];
    }
    [self.image setImage:image];
}
- (IBAction)btnClicked:(id)sender {
    [self presentViewController:point animated:YES completion:nil];
}

@end
