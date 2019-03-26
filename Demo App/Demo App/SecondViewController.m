//
//  SecondViewController.m
//  Demo App
//
//  Created by Varsha on 3/19/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//- (IBAction)back:(id)sender {
   //NSArray *array = [self.navigationController viewControllers];
   //[self.navigationController popToViewController:[array objectAtIndex:1] animated:YES];
    
  // SecondViewController *Signup= [[SecondViewController alloc]init];
   // [self.navigationController popToViewController:Signup animated:YES];
    
 //UIViewController *Login = [self.storyboard instantiateViewControllerWithIdentifier:@"Login"];
 //  [self.navigationController pushViewController:Login animated: YES];
    
  // [self.navigationController popViewControllerAnimated:YES];
    
    //NSArray *arrVC = self.navigationController.viewControllers;
    
    
   // [self.navigationController popToViewController:[arrVC objectAtIndex:0] animated:YES];
//}

- (IBAction)btnsignin:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}


- (IBAction)btnMaleAction:(id)sender {
    self.btnMale.selected = !self.btnMale.isSelected;
    
    if (self.btnMale.isSelected)
    {
        self.btnFemale.selected = NO;
    }
    else{
        self.btnMale.selected = YES;
    }
}

- (IBAction)btnFemaleAction:(id)sender {
    
    self.btnFemale.selected = !self.btnFemale.isSelected;
    
    if (self.btnFemale.isSelected)
    {
        self.btnMale.selected = NO;
    }
    else{
        self.btnFemale.selected = YES;
    }
}

//- (IBAction)btnmale:(id)sender {
//}

//- (IBAction)btnfemale:(id)sender {
//}
@end
