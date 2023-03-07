Algoritmo sin_titulo
	Definir venta Como Real
	Definir nombre, zona Como Caracter
	Definir opta, i, j Como Entero
	Dimension nombre(4,2), zona(5,2), venta(20,3) //Dimensiono segun ejercicion y ventas=20 cargas
	
	//INICIALIZACIONES EN CERO PARA EVITAR ERRORES
	Para i<-0 Hasta 3 Con Paso 1 Hacer    //INICIALIZO vendedores y estados
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			nombre(i,j)=" "
		FinPara
	FinPara
	Para i<-0 Hasta 4 Con Paso 1 Hacer    //INICIALIZO zonas y estados
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			zona(i,j)=" "
		FinPara
	FinPara
	Para i<-0 Hasta 19 con paso 1 Hacer   //INICIALIZO Ventas
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			venta(i,j)=0
		FinPara
	FinPara
	menu(venta, nombre, zona) //INICIALIZADAS las matrices voy al menu()
			Escribir "Saliendo..."
			Esperar 5 Segundos
FinAlgoritmo
SubProceso menu(venta, nombre, zona)
	Definir i, j, opta Como Entero
	Repetir
		Borrar Pantalla
		Escribir "*******************"
		Escribir "* Menu ABM ventas *"
		Escribir "*******************"
		Escribir ""
		Escribir "------------------------------------"
		Escribir " 1. Altas, Bajas y/o modificación."
		Escribir " 2. Carga de ventas."
		Escribir " 3. Listados del mes."
		Escribir " 4. Salir."
		Escribir "------------------------------------"
		Escribir "  Seleccione nro. para ejecutar:" Sin Saltar; Leer opta
	Hasta Que opta>0 y opta<5
	Segun opta Hacer
		1:
			ABM(venta, nombre, zona) //Alta Baja y/o Modificacion de vendedores y zonas 
		2:
			cargaventa(venta, nombre, zona) //Carga ventas segun vendedor y/o Zona
		3:
			listames(venta, nombre, zona) //Listados de vendedores, zonas y ventas
		4:
			Repetir  //Bucle para confirmar salida o reingreso a subproceso menu()
				Escribir "Sale del Menu? 1- confirma 2- vuelve"
				Leer opta
				si opta=2 Entonces
					menu(venta, nombre, zona)
				FinSi
			Hasta Que opta>0 y opta<3
	FinSegun
	
FinSubProceso
SubProceso ABM(venta, nombre, zona)    //Alta Baja y/o Modificacion de vendedores y zonas 
	Definir i, opta Como Entero
	Repetir
		Borrar Pantalla
		Escribir "*************************************"
		Escribir "* 1. Altas, Bajas y/o modificación. *"
		Escribir "*************************************"
		Escribir ""
		Escribir "------------------------------------"
		Escribir " 1. Comisionistas."
		Escribir " 2. Zonas."
		Escribir " 3. Salir."
		Escribir "------------------------------------"
		Escribir "  Seleccione nro. para ejecutar:" Sin Saltar; Leer opta
	Hasta Que opta>0 y opta<5
	Segun opta Hacer
		1:
			comisionistas(venta, nombre, zona) //Alta, Baja y/o Modificacion de vendedores
		2:
			zonificacion(venta, nombre, zona) //Alta, Baja y/o Modificacion de zonas
		3:
			menu(venta, nombre, zona) //retorno a menu
	FinSegun
	
FinSubProceso
SubProceso cargaventa(venta, nombre, zona)  //cargar las ventas segun criterios 
	Definir i, j, opta Como Entero          //carga por vendedor o por zona
	Repetir
		Borrar Pantalla
		Escribir "*************************************"
		Escribir "* 2. Carga de ventas.               *"
		Escribir "*************************************"
		Escribir ""
		Escribir "------------------------------------"
		Escribir " 1. Carga x Comisionistas."
		Escribir " 2. carga x Zonas."
		Escribir " 3. Salir."
		Escribir "------------------------------------"
		Escribir "  Seleccione nro. para ejecutar:" Sin Saltar; Leer opta
	Hasta Que opta>0 y opta<4
	Segun opta Hacer
		1:
			cargaxcomi(venta, nombre, zona)   //Carga de ventas por vendedor
		2:
			cargaxzona(venta, nombre, zona)   //Carga de ventas por zona
		3:
			menu(venta, nombre, zona)    //retorno a menu principal
	FinSegun
	
FinSubProceso
SubProceso listames(venta, nombre, zona)  //Listados de vendores, zonas y/o ventas
	Definir i, j, opta Como Entero
	Repetir
		Borrar Pantalla
		Escribir "*************************************"
		Escribir "* 3. Listados del mes.              *"
		Escribir "*************************************"
		Escribir ""
		Escribir "------------------------------------"
		Escribir " 1. Listar Comisionistas."
		Escribir " 2. Listar Zonas."
		Escribir " 3. Listar Ventas."
		Escribir " 4. Salir."
		Escribir "------------------------------------"
		Escribir "  Seleccione nro. para ejecutar:" Sin Saltar; Leer opta
	Hasta Que opta>0 y opta<5
	Segun opta Hacer
		1:
			Borrar Pantalla
			Escribir "Listado de vendedores y estado (Alta o Baja)"
			Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados de alta y/o baja
				Para j<-0 Hasta 1 Con Paso 1 Hacer
					Escribir sin saltar  nombre(i,j) " - " 
      			FinPara
				Escribir ""
			FinPara
			Escribir "Presione cualquier tecla para volver al menu principal..."
			Esperar Tecla
			menu(venta, nombre, zona) //retorno a menu principal
		2:
			Borrar Pantalla
			Escribir "Listado de zona y estado (Alta o Baja)"
			Para i<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados de alta y/o baja
				Para j<-0 Hasta 1 Con Paso 1 Hacer
					Escribir sin saltar  zona(i,j) " - " 
      			FinPara
				Escribir ""
			FinPara
			Escribir "Presione cualquier tecla para volver al menu principal..."
			Esperar Tecla
			menu(venta, nombre, zona) //retorno a menu principal
		3:
			Borrar Pantalla
			Escribir "Listado de ventas"
			Escribir "Codigo de vendedor - Importe de venta - Codigo de zona"
			Para i<-0 Hasta 19 con paso 1 Hacer //Listado de ventas con codigo de vendedor y zona
				Para j<-0 Hasta 2 Con Paso 1 Hacer
					Escribir Sin Saltar venta(i,j) "  "
					FinPara
				Escribir ""
			FinPara
			Escribir "Presione cualquier tecla para volver al menu principal..." 
			Esperar Tecla
			menu(venta, nombre, zona) //retorno a menu principal
			
		4:
			menu(venta, nombre, zona) //retorno a menu principal
	FinSegun
FinSubProceso
SubProceso comisionistas(venta, nombre, zona) //Alta y/o Baja de vendedores
	Definir i, j, opta Como Entero
	Definir estado, vendedor Como Caracter
	Repetir
		Borrar Pantalla
		Escribir "*************************************"
		Escribir "* 1. Altas, Bajas y/o modificación. *"
		Escribir "*     1. Carga x Comisionistas.     *"
		Escribir "*************************************"
		Escribir ""
		Escribir "------------------------------------"
		Escribir " 1. Alta."
		Escribir " 2. Baja."
		Escribir " 3. Salir."
		Escribir "------------------------------------"
		Escribir "  Seleccione nro. para ejecutar:" Sin Saltar; Leer opta
	Hasta Que opta>0 y opta<4
	Segun opta Hacer
		1:
			Para i<-0 Hasta 3 Con Paso 1 Hacer    //Ingreso nuevo vendedor
				Escribir "Ingrese nombre del vendedor nro. " i
				Leer vendedor
					nombre(i,0)=vendedor
					nombre(i,1)="A" //estado de Alta
				FinPara
				comisionistas(venta, nombre, zona)
		2:
			Borrar Pantalla
			Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
				Para j<-0 Hasta 1 Con Paso 1 Hacer
					Escribir sin saltar i " -" nombre(i,j) " " 
      			FinPara
				Escribir ""
			FinPara
			Escribir "Seleccione numero vendedor a dar de baja:" //Elegir y dar de baja
			leer i
			Escribir "Ud. selecciono a " nombre(i,0) 
			Escribir "Confirma? 1- si 2- no."
			Leer opta
			si opta=1 Entonces
				nombre(i,1)="B"
				Escribir "Baja exitosa."
				Escribir "Presione cualquier tecla para volver al menu..."
				Esperar Tecla
				comisionistas(venta, nombre, zona)
			FinSi
			comisionistas(venta, nombre, zona) //retorno a subproceso vendedores
		3:
			menu(venta, nombre, zona) //retorno a menu principal
	FinSegun
FinSubProceso
SubProceso zonificacion(venta, nombre, zona) //Alta y/o Baja de zonas
	Definir i, j, opta Como Entero
	Definir estado, lugar Como Caracter
	Repetir
		Borrar Pantalla
		Escribir "*************************************"
		Escribir "* 1. Altas, Bajas y/o modificación. *"
		Escribir "*     2. carga x Zonas.             *"
		Escribir "*************************************"
		Escribir ""
		Escribir "------------------------------------"
		Escribir " 1. Alta."
		Escribir " 2. Baja."
		Escribir " 3. Salir."
		Escribir "------------------------------------"
		Escribir "  Seleccione nro. para ejecutar:" Sin Saltar; Leer opta
	Hasta Que opta>0 y opta<4
	Segun opta Hacer
		1:
			Para i<-0 Hasta 4 Con Paso 1 Hacer    //Ingreso nueva zona
				Escribir "Ingrese nombre de Zona nro. " i
				Leer lugar
				zona(i,0)=lugar
				zona(i,1)="A"
			FinPara
			ABM(venta, nombre, zona) //retorno a Menu de Altas y/o Bajas de vendedores y zonas
		2:
			Borrar Pantalla
			Para i<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados
				Para j<-0 Hasta 1 Con Paso 1 Hacer
					Escribir sin saltar i " -" zona(i,j) " " 
      			FinPara
				Escribir ""
			FinPara
			Escribir "Seleccione numero zona a dar de baja:" //Elegir y dar de baja
			leer i
			Escribir "Ud. selecciono a " zona(i,0) 
			Escribir "Confirma? 1- si 2- no."
			Leer opta
			si opta=1 Entonces
				zona(i,1)="B"
				Escribir "Baja exitosa."
				Escribir "Presione cualquier tecla para volver al menu..."
				Esperar Tecla
				ABM(venta, nombre, zona) //retorno a Menu de Altas y/o Bajas de vendedores y zonas
			FinSi
			ABM(venta, nombre, zona) //retorno a Menu de Altas y/o Bajas de vendedores y zonas
		3:
			ABM(venta, nombre, zona) //retorno a Menu de Altas y/o Bajas de vendedores y zonas
	FinSegun
	
FinSubProceso
SubProceso cargaxcomi(venta, nombre, zona) //Carga de ventas por vendedor
	Definir i, j, k, l, opta, zon Como Entero
	Definir num Como Real
	Definir Puerta Como Logico //variable para salida del bucle
	Borrar Pantalla
	Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			Escribir sin saltar i " -" nombre(i,j) " " 
		FinPara
		Escribir ""
	FinPara
	Repetir
		Escribir "Seleccione nro. de vendedor: " Sin Saltar; Leer opta
	Hasta Que opta>=0 y opta<4
	Puerta=Falso
	Segun opta Hacer
			0:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						venta(i,0)=0 //Asignacion del vendedor
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" zona(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de zona."
							Leer zon
						Hasta Que zon>=0 y zon<6
						venta(i,1)=num
						venta(i,2)=zon
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona) //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
				
			1:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						venta(i,0)=1 //Asignacion del vendedor
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" zona(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de zona."
							Leer zon
						Hasta Que zon>=0 y zon<6
						venta(i,1)=num
						venta(i,2)=zon
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)    //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
			2:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						venta(i,0)=2 //Asignacion del vendedor
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" zona(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de zona."
							Leer zon
						Hasta Que zon>=0 y zon<6
						venta(i,1)=num
						venta(i,2)=zon
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)     //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
			3:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						venta(i,0)=3 //Asignacion del vendedor
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" zona(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de zona."
							Leer zon
						Hasta Que zon>=0 y zon<6
						venta(i,1)=num
						venta(i,2)=zon
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)  //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
			4:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						venta(i,0)=4 //Asignacion del vendedor
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" zona(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de zona."
							Leer zon
						Hasta Que zon>=0 y zon<6
						venta(i,1)=num
						venta(i,2)=zon
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)   //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
		FinSegun
FinSubProceso
SubProceso cargaxzona(venta, nombre, zona) //Carga de ventas por zonas
	Definir i, j, k, l, opta, vendedor Como Entero
	Definir num Como Real
	Definir Puerta Como Logico //Variable para salir del bucle
	Borrar Pantalla
	Para k<-0 Hasta 4 Con Paso 1 Hacer    //Muestro zonas y estados
		Para l<-0 Hasta 1 Con Paso 1 Hacer
			Escribir sin saltar k " -" zona(k,l) " " 
		FinPara
		Escribir ""
	FinPara
	Repetir
		Escribir "Seleccione nro. de Zona: " Sin Saltar; Leer opta
	Hasta Que opta>=0 y opta<6
	Puerta=Falso
	Segun opta Hacer
			0:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						Borrar Pantalla
						venta(i,2)=0 //Asignacion de zona
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" nombre(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de Vendedor."
							Leer vendedor
						Hasta Que vendedor>=0 y vendedor<4
						venta(i,1)=num
						venta(i,0)=vendedor
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)  //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
				
			1:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						Borrar Pantalla
						venta(i,2)=1 //Asignacion de zona
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" nombre(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de Vendedor."
							Leer vendedor
						Hasta Que vendedor>=0 y vendedor<4
						venta(i,1)=num
						venta(i,0)=vendedor
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)  //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
			2:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						Borrar Pantalla
						venta(i,2)=2 //Asignacion de zona
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" nombre(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de Vendedor."
							Leer vendedor
						Hasta Que vendedor>=0 y vendedor<4
						venta(i,1)=num
						venta(i,0)=vendedor
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)  //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
			3:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						Borrar Pantalla
						venta(i,2)=3 //Asignacion de zona
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" nombre(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de Vendedor."
							Leer vendedor
						Hasta Que vendedor>=0 y vendedor<4
						venta(i,1)=num
						venta(i,0)=vendedor
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona) //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
			4:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						Borrar Pantalla
						venta(i,2)=4 //Asignacion de zona
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" nombre(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de Vendedor."
							Leer vendedor
						Hasta Que vendedor>=0 y vendedor<4
						venta(i,1)=num
						venta(i,0)=vendedor
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)  //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
			5:
				Para i<-0 Hasta 19 con paso 1 Hacer
					Para j<-0 Hasta 2 Con Paso 1 Hacer
						Borrar Pantalla
						venta(i,2)=5 //Asignacion de zona
						Escribir "Ingrese importe de venta: " Sin Saltar
						leer num
						Para i<-0 Hasta 3 Con Paso 1 Hacer    //Muestro vendedores y estados
							Para j<-0 Hasta 1 Con Paso 1 Hacer
								Escribir sin saltar i " -" nombre(i,j) " " 
							FinPara
							Escribir ""
						FinPara
						Repetir
							Escribir "Ingrese nro de Vendedor."
							Leer vendedor
						Hasta Que vendedor>=0 y vendedor<4
						venta(i,1)=num
						venta(i,0)=vendedor
						Escribir "Desea ejecutar otra carga? 0- si o 1- no"
						Leer Puerta
						si Puerta=Verdadero Entonces
							cargaventa(venta, nombre, zona)  //Para salir invoco a Subproceso
							i=19                         //y asigno valores de salida a los "Paras"
							j=2
						FinSi
					FinPara
				FinPara
		FinSegun
FinSubProceso
