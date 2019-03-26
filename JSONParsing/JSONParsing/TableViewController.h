//
//  TableViewController.h
//  JSONParsing
//
//  Created by Varsha on 3/25/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController
@property(nonatomic,strong)IBOutlet UITableView *tableview;

@property(nonatomic,strong) NSMutableArray *arrname;
@property(nonatomic,strong) NSMutableArray *arrcountryCode;
@property(nonatomic,strong) NSMutableArray *arrphoneCode;
@property(nonatomic,strong) NSMutableArray *arrcurrencyCode;
@property(nonatomic,strong) NSMutableArray *arrmedia;


@end
