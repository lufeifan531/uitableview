//
//  lufeifancell.h
//  uitableview
//
//  Created by 陆非凡 on 15/8/18.
//  Copyright (c) 2015年 陆非凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lufeifancell : UITableViewCell
@property (retain,nonatomic) UILabel *lulabel;
@property (retain,nonatomic) UITextField *lutextfield;
@property (retain,nonatomic) UISwitch *luswitch;
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
@end
