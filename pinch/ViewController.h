//
//  ViewController.h
//  pinch
//
//  Created by 関戸優紀 on 2015/03/19.
//  Copyright (c) 2015年 関戸優紀. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIScrollViewDelegate>
{
    IBOutlet UIScrollView *scrollView;
    UIImageView *myImage;
}
@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) UIImageView *myImage;



@end

