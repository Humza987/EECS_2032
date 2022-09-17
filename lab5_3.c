#include <stdio.h>
int main() {
int r=0;
int c=0;
int counter=0;
int rows=0;
int i;
int j;

int matrix1[256][256];
int matrix2[256][256];
scanf("%d%d",&r,&c);


for(i=0; i<r; i++) {
for(j=0; j<c; j++) {
scanf("%1d", &matrix1[i][j]);
}
}

for(i=0; i<r; i++) {
for(j=0; j<c; j++) {
scanf("%1d", &matrix2[i][j]);
}
}

for(i=0; i<r; i++) {
for(j=0; j<c; j++) {
if(matrix1[i][j]==matrix2[i][c-1-j]){
counter++;
}
}

if(counter==c) {
rows++;
counter=0;
}
}

printf("The number of offending rows is %d\n", r-rows);
return 0;
}
