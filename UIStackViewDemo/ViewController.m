//
//  ViewController.m
//  UIStackViewDemo
//
//  Created by ma c on 16/4/15.
//  Copyright © 2016年 lu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *horizontalStackView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)removeStar:(id)sender {
//
////    let star:UIView? = self.horizontalStackView.arrangedSubviews.last
////    if let aStar = star
////    {
////        self.horizontalStackView.removeArrangedSubview(aStar)
////        aStar.removeFromSuperview()
////        UIView.animateWithDuration(0.25, animations: {
////            self.horizontalStackView.layoutIfNeeded()
////        })
////    }
    UIView *star = self.horizontalStackView.arrangedSubviews.lastObject;
    [self.horizontalStackView removeArrangedSubview:star];
    [star removeFromSuperview];
    [UIView animateWithDuration:0.25 animations:^{
        
        [self.horizontalStackView layoutIfNeeded];
    }];
}

- (IBAction)addStar:(id)sender {
    
//    let starImgVw:UIImageView = UIImageView(image: UIImage(named: "star"))
//    self.horizontalStackView.addArrangedSubview(starImgVw)
//    UIView.animateWithDuration(0.25, animations: {
//        self.horizontalStackView.layoutIfNeeded()
//    })
    
    UIImageView *starImgVw = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"star"]];
    starImgVw.contentMode = UIViewContentModeScaleAspectFit;
    [self.horizontalStackView addArrangedSubview:starImgVw];
    [UIView animateWithDuration:0.25 animations:^{
        
        [self.horizontalStackView layoutIfNeeded];
    }];
    
}
@end
