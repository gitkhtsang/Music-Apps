//
//  music.m
//  ea
//
//  Created by tsang on 13/7/2018.
//  Copyright © 2018 DeptEng. All rights reserved.
//

#import "music.h"
#import <AVFoundation/AVFoundation.h>

@interface music ()
{
    AVAudioPlayer *_audio;
    NSArray *songs;
    
}
@end


@implementation music

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    songs = @[@"Siesta", @"May the Chords Be with You", @"Night Owl", @"Enthusiast", @"Senorita"];
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    self.slider.maximumValue = 100;
    self.slider.minimumValue = 0;
    self.slider.value = 100;
    self.stepper.stepValue = 1;
    self.stepper.value = 1;
    self.stepper.minimumValue = 0;
    self.volume.text = [NSString stringWithFormat:@"%d", (int)self.slider.value];
    self.loop.text = [NSString stringWithFormat:@"%d", (int)self.stepper.value];
    self.song.text = @"Siesta";
    self.play.enabled = YES;
    self.pause.enabled =  NO;
    self.stop.enabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// datasource methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return songs.count;
}

// delegate methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return songs[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    self.song.text = songs[row];
}
- (IBAction)stepper:(id)sender {
    self.loop.text = [NSString stringWithFormat:@"%d", (int)self.stepper.value];
}
- (IBAction)slider:(id)sender {
    self.volume.text = [NSString stringWithFormat:@"%d", (int)self.slider.value];
    _audio.volume = self.slider.value /100;
}
- (IBAction)playClicked:(id)sender {
    self.pause.enabled = YES;
    self.stop.enabled = YES;
    self.play.enabled = NO;
    if(isResumed) {
        [_audio play];
        return;
    }
    NSString *path;
    if([self.song.text isEqualToString: songs[1]])
        path = [NSString stringWithFormat:@"%@/May_the_Chords_Be_with_You.mp3", [[NSBundle mainBundle] resourcePath]];
    else if([self.song.text isEqualToString: songs[2]])
        path = [NSString stringWithFormat:@"%@/Night_Owl.mp3", [[NSBundle mainBundle] resourcePath]];
    else if([self.song.text isEqualToString: songs[3]])
        path = [NSString stringWithFormat:@"%@/Enthusiast.mp3", [[NSBundle mainBundle] resourcePath]];
    else if([self.song.text isEqualToString: songs[4]])
        path = [NSString stringWithFormat:@"%@/Senorita.mp3", [[NSBundle mainBundle] resourcePath]];
    else if([self.song.text isEqualToString: songs[0]])
        path = [NSString stringWithFormat:@"%@/Siesta.mp3", [[NSBundle mainBundle] resourcePath]];
    else {
        self.song.text = @"Error: No such file";
        self.pause.enabled = NO;
        self.stop.enabled = NO;
        self.play.enabled = YES;
        return;
    }
    
    NSURL *soundurl = [NSURL fileURLWithPath:path];
    _audio = [[AVAudioPlayer alloc] initWithContentsOfURL:soundurl error:nil];
    _audio.currentTime = 0;
    _audio.numberOfLoops = self.stepper.value;    
    [_audio play];

}
- (IBAction)pauseClicked:(id)sender {
    isResumed = true;
    self.play.enabled = YES;
    self.pause.enabled = NO;
    [_audio pause];
}
- (IBAction)stopClicked:(id)sender {
    isResumed = false;
    [_audio stop];
    self.play.enabled = YES;
    self.stop.enabled = NO;
    self.pause.enabled = NO;
}


@end
