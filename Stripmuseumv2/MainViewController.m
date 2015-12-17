//
//  MainViewController.m
//  Stripmuseum
//
//  Created by Rachouan Rejeb on 16/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playGame:)
                                                 name:@"playGame"
                                               object:nil];

    
}
-(void)loadView{
    CGRect bounds = [UIScreen mainScreen].bounds;
    
    CGRect nav = [UIApplication sharedApplication].statusBarFrame;
    CGRect newFrame = CGRectMake(0, 0, bounds.size.width, bounds.size.height - self.navigationController.navigationBar.frame.size.height);
    self.view = [[GallerView alloc] initWithFrame:bounds];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playGame:(NSNotification *)notification
{
    NSLog(@"NOTIFICATION");
    DetailViewController *detailvc = [[DetailViewController alloc]initWithNibName:nil bundle:nil];
    [self.parentViewController presentViewController:detailvc animated:YES completion:nil];
    
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
