#Para estimar la media y el total
#en un muestreo aleatorio simple
media_total=function(vector, n){
	N=length(vector)
	if (n>N){
		n=floor(n/N)
	}
	a=sample(1:N,n)
	media=mean(vector[a])
	total=media*N
	print("muestra de tamanno")
	print(n)
	print(" valores de la muestra")
	print(vector[a])
	print("media muestral")
	print( media)
	print("total estimado")
	print(total)
	media_total=c(media,total)
}