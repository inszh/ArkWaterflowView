//
//  ViewController.m
//  ArkWaterflowView
//
//  Created by 小华 on 16/1/12.
//  Copyright © 2016年 ark. All rights reserved.
//

#import "ViewController.h"
#import "ArkWaterflowView.h"
#import "ArkWaterflowCell.h"

@interface ViewController ()<ArkWaterflowViewDelegate,ArkWaterflowViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ArkWaterflowView *waterView=[ArkWaterflowView new];
    waterView.frame=self.view.bounds;
    waterView.delegate=self;
    waterView.dataSource=self;
    [self.view addSubview:waterView];
    
    [waterView reloadData];
}

-(NSUInteger)numberOfCellInWaterflowView:(ArkWaterflowView *)waterflowView
{
    return 100;
}

-(NSUInteger)numberOfColumnsInWaterflowView:(ArkWaterflowView *)waterflowView
{
    return 3;
}

-(ArkWaterflowCell *)waterflowView:(ArkWaterflowView *)waterflowView cellAtIndex:(NSUInteger)index
{
    ArkWaterflowCell *cell=[ArkWaterflowCell new];
    cell.backgroundColor=[UIColor redColor];
    return cell;
}

-(CGFloat)waterView:(ArkWaterflowView *)waterView heightForIndex:(NSUInteger)index
{
    switch (index%3) {
        case 0:
            return 80;
            break;
        case 1:
            return 100;
            break;
        case 2:
            return  70;
            break;
        default:
            return 110;
    }
}

-(CGFloat)waterView:(ArkWaterflowView *)waterView marginType:(ArkWaterflowViewMarginType)type
{
    switch (type) {
        case ArkWaterflowViewMarginTypeTop:
        case ArkWaterflowViewMarginTypeBottom:
        case ArkWaterflowViewMarginTypeLeft:
        case ArkWaterflowViewMarginTypeRight:
            return 10;
            break;
            
        default:
            return 5;
            break;
    }
}

-(void)waterView:(ArkWaterflowView *)waterView didSelectIndex:(NSUInteger)index
{
    
}

@end
