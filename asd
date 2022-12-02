#Datos de la matriz
import random
 
def crearmatriz(N,M):
  A=[]
  for a in range(1, N+1):
    VF=[]
    for b in range(1, M+1):
      num=random.uniform(1,20)
      num=round(num,1)
      VF.append(num)
    A.append(VF)
  return A
 
def imprimirmatriz(m):
  for a in range(0, len(m)):
    print("Notas del estudiante {} ".format(a+1), end="\t")
    for b in range(0, len(m[a])):
      print(m[a][b], end="\t")
    print()
 
def notas(m):
  VS=[]
  for a in range(0, len(m)):
    s=0
    for b in range(0, len(m[a])):
      s=s+m[a][b]
      p=s/5
      p=round(p,1)
    VS.append(p)
  return VS
 
def examenes(m):
  VS=[]
  for b in range(0, len(m[0])):
    s=0
    for a in range(0, len(m)):
      s=s+m[a][b]
      p=s/10
      p=round(p,1)
    VS.append(p)
  return VS
 
#Número de estudiantes y examenes
nf=10
nc=5
B=crearmatriz(nf, nc)
imprimirmatriz(B)
 
#Resultados
SF=notas(B)
print("El promedio de notas de cada estudiante es respectivamente:", SF)
 
SC=examenes(B)
print("El resumen de cada examen salio:", SC)
 
PA=sum(SC)/5
PA=round(PA,1)
print("El promedio de la clase es:", PA)
