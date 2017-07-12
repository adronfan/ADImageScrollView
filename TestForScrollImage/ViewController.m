//
//  ViewController.m
//  TestForScrollImage
//
//  Created by yangfan on 2017/7/11.
//  Copyright © 2017年 Adron. All rights reserved.
//

#import "ViewController.h"
#import "ADImageScrollView.h"
#import <Masonry/Masonry.h>

#ifndef ADScreenHeight
#define ADScreenHeight [UIScreen mainScreen].bounds.size.height
#endif
#ifndef ADScreenWidth
#define ADScreenWidth [UIScreen mainScreen].bounds.size.width
#endif

@interface ViewController ()

@end

@implementation ViewController {
  ADImageScrollView *v;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  NSArray *imageArray = @[
    [NSURL URLWithString:@"https://img1.doubanio.com/view/photo/large/public/p2464977809.jpg"],
    [NSURL URLWithString:@"https://img3.doubanio.com/view/photo/lphoto/public/p2477199663.jpg"],
    [NSURL URLWithString:@"https://img1.doubanio.com/view/photo/lphoto/public/p2477199679.jpg"],
    [NSURL URLWithString:@"https://img3.doubanio.com/view/photo/lphoto/public/p2469764440.jpg"],
    [NSURL URLWithString:@"https://img3.doubanio.com/view/photo/lphoto/public/p2469761712.jpg"],
    [NSURL URLWithString:@"https://img3.doubanio.com/view/photo/lphoto/public/p2469727100.jpg"]
  ];
  v = [[ADImageScrollView alloc] initImageScrollWithFrame:CGRectMake(0, 100, ADScreenWidth, 200)
                                                   Images:@[]
                                         placeholderImage:nil
                                                cycleTime:2.0];
  [v setContentMode:UIViewContentModeScaleAspectFill];
  [v setImageBlock:^(int8_t index) {
    NSLog(@"点击了 %d 图片", index);
  }];
  [self.view addSubview:v];
}

- (IBAction)changeImage:(id)sender {
  NSArray *imageArray = @[
    [NSURL URLWithString:@"https://img3.doubanio.com/view/photo/lphoto/public/p2469764440.jpg"],
    [NSURL URLWithString:@"https://img3.doubanio.com/view/photo/lphoto/public/p2469761712.jpg"],
    [NSURL URLWithString:@"https://img3.doubanio.com/view/photo/lphoto/public/p2469727100.jpg"]
  ];
  [v updateScrollImages:imageArray];

  [v setPageTintColor:[UIColor redColor]];
  [v setPageCurrentPageColor:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end
