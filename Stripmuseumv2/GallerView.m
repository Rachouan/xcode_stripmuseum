//
//  GallerView.m
//  Stripmuseum
//
//  Created by Rachouan Rejeb on 16/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import "GallerView.h"
#import "CardView.h"

@implementation GallerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSLog(@"SOMETHING");
        
        
        [self enumerateFonts];
        
        self.backgroundColor = [UIColor colorWithRed:0.110  green:0.161  blue:0.216 alpha:1];
        
        
        self.scrollVW = [[UIScrollView alloc]initWithFrame:frame];
        self.scrollVW.backgroundColor = [UIColor colorWithRed:0.110  green:0.161  blue:0.216 alpha:1];
        [self addSubview:self.scrollVW];
        [self.scrollVW setShowsHorizontalScrollIndicator:NO];
        [self.scrollVW setShowsVerticalScrollIndicator:NO];
        self.scrollVW.delegate = self;
        
        
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectZero];
        self.pageControl.numberOfPages = 3;
        self.pageControl.transform = CGAffineTransformMakeScale(1.7, 1.7);
        self.pageControl.pageIndicatorTintColor = [UIColor colorWithRed:0.353  green:0.749  blue:0.710 alpha:0.5];
        self.pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:0.353  green:0.749  blue:0.710 alpha:1];
        
        CGSize sizeOfPageControl = [self.pageControl sizeForNumberOfPages:self.pageControl.numberOfPages];
        
        self.pageControl.frame = CGRectMake(0, 0, sizeOfPageControl.width, sizeOfPageControl.height);
        self.pageControl.center = CGPointMake(self.frame.size.width/2, self.frame.size.height - sizeOfPageControl.height);
        
        [self addSubview:self.pageControl];
        
        int xPos = 0;
        for (int i = 1; i<4; i++) {
            
            NSString *imageName = [NSString stringWithFormat:@"%i",i];
            
            UIImage * image = [UIImage imageNamed:imageName];
            /*UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
            
            imageView.frame = CGRectMake(xPos,0,frame.size.width,frame.size.height);*/
            CGSize bounds = CGSizeMake(self.frame.size.width-40, self.frame.size.height-150);
            
            //CardView *card = [[CardView alloc]initWithFrame:CGRectMake(xPos + (self.frame.size.width - bounds.width )/2, 0, bounds.width, bounds.height)];
            
            CardView *card = [[CardView alloc]initWithTitle:@"herge" andImage:image andSubTitle:@"The Adventures of Tintin" andFrame:CGRectMake(xPos + (self.frame.size.width - bounds.width )/2, 0, bounds.width, bounds.height)];
            
            
            [self.scrollVW addSubview:card];
            
            xPos += frame.size.width;
            
        }
        
        
        self.scrollVW.contentSize = CGSizeMake(xPos, 0);
        self.scrollVW.pagingEnabled = YES;
        
        
    }
    return self;
    
}
-(void)enumerateFonts{
    
    NSLog(@"--Start Enumarating Fonts--");
    
    for (NSString *fontFamilyStrings in [UIFont familyNames]) {
        NSLog(@"FontFamily : %@",fontFamilyStrings);
        
        for (NSString *fontStrings in [UIFont fontNamesForFamilyName:fontFamilyStrings]) {
            NSLog(@"-- FONT: %@",fontStrings);
        }
    }
    
    NSLog(@"--End enumerating font--");

}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    int page = scrollView.contentOffset.x / scrollView.frame.size.width;
    
    self.pageControl.currentPage = page;
}

@end
