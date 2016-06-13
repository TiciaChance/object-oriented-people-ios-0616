//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Flatiron School on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (strong, nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (strong, nonatomic, readwrite) NSMutableArray *skills;



@end

@implementation FISPerson

-(instancetype)init{
    
    self = [self initWithName:@"LC" ageInYears: 29 heightInInches:71];
    
    return self;
}

-(instancetype) initWithName:(NSString*)name ageInYears: (NSUInteger) age{
    
    self = [self initWithName:name ageInYears:age heightInInches:68];
    
    return self;
}

-(instancetype) initWithName:(NSString*)name ageInYears:(NSUInteger) age heightInInches:(NSUInteger)inches {
    
    self = [super init];
    if(self) {
        _name = name;
        _ageInYears = age;
        _heightInInches = inches;
        
        self.skills = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)celebrateBirthday {
    //increment the ageinyears prop by 1
    self.ageInYears += 1;
    // //the return of calling ordforint with self.ageinyears prop as argu
    
    
    NSString *ordinal = [self ordinalForInteger:self.ageInYears];

    NSString *hbd = [[NSString stringWithFormat:@"Happy %lu%@ Birthday, %@!!!",self.ageInYears, ordinal, self.name]uppercaseString];
    
    
    NSLog(@"\n\n%@\n\n", hbd);
    
    return hbd;
    
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

-(void)learnSkillBash {
    
    if(![self.skills containsObject:@"bash"]) {
        [self.skills addObject:@"bash"];
    }
    
}

-(void) learnSkillXcode {
    
    if(![self.skills containsObject:@"Xcode"]) {
        [self.skills addObject:@"Xcode"];
    }
    
}

-(void) learnSkillObjectiveC {
    
    if(![self.skills containsObject:@"Objective-C"]) {
        [self.skills addObject:@"Objective-C"];
    }
    
}

-(void) learnSkillObjectOrientedProgramming {
    
    if(![self.skills containsObject:@"Object-Oriented Programming"]) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }

    
}

-(void) learnSkillInterfaceBuilder {
    
    if(![self.skills containsObject:@"Interface Builder"]) {
        [self.skills addObject:@"Interface Builder"];
    }

    
}

-(BOOL)isQualifiedTutor {
    
    if(self.skills.count >= 4) {
        return 1;
    }
    
    return NO;
}
@end
