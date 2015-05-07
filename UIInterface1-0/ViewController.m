//
//  ViewController.m
//  UIInterface1-0
//
//  Created by Ben Russell on 5/5/15.
//  Copyright (c) 2015 Ben Russell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *addressButton;
@property (weak, nonatomic) IBOutlet UIButton *entranceButton;
@property (weak, nonatomic) IBOutlet UIButton *infoButton;
@property (weak, nonatomic) IBOutlet UIButton *frontDeskButton;

@property (weak, nonatomic) IBOutlet UIView *addressView;
@property (weak, nonatomic) IBOutlet UIView *entranceView;
@property (weak, nonatomic) IBOutlet UIView *infoView;
@property (weak, nonatomic) IBOutlet UIView *frontDeskView;

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;


@property BOOL addressViewIsSelected;
@property BOOL entranceViewIsSelected;
@property BOOL infoViewIsSelected;
@property BOOL frontDeskViewIsSelected;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set Initial Button States
    [self.addressButton setSelected:YES];
    [self.entranceButton setSelected:NO];
    [self.infoButton setSelected:NO];
    [self.frontDeskButton setSelected:NO];
    self.addressViewIsSelected = YES;
    self.entranceViewIsSelected = NO;
    self.infoViewIsSelected = NO;
    self.frontDeskViewIsSelected = NO;
    
    // Set initial state of views
    [self.view sendSubviewToBack:self.entranceView];
    [self.view sendSubviewToBack:self.infoView];
    [self.view sendSubviewToBack:self.frontDeskView];
    
    self.entranceView.alpha = 0.0;
    self.infoView.alpha = 0.0;
    self.frontDeskView.alpha = 0.0;
    
    self.addressView.translatesAutoresizingMaskIntoConstraints = YES;
    CGRect newFrame = self.addressView.frame;
    newFrame.origin.x = 16;
    newFrame.origin.y = 134;
    newFrame.size.width = 343;
    newFrame.size.height = 513;
    [self.addressView setFrame:newFrame];
    
    self.addressLabel.translatesAutoresizingMaskIntoConstraints = YES;
    

}

- (void) viewDidAppear:(BOOL)animated
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma implement buttons

- (IBAction)addressButton:(id)sender {
    [self.addressButton setSelected:YES];
    [self.entranceButton setSelected:NO];
    [self.infoButton setSelected:NO];
    [self.frontDeskButton setSelected:NO];
    self.entranceView.translatesAutoresizingMaskIntoConstraints = YES;
    self.addressView.translatesAutoresizingMaskIntoConstraints = YES;
    self.infoView.translatesAutoresizingMaskIntoConstraints = YES;
    self.frontDeskView.translatesAutoresizingMaskIntoConstraints = YES;
    
    if (self.entranceViewIsSelected) {
        // Change Bools
        self.addressViewIsSelected = YES;
        self.entranceViewIsSelected = NO;
        
        // Send entrance view to original position
        
        CGRect newFrame = self.entranceView.frame;
        newFrame.origin.x = 111;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.entranceView.frame = newFrame;
            self.entranceView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.infoView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
    }
    
    if (self.infoViewIsSelected) {
        // Change Bools
        self.addressViewIsSelected = YES;
        self.infoViewIsSelected = NO;
        
        //  Create animations
        CGRect newFrame = self.infoView.frame;
        newFrame.origin.x = 202;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.infoView.frame = newFrame;
            self.infoView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.infoView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
    }
    
    if (self.frontDeskViewIsSelected) {
        // Change Bools
        self.addressViewIsSelected = YES;
        self.frontDeskViewIsSelected = NO;
        
        // Create Animations
        CGRect newFrame = self.frontDeskView.frame;
        newFrame.origin.x = 291;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.frontDeskView.frame = newFrame;
            self.frontDeskView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.infoView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
    }
    
    // Animate addressView to large size
    CGRect newFrame = self.addressView.frame;
    newFrame.origin.x = 16;
    newFrame.origin.y = 134;
    newFrame.size.width = 343;
    newFrame.size.height = 513;
    
    [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationCurveEaseOut animations:^{
        
        self.addressView.frame = newFrame;
        self.addressView.alpha = 1.0;
    } completion:^(BOOL finished) {
        [self.view bringSubviewToFront:self.addressView];
        return;
    } ];

}

- (IBAction)entranceButton:(id)sender {
    [self.entranceButton setSelected:YES];
    [self.addressButton setSelected:NO];
    [self.infoButton setSelected:NO];
    [self.frontDeskButton setSelected:NO];
    self.entranceView.translatesAutoresizingMaskIntoConstraints = YES;
    self.addressView.translatesAutoresizingMaskIntoConstraints = YES;
    self.infoView.translatesAutoresizingMaskIntoConstraints = YES;
    self.frontDeskView.translatesAutoresizingMaskIntoConstraints = YES;
    
    if (self.addressViewIsSelected) {
        
        // Change Bools
        self.addressViewIsSelected = NO;
        self.entranceViewIsSelected = YES;
        
        // Send addressView to original position
        CGRect newFrame = self.addressView.frame;
        newFrame.origin.x = 16;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.addressView.frame = newFrame;
            self.addressView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.infoView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
        
    }
    
    if (self.infoViewIsSelected) {
        self.infoViewIsSelected = NO;
        self.entranceViewIsSelected = YES;
        
        // Animation
        CGRect newFrame = self.infoView.frame;
        newFrame.origin.x = 202;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.infoView.frame = newFrame;
            self.infoView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.infoView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
        
    }
    
    if (self.frontDeskViewIsSelected) {
        self.frontDeskViewIsSelected = NO;
        self.entranceViewIsSelected = YES;
        
        // Animation
        CGRect newFrame = self.frontDeskView.frame;
        newFrame.origin.x = 291;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.frontDeskView.frame = newFrame;
            self.frontDeskView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.infoView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
    }
    
    
    // Animate entranceView to large size
    CGRect newFrame = self.entranceView.frame;
    newFrame.origin.x = 16;
    newFrame.origin.y = 134;
    newFrame.size.width = 343;
    newFrame.size.height = 513;
    
    [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationCurveEaseOut animations:^{
        
        self.entranceView.frame = newFrame;
        self.entranceView.alpha = 1.0;
    } completion:^(BOOL finished) {
        [self.view bringSubviewToFront:self.entranceView];
        return;
    } ];
}


- (IBAction)infoButton:(id)sender {
    [self.entranceButton setSelected:NO];
    [self.addressButton setSelected:NO];
    [self.infoButton setSelected:YES];
    [self.frontDeskButton setSelected:NO];
    self.entranceView.translatesAutoresizingMaskIntoConstraints = YES;
    self.addressView.translatesAutoresizingMaskIntoConstraints = YES;
    self.infoView.translatesAutoresizingMaskIntoConstraints = YES;
    self.frontDeskView.translatesAutoresizingMaskIntoConstraints = YES;
    
    if (self.addressViewIsSelected) {
        self.addressViewIsSelected = NO;
        self.infoViewIsSelected = YES;
        
        // Animation
        CGRect newFrame = self.addressView.frame;
        newFrame.origin.x = 16;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.addressView.frame = newFrame;
            self.addressView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
    }
    
    if (self.entranceViewIsSelected) {
        self.addressViewIsSelected = NO;
        self.infoViewIsSelected = YES;
        
        
        // Animation
        CGRect newFrame = self.entranceView.frame;
        newFrame.origin.x = 111;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.entranceView.frame = newFrame;
            self.entranceView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
    }
    
    if (self.frontDeskViewIsSelected) {
        self.frontDeskViewIsSelected = NO;
        self.infoViewIsSelected = YES;
        
        // Animation
        CGRect newFrame = self.frontDeskView.frame;
        newFrame.origin.x = 291;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.frontDeskView.frame = newFrame;
            self.frontDeskView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.frontDeskView];
        }];
        
    }
    
    // Animate infoView to large size
    CGRect newFrame = self.infoView.frame;
    newFrame.origin.x = 16;
    newFrame.origin.y = 134;
    newFrame.size.width = 343;
    newFrame.size.height = 513;
    
    [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationCurveEaseOut animations:^{
        
        self.infoView.frame = newFrame;
        self.infoView.alpha = 1.0;
    } completion:^(BOOL finished) {
        [self.view bringSubviewToFront:self.infoView];
        return;
    } ];
}


- (IBAction)frontDeskButton:(id)sender {
    [self.entranceButton setSelected:NO];
    [self.addressButton setSelected:NO];
    [self.infoButton setSelected:NO];
    [self.frontDeskButton setSelected:YES];
    self.entranceView.translatesAutoresizingMaskIntoConstraints = YES;
    self.addressView.translatesAutoresizingMaskIntoConstraints = YES;
    self.infoView.translatesAutoresizingMaskIntoConstraints = YES;
    self.frontDeskView.translatesAutoresizingMaskIntoConstraints = YES;
    
    if (self.addressViewIsSelected) {
        self.addressViewIsSelected = NO;
        self.frontDeskViewIsSelected = YES;
        
        // Animation
        CGRect newFrame = self.addressView.frame;
        newFrame.origin.x = 16;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.addressView.frame = newFrame;
            self.addressView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.infoView];
        }];
    }
    
    if (self.entranceViewIsSelected) {
        self.addressViewIsSelected = NO;
        self.frontDeskViewIsSelected = YES;
        
        
        // Animation
        CGRect newFrame = self.entranceView.frame;
        newFrame.origin.x = 111;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.entranceView.frame = newFrame;
            self.entranceView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.entranceView];
            [self.view sendSubviewToBack:self.infoView];
        }];
    }
    
    if (self.infoViewIsSelected) {
        self.infoViewIsSelected = NO;
        self.frontDeskViewIsSelected = YES;
        
        // Animation
        CGRect newFrame = self.infoView.frame;
        newFrame.origin.x = 202;
        newFrame.origin.y = 134;
        newFrame.size.width = 68;
        newFrame.size.height = 75;
        [UIView animateWithDuration:0.5 animations:^{
            self.infoView.frame = newFrame;
            self.infoView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self.view sendSubviewToBack:self.addressView];
            [self.view sendSubviewToBack:self.infoView];
            [self.view sendSubviewToBack:self.entranceView];
        }];
        
    }
    
    // Animate frontDeskView to large size
    CGRect newFrame = self.frontDeskView.frame;
    newFrame.origin.x = 16;
    newFrame.origin.y = 134;
    newFrame.size.width = 343;
    newFrame.size.height = 513;
    
    [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationCurveEaseOut animations:^{
        
        self.frontDeskView.frame = newFrame;
        self.frontDeskView.alpha = 1.0;
    } completion:^(BOOL finished) {
        [self.view bringSubviewToFront:self.frontDeskView];
        return;
    } ];
}

@end
