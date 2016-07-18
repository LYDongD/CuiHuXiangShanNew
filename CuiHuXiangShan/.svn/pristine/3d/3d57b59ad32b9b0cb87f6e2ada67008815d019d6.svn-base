//
//  LYHomeVC.m
//  CuiHuXiangShan
//
//  Created by 李悦东 on 16/7/16.
//  Copyright © 2016年 fengdikeji. All rights reserved.
//

#import "LYHomeVC.h"
#import <iCarousel.h>

#import "LYPageControl.h"
#import "LYAdLabelVIew.h"


#define HeadHeight 250
@interface LYHomeVC ()<iCarouselDataSource,iCarouselDelegate>

@property (nonatomic, strong) NSArray *adImgList;
@property (nonatomic, weak) UIView *headView;
@property (nonatomic, weak) LYPageControl *pageControl;

@end

@implementation LYHomeVC

- (NSArray *)adImgList{
    if (!_adImgList) {
        _adImgList = @[@"adExample",@"adExample",@"adExample"];
    }
    return _adImgList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitleWithBackBtn:@"翠湖香山"];
    
    [self setUpView];
}

- (void)setUpView{
    //1 头部
    [self configureHeadView];
    
    //2 菜单
    [self configureMenuView];
}

- (void)configureHeadView{
    UIView *headView = [[UIView alloc]init];
    headView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:headView];
    headView.frame = CGRectMake(0, NavigationBar_HEIGHT, screenWidth, HeadHeight);
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
