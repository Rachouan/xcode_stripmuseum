//
//  DetailViewController.m
//  Stripmuseumv2
//
//  Created by Rachouan Rejeb on 17/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailView.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)loadView{
    CGRect bounds = [UIScreen mainScreen].bounds;
    
    
    self.view = [[DetailView alloc] initWithFrame:bounds];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
