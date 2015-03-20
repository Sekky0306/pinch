//
//  ViewController.m
//  pinch
//
//  Created by 関戸優紀 on 2015/03/19.
//  Copyright (c) 2015年 関戸優紀. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView;
@synthesize myImage;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"001.png"]];
    [self setMyImage:img];
    
    scrollView.pagingEnabled = NO;
    scrollView.contentSize = CGSizeMake(img.frame.size.width, img.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = YES;
    scrollView.delegate = self;
    scrollView.maximumZoomScale = 4.0;
    scrollView.minimumZoomScale = 0.4;
    
    [scrollView addSubview: img];
    //[img release];
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return myImage;
}

//- (void)dealloc {
   // [super dealloc];
   // [myImage release];
   // [scrollView release];
//}//


- (void)didReceiveMemoryWarning {
    
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
