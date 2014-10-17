#include <iostream>
#include "conio.h"
#include <iomanip>
using namespace std;
#define FIL 20
#define COL 20
struct palabra{
char cadena[10];
};
struct matriz{
	palabra mat[FIL][COL];
	int fil;
	int col;
};
void cargar( matriz vect[],int n){
int i,j,k;
for(i=0;i<n;i++){
   cout<<"ingrese el numero de filas ";
   cin>>vect[i].fil;
   cout<<"ingrese el numero de columnas";
   cin>>vect[i].col;
   for(j=0;j<vect[i].fil;j++){
	   for(k=0;k<vect[i].col;k++){
            cout<<"ingrese la palabra";
		   cin>>vect[i].mat[j][k].cadena;   
	   }
   
   }

}
}

void mostrar( matriz vect[],int n){
int i,j,k;
cout<<endl<<"................"<<endl;
for(i=0;i<n;i++){
   for(j=0;j<vect[i].fil;j++){
	   for(k=0;k<vect[i].col;k++){
		   cout<<setw(7)<<vect[i].mat[j][k].cadena<<"   ";   
	   }
   cout<<endl;
   }

}
}
bool palindromo(char cad[]){
int i,n;
char aux[50];
n=strlen (cad);
strcpy(aux,cad);
for(i=0;i<n/2;i++){
	swap(aux[i],aux[n-1-i]);
}
if(strcmp(aux,cad)==0){
return (true);

}
else
return(false);
}
void eliminarvec(matriz vect[],int &n){
int i,j;
for(i=0;i<n;i++){
	for(j=i;j<n-1;j++){

		vect[j]=vect[j+1];
	}
n--;
i--;
}
}
void eliminarpalabra( matriz vect[],int &n){
int i,j,k;
for(i=0;i<n;i++){
   for(j=0;j<vect[i].fil;j++){
	   for(k=0;k<vect[i].col;k++){
		   if(palindromo(vect[i].mat[j][k].cadena)==true){
			   //cout<<"true";
			   eliminarvec(vect,n);
               //mostrar(vect,n);
		   }   
	   }
   }

}
//mostrar(vect,n);
}
void main(){
matriz vect[50];
palabra mat[FIL][COL];
int n;
cout<<"ingrese los elementos del vector";
cin>>n;
cargar(vect,n);
mostrar(vect,n);
eliminarpalabra(vect,n);
mostrar(vect,n);
getch();
}
