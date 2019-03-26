//
//  TableViewCell.m
//  JSONParsing
//
//  Created by Varsha on 3/25/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize imgicon,labelname,labelcountrycode,labelphonecode,labelcurrencycode;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
