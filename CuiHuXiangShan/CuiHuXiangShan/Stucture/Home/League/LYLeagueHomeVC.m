//
//  LeagueHomeVC.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYLeagueHomeVC.h"

#import "LYLeagueActivity.h"

#import "LYLeagueHomeCell.h"

@interface LYLeagueHomeVC ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *activityList;

@end

@implementation LYLeagueHomeVC

- (NSMutableArray *)activityList{
    if (!_activityList) {
        _activityList = [[LYLeagueActivity fakeList] mutableCopy];
    }
    
    return _activityList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitleWithBackBtn:@"联盟商家"];
    
    [self setUpView];
}


- (void)setUpView{
    //1 tableView
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.dataSource = self;
    tableView.delegate =self;
    _tableView = tableView;
}

#pragma mark - datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.activityList.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LYLeagueHomeCell *cell = [LYLeagueHomeCell cellWithTableView:tableView];
    cell.leagueActivity = self.activityList[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [LYLeagueHomeCell viewHeight];
}





@end
