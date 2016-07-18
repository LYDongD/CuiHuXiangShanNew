//
//  LYHomeVC.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/16.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYHomeVC.h"
#import <iCarousel.h>

#import "LYLeagueHomeVC.h"
#import "LYProjectHomeVC.h"
#import "LYScoreShopVC.h"
#import "LYPaymentHomeVC.h"

#import "LYPageControl.h"
#import "LYAdLabelVIew.h"
#import "LYHomeCell.h"


@interface LYHomeVC ()<iCarouselDataSource,iCarouselDelegate>

@property (nonatomic, strong) NSArray *adImgList;
@property (nonatomic, weak) UIView *headView;
@property (nonatomic, weak) LYPageControl *pageControl;

@property (nonatomic, strong) NSArray *logoList;
@property (nonatomic, strong) NSArray *titleList;

@property (nonatomic, assign) CGFloat headHeight;


@end

@implementation LYHomeVC

- (NSArray *)adImgList{
    if (!_adImgList) {
        _adImgList = @[@"adExample",@"adExample",@"adExample"];
    }
    return _adImgList;
}

- (NSArray *)logoList{
    if (!_logoList) {
        _logoList = @[@"商家icon",@"项目icon",@"积分商城icon",@"付款icon"];
    }
    
    return _logoList;
}

- (NSArray *)titleList{
    if (!_titleList) {
        _titleList = @[@"联盟商家",@"项目展示",@"积分商城",@"付款消费"];
    }
    
    return _titleList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitleWithBackBtn:@"翠湖香山"];
    
    [self setUpView];
}

- (void)setUpView{
    
    //1 菜单
    [self configureMenuView];
    
    //2 头部
    [self configureHeadView];
}



- (void)configureHeadView{
    UIView *headView = [[UIView alloc]init];
    headView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:headView];
    headView.frame = CGRectMake(0, NavigationBar_HEIGHT, screenWidth, self.headHeight);
    _headView = headView;
    
    //1 轮播
    NSInteger adLabelHeight = 40;
    iCarousel *adView = [[iCarousel alloc]init];
    [headView addSubview:adView];
    adView.frame = CGRectMake(0, 0, screenWidth, headView.height - adLabelHeight);
    adView.dataSource = self;
    adView.delegate = self;
    adView.bounces = NO;
    adView.pagingEnabled = YES;
    adView.type = iCarouselTypeLinear;
    
    //1.2 pageControl
     LYPageControl *pageControl = [[LYPageControl alloc]init];
    _pageControl = pageControl;
    [adView addSubview:pageControl];
    [pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(adView.mas_right).offset(-10);
        make.width.greaterThanOrEqualTo(@50);
        make.bottom.equalTo(adView.mas_bottom).offset(-10);
        make.height.equalTo(@10);
    }];
    pageControl.numberOfPages = self.adImgList.count;
    
    //2 广告
    LYAdLabelVIew *adLabelView = [LYAdLabelVIew adLabelViewWithAdContent:@"翠湖香山三期楼盘10月20日盛大开盘!"];
    [adView addSubview:adLabelView];
    [adLabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(headView.mas_right).offset(0);
        make.left.equalTo(headView.mas_left).offset(0);
        make.bottom.equalTo(headView.mas_bottom).offset(0);
        make.height.mas_equalTo(adLabelHeight);
    }];
}

- (void)configureMenuView{
    int margin = 5;
    int cellWidth = (screenWidth * 1.0 - margin) / 2 ;
    CGFloat cellHeight = cellWidth * 4 / 5.0;
    int column = 2;
    int yStart = screenHeight - 2 * cellHeight - 2 * margin - TabBar_HEIGHT;
    for (int i = 0; i < 4; i++) {
        int x = (cellWidth + margin)* (i % column);
        int y = yStart + (cellHeight + margin) * (i / column);
        LYHomeCell *homeCell = [LYHomeCell homeCellWithLogo:self.logoList[i] title:self.titleList[i]];
        homeCell.frame = CGRectMake(x, y, cellWidth, cellHeight);
        [self.view addSubview:homeCell];
        
        //监听homeCell点击
        [homeCell bk_whenTapped:^{
            [self pushNextVCWithIndex:i];
        }];
    }
    
    self.headHeight = yStart - margin - NavigationBar_HEIGHT;
}

- (void)pushNextVCWithIndex:(int)index {
    switch (index) {
        case 0:{ //联盟商家
            LYLeagueHomeVC *leagueHomeVC = [[LYLeagueHomeVC alloc]init];
            [self.navigationController pushViewController:leagueHomeVC animated:YES];
        }
            break;
        case 1:{ //项目展示
            LYProjectHomeVC *projectHomeVC = [[LYProjectHomeVC alloc]init];
            [self.navigationController pushViewController:projectHomeVC animated:YES];
        }
            break;
        case 2:{ //积分商城
            LYScoreShopVC *scoreHomeVC = [[LYScoreShopVC alloc]init];
            [self.navigationController pushViewController:scoreHomeVC animated:YES];
        }
            break;
        case 3:{ //付款消费
            LYPaymentHomeVC *paymentHomeVC = [[LYPaymentHomeVC alloc]init];
            [self.navigationController pushViewController:paymentHomeVC animated:YES];
        }
            break;
        default:
            break;
    }
}
#pragma mark - iCarousel dataSource
- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel {
    return self.adImgList.count;
}

- (UIView*)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, carousel.width, carousel.height)];
    imageView.image = [UIImage imageNamed:self.adImgList[index]];
    
    return imageView;
}

//通过协议允许循环滚动
- (CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value{
    if (option == iCarouselOptionWrap) {
        value = YES;
    }
    return value;
}

- (void)carouselDidScroll:(iCarousel *)carousel{
    self.pageControl.currentPage = carousel.currentItemIndex;
}


@end
