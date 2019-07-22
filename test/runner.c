#include <stdio.h>
#include <assert.h>

#include "lib/math.h"

void test_sum()
{
  assert(sum(6, 6) == 12);
  assert(sum(7, 0) == 7);
  assert(sum(0, 10) == 10);
  assert(sum(0, 0) == 0);
  assert(sum(-5, 5) == 0);
}

int main()
{
  test_sum();

  printf("ALL TESTS PASSED!\n");

  return 0;
}
