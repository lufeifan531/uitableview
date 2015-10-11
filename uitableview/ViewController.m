//
//  ViewController.m
//  uitableview
//
//  Created by 陆非凡 on 15/8/18.
//  Copyright (c) 2015年 陆非凡. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableview1;

@end
@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableview1.dataSource = self;
    _tableview1.delegate = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    NSArray *shuzu = [[NSArray alloc]initWithObjects:@"苏州",@"上海",@"南京",@"北京",@"无锡",@"徐州", nil];
    return [shuzu count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSString *cellid = @"lufeifan";
    NSArray *shuzu = [[NSArray alloc]initWithObjects:@"苏州",@"上海",@"南京",@"北京",@"无锡",@"徐州", nil];
    lufeifancell *cell  = [tableView dequeueReusableCellWithIdentifier:cellid];
    if(cell == nil){
        cell = [[lufeifancell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellid];
    }
    UILabel *label1 = (UILabel*) [cell viewWithTag:1];
    UITextField *textfield1 = (UITextField *)[cell viewWithTag:2];
    UISwitch *switch1 = (UISwitch *)[cell viewWithTag:3];
    textfield1.placeholder = @"shabi";
    switch1.on = YES;
    label1.text = shuzu[indexPath.row];
    lufeifancell *cell2  = [tableView dequeueReusableCellWithIdentifier:@"lufeifan2"];
    UILabel *label2 = (UILabel*) [cell2 viewWithTag:1];
    label2.text = @"fsadufbaksdbfasdf";
    //cell.lulabel.text = [NSString stringWithFormat:@"%@",shuzu[indexPath.row]];
    //cell.lutextfield.placeholder = @"sdfasdfas";
    //cell.luswitch.on = YES;
//    cell.imageView.image = [UIImage imageNamed:@"timg"];
//    cell.textLabel.text = [NSString stringWithFormat:@"%@",shuzu[indexPath.row]];
//    cell.accessoryType = UITableViewCellAccessoryDetailButton;
//    cell.detailTextLabel.text = @"more";
    if(indexPath.row%2 == 0)
    return cell;
    else{
        cell2.backgroundColor = [UIColor grayColor];
        return cell2;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
