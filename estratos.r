#funcion disennada para facilitar el trabajo con estratos ya definidos
#a partir de un conjunto de datos limites
#esta separara los datos en un conjunto de estratos
datos_estratos=function(datos, vector)
#vector contiene los limites de cada estratos
#l=length(vector)
for (i in 1:length(vector)-1){
    s[i]=a[a>=v[i]]
    s[i]=s[i][s[i]<vector[i+1]]
}
datos_estratos=s