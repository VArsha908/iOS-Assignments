//
//  TableViewCell.h
//  JSONParsing
//
//  Created by Varsha on 3/25/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgicon;
@property (strong, nonatomic) IBOutlet UILabel *labelname;
@property (strong, nonatomic) IBOutlet UILabel *labelcountrycode;
@property (strong, nonatomic) IBOutlet UILabel *labelphonecode;
@property (strong, nonatomic) IBOutlet UILabel *labelcurrencycode;


@end
