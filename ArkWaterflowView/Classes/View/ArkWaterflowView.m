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
    long cells=[self.dataSource numberOfCellInWaterflowView:self];
    
    for (int i=0; i<cells; i++) {
        
        int columns =[self numberOfColumnsIndex:i];
        
        
    }


}

- (NSUInteger)numberOfColumnsIndex:(int)index
{
    if ([self.dataSource respondsToSelector:@selector(numberOfColumnsInWaterflowView:)]) {
       return [self.dataSource numberOfColumnsInWaterflowView:self];
    }else {
        return 3;
    }
}

@end
