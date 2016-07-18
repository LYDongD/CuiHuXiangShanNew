//
//  YBLaterActivityVC.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/18.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "YBLaterActivityVC.h"

#import "LYLaterActivityContentCell.h"
#import "LYLaterActivityHeadView.h"

@interface YBLaterActivityVC ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong)NSDictionary *contentDic;

@end

@implementation YBLaterActivityVC

- (NSDictionary *)contentDic{
    if (!_contentDic) {
        _contentDic = @{@"主题":@"huafubante--全场单品半价优惠",
                        @"时间":@"2016/07/15--2016/07/14",
                        @"详情":@"无需预约，消费高峰时可能需要等位\n每人最多购买一张\n可免费使用包间\n堂食外带均可，可免费打包\n提供免费WIFI",
                        @"地址":@"深圳市龙岗区大运体育馆旁"};
    }
    
    return _contentDic;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitleWithBackBtn:@"近期举办活动"];
    
    [self setUpView];
    
}

- (void)setUpView{
    
    //tableView
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.dataSource = self;
    tableView.delegate =self;
    _tableView = tableView;
    
    //headView
//    LYLaterActivityHeadView *headView = [LYLaterActivityHeadView headView];
//    headView.headImageView.image = [UIImage imageNamed:]
}

#pragma mark -tableView dataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contentDic.allKeys.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) { //内容section
        LYLaterActivityContentCell *cell = [LYLaterActivityContentCell cellWithTableView:tableView];
        cell.title = [NSString stringWithFormat:@"%@:",self.contentDic.allKeys[indexPath.row]];
        cell.content = self.contentDic.allValues[indexPath.row];
        return cell;
    }else{ //评论section
        return nil;
    }
    
    return nil;
}

#pragma mark - tableView delegate





@end
