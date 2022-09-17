#include <stdio.h>

int main() {
char c[256];
char d[256];
char e[256];
int i=0;
int index=0;
int length=0;
int length2=0;
int length3=0;
int counter=0;
int counter2=0;
scanf("%s",c);


while(c[length]!='\0'){
length++;
}

for(i=0; i<length; i++){
if(c[i]=='.'){
index=i;
break;
}
}

int j;
int k;
char val;

for(j=0; j<index; j++) {
d[j]=c[j];
}
d[index]='\0';

for(k=index+1; k<length; k++) {
e[counter]=c[k];
counter++;
}
e[counter]='\0';

while(d[length2]!='\0'){
length2++;
}

while(e[length3]!='\0'){
length3++;
}
i=0;
j=0;


if(length3==0){
c[j]='0';
j++;
}
 while (e[i] != '\0') {
        c[j] = e[i];
        i++;
        j++;
    }

  c[j]='.';
  j++;
if(length2==0){
c[j]='0';
}
    k = 0;
    while (d[k] != '\0') {
       c[j] = d[k];
       k++;
       j++;
   }



printf("%s\n",c);
return 0;
}
