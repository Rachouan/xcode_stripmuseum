//
//  GallerView.h
//  Stripmuseum
//
//  Created by Rachouan Rejeb on 16/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GallerView : UIView<UIScrollViewDelegate>

@property (nonatomic,strong) UIScrollView * scrollVW;
@property (nonatomic,strong) UIPageControl *pageControl;

- (id)initWithFrame:(CGRect)frame;

@end
