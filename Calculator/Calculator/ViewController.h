//
//  ViewController.h
//  Calculator
//
//  Created by Varsha on 3/22/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import <UIKit/UIKit.h>

int operation;
double displayNumber;
double resultNumber;
BOOL isDecimal;

@interface ViewController : UIViewController{
IBOutlet UILabel *result;
}

-(void)setResultWithNumber:(int)theNumber;
-(void)operationWithNumber:(int)theNumber;
- (IBAction)clear:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)equals:(id)sender;
- (IBAction)dot:(id)sender;

@end

