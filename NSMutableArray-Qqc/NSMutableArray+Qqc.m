//
//  NSMutableArray+Qqc.m
//  QqcBaseFramework
//
//  Created by qiuqinchuan on 16/2/25.
//  Copyright © 2016年 Qqc. All rights reserved.
//

#import "NSMutableArray+Qqc.h"

@implementation NSMutableArray (Qqc)

/**
 *  移除数组最后的元素并返回该元素
 *
 *  @return 返回移除的元素
 */
- (id)pop
{
    id obj = nil;
    
    if (self.count)
    {
        obj = [self objectAtIndex:self.count - 1];
        [self removeLastObject];
    }
    
    return obj;
}

/**
 *  移除第一个元素并返回该元素
 *
 *  @return 返回移除的元素
 */
- (id)shift
{
    id obj = nil;
    
    if (self.count)
    {
        obj = [self objectAtIndex:0];
        [self removeObjectAtIndex:0];
    }
    
    return obj;
}

/**
 *  安全添加对象，加入数组之前验证对象是否为nil
 *
 *  @param anObject 需要添加的对象
 */
- (void)safeAddObject:(id)anObject
{
    if (anObject)
    {
        [self addObject:anObject];
    }
}

/**
 *  安全插入一个元素到给定的位置
 *
 *  @param anObject 插入对象，为空时不处理
 *  @param index    索引值，大于或等于count时不做处理
 */
- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index
{
    if (anObject && index < self.count)
    {
        [self insertObject:anObject atIndex:index];
    }
}

/**
 *  将数组中指定位置的元素移动到新的位置
 *
 *  @param fromIndex 要挪动的元素索引
 *  @param toIndex   元素新位置索引
 */
- (void)moveObjectFromIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex
{
    NSUInteger count = self.count;
    
    if (fromIndex == toIndex || fromIndex >= count || toIndex >= count)
    {
        return;
    }
    
    id obj = [self objectAtIndex:fromIndex];
    [self removeObjectAtIndex:fromIndex];
    [self insertObject:obj atIndex:toIndex];
}

@end
