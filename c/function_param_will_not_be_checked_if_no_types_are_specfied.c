int function_param_will_not_be_checked_if_no_types_are_specfied(param) {
  return param + 1;
}

int main(void) {
  return function_param_will_not_be_checked_if_no_types_are_specfied("abc");
  /* returns 149 */
}

