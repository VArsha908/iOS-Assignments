//
//  ViewController.m
//  JSONParsing
//
//  Created by Varsha on 3/25/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)doSomethingWithTheJson
{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        NSDictionary *dict = [self JSONFromFile];
        
        NSArray *colours = [dict objectForKey:@"colors"];
        
        for (NSDictionary *colour in colours) {
            NSString *name = [colour objectForKey:@"name"];
            NSLog(@"Colour name: %@", name);
            
            if ([name isEqualToString:@"green"]) {
                NSArray *pictures = [colour objectForKey:@"pictures"];
                for (NSDictionary *picture in pictures) {
                    NSString *pictureName = [picture objectForKey:@"name"];
                    NSLog(@"Picture name: %@", pictureName);
                }
            }
        }
    }
    
    - (NSDictionary *)JSONFromFile
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"colors" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    }
    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onclickbtn:(id)sender {
}
@end
