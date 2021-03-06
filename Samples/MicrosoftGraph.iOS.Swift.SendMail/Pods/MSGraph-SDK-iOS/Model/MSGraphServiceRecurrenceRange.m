/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceRecurrenceRange
 *
 */
@implementation MSGraphServiceRecurrenceRange


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"type", @"type", @"startDate", @"startDate", @"endDate", @"endDate", @"recurrenceTimeZone", @"recurrenceTimeZone", @"numberOfOccurrences", @"numberOfOccurrences", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.recurrenceRange";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_type = (![dic objectForKey: @"type"] || [ [dic objectForKey: @"type"] isKindOfClass:[NSNull class]] )?_type:[MSGraphServiceRecurrenceRangeTypeSerializer fromString:[dic objectForKey: @"type"]];
		_startDate = (![dic objectForKey: @"startDate"] || [ [dic objectForKey: @"startDate"] isKindOfClass:[NSNull class]] )?_startDate:[MSOrcObjectizer dateFromString:[dic objectForKey: @"startDate"]];
		_endDate = (![dic objectForKey: @"endDate"] || [ [dic objectForKey: @"endDate"] isKindOfClass:[NSNull class]] )?_endDate:[MSOrcObjectizer dateFromString:[dic objectForKey: @"endDate"]];
		_recurrenceTimeZone = (![dic objectForKey: @"recurrenceTimeZone"] || [ [dic objectForKey: @"recurrenceTimeZone"] isKindOfClass:[NSNull class]] )?_recurrenceTimeZone:[[dic objectForKey: @"recurrenceTimeZone"] copy];
		_numberOfOccurrences = (![dic objectForKey: @"numberOfOccurrences"] || [ [dic objectForKey: @"numberOfOccurrences"] isKindOfClass:[NSNull class]] )?_numberOfOccurrences:[[dic objectForKey: @"numberOfOccurrences"] intValue];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [MSGraphServiceRecurrenceRangeTypeSerializer toString:self.type] forKey: @"type"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.startDate];if (curVal!=nil) [dic setValue: curVal forKey: @"startDate"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.endDate];if (curVal!=nil) [dic setValue: curVal forKey: @"endDate"];}
	{id curVal = [self.recurrenceTimeZone copy];if (curVal!=nil) [dic setValue: curVal forKey: @"recurrenceTimeZone"];}
	{[dic setValue: [NSNumber numberWithInt: self.numberOfOccurrences] forKey: @"numberOfOccurrences"];}
    [dic setValue: @"#microsoft.graph.recurrenceRange" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"type"])
            { [dic setValue: [MSGraphServiceRecurrenceRangeTypeSerializer toString:self.type] forKey: @"type"];
}	{id curVal = self.startDate;
    if([self.updatedValues containsObject:@"startDate"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"startDate"];
            }
    }
	{id curVal = self.endDate;
    if([self.updatedValues containsObject:@"endDate"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"endDate"];
            }
    }
	{id curVal = self.recurrenceTimeZone;
    if([self.updatedValues containsObject:@"recurrenceTimeZone"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"recurrenceTimeZone"];
            }
    }
 if([self.updatedValues containsObject:@"numberOfOccurrences"])
            { [dic setValue: [NSNumber numberWithInt: self.numberOfOccurrences] forKey: @"numberOfOccurrences"];
}    return dic;
}


/** Setter implementation for property type
 *
 */
- (void) setType: (MSGraphServiceRecurrenceRangeType) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSGraphServiceRecurrenceRangeTypeSerializer fromString:string];
    [self valueChangedFor:@"type"]; 
}

/** Setter implementation for property startDate
 *
 */
- (void) setStartDate: (NSDate *) value {
    _startDate = value;
    [self valueChangedFor:@"startDate"];
}
       
/** Setter implementation for property endDate
 *
 */
- (void) setEndDate: (NSDate *) value {
    _endDate = value;
    [self valueChangedFor:@"endDate"];
}
       
/** Setter implementation for property recurrenceTimeZone
 *
 */
- (void) setRecurrenceTimeZone: (NSString *) value {
    _recurrenceTimeZone = value;
    [self valueChangedFor:@"recurrenceTimeZone"];
}
       
/** Setter implementation for property numberOfOccurrences
 *
 */
- (void) setNumberOfOccurrences: (int) value {
    _numberOfOccurrences = value;
    [self valueChangedFor:@"numberOfOccurrences"];
}
       

@end
