#ifndef __GREET_RS_GEN_H__
#define __GREET_RS_GEN_H__

#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

/**
 *
 * # Safety
 *
 * The return value should be deallocated after use.
 */
char *greet(const char *c_someone);

#endif /* __GREET_RS_GEN_H__ */
