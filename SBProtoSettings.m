//
//  SBProtoSettings.m
//  SBProtoSettings
//
//  Created by Doc Aiden on 3/13/18.
//  Copyright (c) 2018 ___ORGANIZATIONNAME___. All rights reserved.
//

// LibActivator by Ryan Petrich
// See https://github.com/rpetrich/libactivator
#import "SBPrototypeController.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation SBProtoSettings
- (UIImage *)iconGlyph {
    return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
    return [UIColor blueColor];
}

- (BOOL)isSelected {
    return self.ezSecretSettings;
}

- (void)setSelected:(BOOL)selected {
    self.ezSecretSettings = selected;
    [super refreshState];
  [self ezSecretSettings];
}

- (void)ezSecretSettings {
[[SBPrototypeController sharedInstance] _showSettings];
}
@end
