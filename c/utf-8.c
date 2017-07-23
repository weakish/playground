#include <stdio.h>
#include <wchar.h>
#include <locale.h>
#include <uchar.h>

int main(void) {
  puts("中文测试");
  char chn[] = "中文测试";
  puts(chn);
  printf("%zu\n", sizeof(chn));
  printf("%c\n", chn[1]);

  printf ("Locale is: %s\n", setlocale(LC_ALL, "en_US.utf8"));
  wchar_t c = L'中';
  printf("%lc\n", c);
  wchar_t chinese[] = L"中文测试";
  printf("%zu\n", sizeof(chinese));
  printf("%zu\n", wcslen(chinese));
  printf("%lc\n", chinese[0]);
  wchar_t mixed[] = L"中en文";
  printf("%zu\n", wcslen(mixed));
  printf("%lc\n", mixed[1]);

  /* C11 */
  const char *utf8Str = u8"你好， 世界。";
  printf("The UTF-8 string is: %s\n", utf8Str);
  char16_t ucschr = u'π';
  printf("%lc\n", ucschr);
  char u8str[] = u8"ππ This is a UTF-8 string ππ.";
  printf("%s\n", u8str);
  char16_t just_c = 'c';
  printf("%c\n", just_c);
  // C11 not supported in latest clang 3.6 / gcc 5.1
  // char u8chr = u8'π';
  // printf("%lc\n", u8chr);
}
