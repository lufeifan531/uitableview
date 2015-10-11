//
//  lufeifancell.m
//  uitableview
//
//  Created by 陆非凡 on 15/8/18.
//  Copyright (c) 2015年 陆非凡. All rights reserved.
//

#import "lufeifancell.h"

@implementation lufeifancell

@synthesize lulabel = _lulabel;
@synthesize lutextfield = _lutextfield;
@synthesize luswitch = _luswitch;


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _lulabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 80, 40)];
    _lutextfield = [[UITextField alloc]initWithFrame:CGRectMake(100, 5, 80, 40)];
    _luswitch = [[UISwitch alloc]initWithFrame:CGRectMake(230, 5, 80, 40)];
    [self addSubview:_lulabel];
    [self addSubview:_luswitch];
    [self addSubview:_lutextfield];
    return self;
}
@end
