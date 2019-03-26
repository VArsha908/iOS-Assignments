//
//  ViewController.m
//  Demo App
//
//  Created by Varsha on 3/16/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

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


- (IBAction)btn:(id)sender {
    SecondViewController *Signup = [self.storyboard instantiateViewControllerWithIdentifier:@"Signup"];
    [self.navigationController pushViewController:Signup animated:YES];
}

@end
