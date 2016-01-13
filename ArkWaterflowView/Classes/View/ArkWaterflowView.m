//
//  ArkWaterflowView.m
//  ArkWaterflowView
//
//  Created by 小华 on 16/1/12.
//  Copyright © 2016年 ark. All rights reserved.
//

#import "ArkWaterflowView.h"

@implementation ArkWaterflowView

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self=[super initWithFrame:frame]){
        
    }
    return self;
}

- (void)reloadData
{
    //总数
    NSUInteger cells=[self.dataSource numberOfCellInWaterflowView:self];
    
    //总列数
    NSUInteger columns =[self numberOfColumns];
    //间距
    CGFloat marginTop=[self marginWithType:ArkWaterflowViewMarginTypeTop];
    CGFloat marginBottom=[self marginWithType:ArkWaterflowViewMarginTypeBottom];
    CGFloat marginL=[self marginWithType:ArkWaterflowViewMarginTypeLeft];
    CGFloat marginR=[self marginWithType:ArkWaterflowViewMarginTypeRight];
    CGFloat marginColumn=[self marginWithType:ArkWaterflowViewMarginTypeColumn];
    CGFloat marginRow=[self marginWithType:ArkWaterflowViewMarginTypeRow];


    for (int i=0; i<cells; i++) {
        
        //cell高度
        CGFloat cellH=[self columnsHeight:i];
        
        CGFloat cellW=(([UIScreen mainScreen].bounds.size.width-marginL-marginR)-(columns-1)*marginColumn)/columns;
        
        CGFloat cellX=0;
        CGFloat cellY=0;
        
        

    }


}

- (CGFloat)marginWithType:(ArkWaterflowViewMarginType)type
{
    if ([self.delegate respondsToSelector:@selector(waterView:marginType:)]) {
        return [self.delegate waterView:self marginType:type];
    }else {
        return 10;
    }
}


- (CGFloat )columnsHeight:(int)index
{
    if ([self.delegate respondsToSelector:@selector(waterView:heightForIndex:)]) {
        return [self.delegate waterView:self heightForIndex:index];
    }else {
        return 70;
    }
}

- (NSUInteger)numberOfColumns
{
    if ([self.dataSource respondsToSelector:@selector(numberOfColumnsInWaterflowView:)]) {
       return [self.dataSource numberOfColumnsInWaterflowView:self];
    }else {
        return 3;
    }
}

@end
