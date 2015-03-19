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
    UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_0594.jpg"]];
    [self setMyImage:img];
    
    scrollView.pagingEnabled = NO;
    scrollView.contentSize = CGSizeMake(img.frame.size.width, img.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = YES;
    scrollView.delegate = self;
    
    [scrollView addSubview: img];
    [img release];
}

- (void)dealloc {
    [super dealloc];
    [myImage release];
    [scrollView release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
