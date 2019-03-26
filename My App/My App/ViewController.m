//
//  ViewController.m
//  My App
//
//  Created by Varsha on 3/15/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textinput,laboutput,heading;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sub:(id)sender {
    NSString * input = textinput.text;
    laboutput.text = input;
}
@end
