#include <mach/mach.h>
//#import <Foundation/Foundation.h>

#ifndef log_h
#define log_h

void logMsg(char* msg);
#define LOG_LOG(tag, fmt, ...) NSLog((@"[%c] %s:%s: " fmt), tag, __func__, mach_error_string(ret), ##__VA_ARGS__)

#ifdef NDEBUG
#define DEBUG_LOG(fmt, ...)
#define ERROR_LOG(fmt, ...)
#else
#define DEBUG_LOG(fmt, ...) LOG_LOG('+', fmt, ##__VA_ARGS__)
#define ERROR_LOG(fmt, ...) LOG_LOG('-', fmt, ##__VA_ARGS__)
#endif /* NDEBUG */
#endif

#include <mach/mach.h>

