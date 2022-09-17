#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
char s[256];
char z[256];
int j =0;
int i=0;
scanf("%s", s);
int length=strlen(s);

while(i<length){

if(!isupper(s[i])){
z[j++] = s[i];
}
i++;
}
z[j++]='\0';
printf("%s\n", z);
return 0;
}
