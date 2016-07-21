//
//  SquareView.m
//  SquareListView
//
//  Created by Smile on 16/7/21.
//  Copyright © 2016年 llbt. All rights reserved.
//

#import "SquareView.h"
#import "SquareViewItem.h"

#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ViewWidth self.frame.size.width
#define Column 4
#define GridHeight 80


@implementation SquareView

- (instancetype)initWithArray:(NSArray *)array{
    if (self = [super initWithFrame:CGRectMake(0, 0, kScreenWidth, 0)]) {
        
        self.backgroundColor = [UIColor lightGrayColor];
        
        int arrayCount = (int)array.count;
        
        int row ;
        
        if (arrayCount % Column == 0) {
            row = arrayCount / Column;
        }else{
            row = arrayCount / Column + 1;
        }
        
        self.frame = CGRectMake(0, 80, kScreenWidth, row * GridHeight+5);
        
        
        int allItem = row * Column;
        int rowCount = 0;//记录当前绘制到了第几行
        
        for (int i = 0; i < allItem; i++) {
            
            int GridWidth = ViewWidth - 5;
            GridWidth = GridWidth / Column;
            
            row = i / Column;
            rowCount =  row + 1;
            
            int colum = i % 4;
            
            CGRect itemFrame = CGRectMake(colum*GridWidth +colum+1,row*GridHeight + rowCount+1, GridWidth, GridHeight);
            
            
            if (i < arrayCount) {
                
                NSDictionary *dic = array[i];

                SquareViewItem *item = [[SquareViewItem alloc]initWithFrame:itemFrame];
                [item setTitle:dic[@"key"] forState:UIControlStateNormal];
                [item setImage:[UIImage imageNamed:dic[@"value"]] forState:UIControlStateNormal];
                [self addSubview:item];
            }else{
                SquareViewItem *item = [[SquareViewItem alloc]initWithFrame:itemFrame];
                [self addSubview:item];
            }
        }
        
        
    }
    return self;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
