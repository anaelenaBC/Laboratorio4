from tkinter import *
from tkinter import messagebox
from datetime import datetime
from serial import *
import tkinter as tk

cantidadPaquetesRecibidos = 0
cantidadPaquetesProcesados = 0
cantidadPaquetesEnviados = 0

ventanaPrincipal = Tk()
labelCantidadPaquetesRecibidos = Label(ventanaPrincipal, font='Arial 11', text='Paquetes recibidos: 0')
labelCantidadPaquetesProcesados = Label(ventanaPrincipal, font='Arial 11', text='Paquetes procesados: 0')
labelCantidadPaquetesEnviados = Label(ventanaPrincipal, font='Arial 11', text='Paquetes enviados: 0')

textPaquetesRecibidos = Text(ventanaPrincipal, font='Arial 11')
textPaquetesEnviados = Text(ventanaPrincipal, font='Arial 11')

def agregarElementosVentanaPrincipal():
    labelPaquetesRecibidos = Label(ventanaPrincipal, font='Arial 14', text='Paquetes recibidos:')
    labelPaquetesRecibidos.place(x=10,y=10)
    textPaquetesRecibidos.config(state=DISABLED)
    textPaquetesRecibidos.place(x=10,y=50,width=180,height=250)
    labelCantidadPaquetesRecibidos.place(x=10,y=310)
    labelCantidadPaquetesProcesados.place(x=10,y=340)
    labelPaquetesEnviados = Label(ventanaPrincipal, font='Arial 14', text='Paquetes enviados:')
    labelPaquetesEnviados.place(x=220,y=10)
    textPaquetesEnviados.config(state=DISABLED)
    textPaquetesEnviados.place(x=220,y=50,width=180,height=250)
    entryPaqueteEnviar = Entry(ventanaPrincipal, font='Arial 11')
    entryPaqueteEnviar.place(x=220,y=310,width=100)
    botonEnviarPaquete = Button(ventanaPrincipal, text='ENVIAR', command=lambda:validarPaqueteEnviar(entryPaqueteEnviar.get()))
    botonEnviarPaquete.place(x=330,y=310,width=70,height=20)
    labelCantidadPaquetesEnviados.place(x=220,y=340)

def validarPaqueteEnviar(paqueteEnviar):
    if paqueteEnviar != '':
        if len(paqueteEnviar) == 8:
            sonBits = True
            for caracter in paqueteEnviar:
                if not caracter in ['0','1']:
                    sonBits = False
                    break
            if sonBits:
                if paqueteEnviar[-4:] in ['0001','0010','0011']:
                    enviarPaquete(paqueteEnviar)
                else:
                    messagebox.showerror('Error', 'El paquete a enviar no contiene una dirección válida (0001, 0010, 0011). Intentelo nuevamente')
            else:
                messagebox.showerror('Error', 'El paquete a enviar solo debe contener datos binarios (1,0). Intentelo nuevamente')
        else:
            messagebox.showerror('Error', 'El paquete a enviar debe contener 8 bits. Intentelo nuevamente')
    else:
        messagebox.showerror('Error', 'El paquete a enviar es vacío. Intentelo nuevamente')

def enviarPaquete(paqueteEnviar):
    global cantidadPaquetesEnviados
    cantidadPaquetesEnviados = cantidadPaquetesEnviados + 1
    labelCantidadPaquetesEnviados.config(text='Paquetes enviados: ' + str(cantidadPaquetesEnviados))
    textPaquetesEnviados.config(state=NORMAL)
    if cantidadPaquetesEnviados == 1:
        textPaquetesEnviados.insert(tk.END,datetime.now().strftime('%H:%M:%S')+' -> '+paqueteEnviar[0:4] + ' (a ' + paqueteEnviar[-4:] + ')')
    else:
        textPaquetesEnviados.insert(tk.END,'\n'+datetime.now().strftime('%H:%M:%S')+' -> '+paqueteEnviar[0:4] + ' (a ' + paqueteEnviar[-4:] + ')')
    textPaquetesEnviados.config(state=DISABLED)
    
    '''
    puertoSerial = Serial(port='COM3', baudrate=9600)
    puertoSerial.write(int.to_bytes(int(paqueteEnviar)))
    '''
    
def recibirPaquete(paqueteRecibir):
    '''
    0001: FPGA1
    0010: FPGA2
    0011: FPGA3
    0100: PC
    '''
    global cantidadPaquetesRecibidos
    global cantidadPaquetesProcesados
    if (paqueteRecibir[-4:] == '0100'):
        cantidadPaquetesRecibidos = cantidadPaquetesRecibidos + 1
        cantidadPaquetesProcesados = cantidadPaquetesProcesados + 1
        labelCantidadPaquetesRecibidos.config(text='Paquetes recibidos: ' + str(cantidadPaquetesRecibidos))
        labelCantidadPaquetesProcesados.config(text='Paquetes procesados: ' + str(cantidadPaquetesProcesados))
        textPaquetesRecibidos.config(state=NORMAL)
        if cantidadPaquetesRecibidos == 1:
            textPaquetesRecibidos.insert(tk.END,datetime.now().strftime('%H:%M:%S')+' -> '+paqueteRecibir[0:4])
        else:
            textPaquetesRecibidos.insert(tk.END,'\n'+datetime.now().strftime('%H:%M:%S')+' -> '+paqueteRecibir[0:4])
        textPaquetesRecibidos.config(state=DISABLED)
    else:
        cantidadPaquetesProcesados = cantidadPaquetesProcesados + 1
        labelCantidadPaquetesProcesados.config(text='Paquetes procesados: ' + str(cantidadPaquetesProcesados))

def crearVentanaPrincipal():
    ventanaPrincipal.geometry('430x380')
    ventanaPrincipal.title('Aplicación de paquetes')

crearVentanaPrincipal()
agregarElementosVentanaPrincipal()
ventanaPrincipal.mainloop()