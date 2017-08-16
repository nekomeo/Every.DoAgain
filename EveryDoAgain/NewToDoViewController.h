//
//  NewToDoViewController.h
//  EveryDoAgain
//
//  Created by Elle Ti on 2017-08-16.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NewToDoViewControllerDelegate <NSObject>

- (void) passBackTitle:(NSString *)title withDescription:(NSString*)toDoDescription andPriority:(NSInteger)priorityNumber;

@end

@interface NewToDoViewController : UIViewController
@property (nonatomic, weak) id<NewToDoViewControllerDelegate> delegate;

@end
