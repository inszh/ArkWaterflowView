//
//  ArkWaterflowView.h
//  ArkWaterflowView
//
//  Created by 小华 on 16/1/12.
//  Copyright © 2016年 ark. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    ArkWaterflowViewMarginTypeTop,
    ArkWaterflowViewMarginTypeBottom,
    ArkWaterflowViewMarginTypeLeft,
    ArkWaterflowViewMarginTypeRight,
    ArkWaterflowViewMarginTypeColums,
    ArkWaterflowViewMarginTypeRow,
}ArkWaterflowViewMarginType;

@class ArkWaterflowView,ArkWaterflowCell;

@protocol ArkWaterflowViewDataSource <NSObject>

- (NSUInteger)numberOfCellInWaterflowView:(ArkWaterflowView*)waterflowView;

- (ArkWaterflowCell *)waterflowView:(ArkWaterflowView*)waterflowView cellAtIndex:(NSUInteger)index;

@optional

- (NSUInteger)numberOfColumnsInWaterflowView:(ArkWaterflowView*)waterflowView;

@end

@protocol ArkWaterflowViewDelegate <UIScrollViewDelegate>

@optional

- (CGFloat)waterView:(ArkWaterflowView *)waterView heightForIndex:(NSUInteger)index;


- (CGFloat)waterView:(ArkWaterflowView *)waterView marginType:(ArkWaterflowViewMarginType)type;

- (void)waterView:(ArkWaterflowView *)waterView didSelectIndex:(NSUInteger)index;


@end

@interface ArkWaterflowView : UIScrollView

@property(nonatomic,weak)id<ArkWaterflowViewDataSource> dataSource;
@property(nonatomic,weak)id<ArkWaterflowViewDelegate> delegate;

- (void)reloadData;
@end
