//Nuevas Validaciones

//15/09/2008
//PER-SFC-2008-004_ET02
//******************************************************
//onKeyUp
//Validacion si la cadena es un numero real
var num="";

function KeyUpNumerosReal(Obj,dec)
{
	var valor = Obj.value;   		
	if (NumeroDecimales(valor)>dec)
	{
		var dot = valor.indexOf('.'); 
		valor=valor.substring(0,dot+dec+1);
		Obj.value=valor;
	}
}

//Verifica cuando decimales existe en la cadena
function NumeroDecimales(cadena)
{
	var NumDecimales  =-1;	
	for (i=0 ; i<cadena.length; i++ )
	{
	    if (NumDecimales>=0)
		    NumDecimales++;
	    if (cadena.charAt(i)== '.')
    		NumDecimales=0;				
	}
    return NumDecimales;
}

//onBlur
//Formatea la cadena a numero real
function onBlurNumeroRealFormato(p_textbox,decimals)
{ 
  pnumber = p_textbox.value;
  if (isNaN(pnumber)) { return 0}; 
  if (pnumber=='') { return 0}; 
  
  var IsNegative=(parseInt(pnumber)<0);
  if(IsNegative)pnumber=-pnumber;

  var snum = new String(pnumber); 
  var sec = snum.split('.'); 
  var whole = parseInt(sec[0]); 
  var result = ''; 
  if(sec.length > 1)
  { 
    var dec = new String(sec[1]);
    //Código modificado
    if(dec.charAt(0) != '0' && dec.length >= decimals)
    {
        dec = parseInt(dec)/Math.pow(10,parseInt(dec.length-decimals-1));
	    Math.round(dec);
	    dec = parseInt(dec)/10;
	    if(IsNegative)
	    {
	      var x = 0-dec;
          x = Math.round(x);
	      dec = - x;
	    }
	    else
	    {
          dec = Math.round(dec);
          if(dec==Math.pow(10,decimals)-1)
          {
            dec = parseInt(dec)+1;
          }
            if(dec==Math.pow(10,decimals))
	        {
	            //whole+=1;
	            //dec="0";
	            dec = dec - 1;
	        }
	    }	    
    }
    else if(dec.charAt(0) == '0' && dec.length >= decimals)
    {
        var cZero = 0;
        var dec_t = dec;
        var count = 0;
        dec = '';
        
        while(count < decimals)
        {
            //Contar la cantidad de ceros
            if(dec_t.charAt(count) == "0")
            {
                cZero++;
            }
            //Asignar los decimales según la cantidad que se quiere
            dec += dec_t.charAt(count);
            count++;
        }
        
        if(dec_t.charAt(decimals)>=5)
        {
            if(dec_t.charAt(decimals-cZero)!=9 && dec_t.charAt(decimals-cZero)!=0)
            {
                dec = '';
                var x = parseInt(dec_t.charAt(decimals-cZero));
                count = 0;
                while (count < decimals-1)
                {
                    dec += dec_t.charAt(count);
                    count++;
                }
                x+=1;
                dec += x;
            }
            else if(dec_t.charAt(decimals-cZero-1)==9)
            {
                var x = parseInt(dec_t.charAt(decimals-cZero+1));
                x+=1;
                dec = '';
                dec += x;
            }
            //Validando el penúltimo y último decimal...
            else if(dec_t.charAt(decimals)>=5 && (dec_t.charAt(decimals+1) >= 5 || dec_t.charAt(decimals+1) == ''))
            {
                dec = '';
                x = '';
                count = 0;
                while (count < decimals-1)
                {
                    dec += dec_t.charAt(count);
                    count++;
                }
                x += dec_t.charAt(decimals-1);
                if (x != 0 && x != 9)
                {
                    count = 0;
                    cZero = 0;
                    dec = '';
                    while(count <= decimals)
                    {
                        if(dec_t.charAt(count) == 0)
                        {
                            cZero++;
                        }
                        count++;
                    }
                    count = 0;
                    while(count < cZero)
                    {
                        dec += 0;
                        count++;
                    }
                    x = parseInt(dec_t.charAt(cZero)) + 1;
                    dec += x;
                }
                else if(x == 9)
                {
                    count = 0;
                    cZero = 0;
                    dec = '';
                    while(count <= decimals)
                    {
                        if(dec_t.charAt(count) == 0)
                        {
                            cZero++;
                        }
                        count++;
                    }
                    count = 0;
                    while(count < cZero-1)
                    {
                        dec += 0;
                        count++;
                    }
                    x = parseInt(dec_t.charAt(cZero)) + 1;
                    dec += x;                    
                }
                else
                {   
                    dec += 1;
                }
            }
        }
    }

    dec = String(whole) + "." + String(dec); 
    var dot = dec.indexOf('.'); 
    if(dot == -1)
    { 
      dec += '.'; 
      dot = dec.indexOf('.'); 
    }
	var l=parseInt(dot)+parseInt(decimals);
    while(dec.length <= l) { dec += '0'; } 
    result = dec; 
  } 
  else
  { 
    var dot; 
    var dec = new String(whole);
    dec += '.'; 
    dot = dec.indexOf('.'); 
	var l=parseInt(dot)+parseInt(decimals);
    while(dec.length <= l) { dec += '0'; } 
    result = dec; 
  } 
  if(IsNegative)result="-"+result;
  p_textbox.value = result; 
}

function esNumeroReal(x)
{
	num = /^\d+\.?\d*$/.test(x.value);
	if  (x.value != ''){
	if(!num){
		x.value = "0"; 
		}
	}
}

//KeyPress
//Keypress que verifica si los caracteres es un numero real
function keyPressNumeroReal(Obj)
{
	var ch_Caracter = String.fromCharCode(window.event.keyCode); 
	var valor = Obj.value + ch_Caracter;   		
    var numero = parseFloat(valor);
	var char1 = numero.toString();
	
	switch (ch_Caracter){
	case '.':
			if  ( ContieneCaracter('.',valor) < 2 ) 
				window.event.keyCode = ch_Caracter.charCodeAt(); 
			else
				window.event.keyCode = 0; 
			break;
	default:
			if(/[1234567890]/.test(ch_Caracter))
				window.event.keyCode = ch_Caracter.charCodeAt(); 
			else
      			window.event.keyCode = 0;       	
		    break;
	}
}

//Verifica si el caracter existe en la cadena
function ContieneCaracter(caracter , cadena){
	var cantidad  = 0;
	for (i=0 ; i<cadena.length; i++ )
		if (cadena.charAt(i)== caracter)
			cantidad++;
		return cantidad;
	}

//******************************************************
//******************************************************

//Antiguos

//Onblur
/*******************************************************
**VALIDA RUC
*********************************************************/
function rucCheck(ruc) {
	//alert('entro');
	var msgError='El RUC: '+ ruc + ' es inválido';
	
	if(ruc.length!=11){
		//alert(msgError);
		return false;
	}
	
	var di = ruc.split("");
	
	var sumRuc=eval(di[0])*5+eval(di[1])*4+eval(di[2])*3+eval(di[3])*2+eval(di[4])*7+eval(di[5])*6+eval(di[6])*5
	+eval(di[7])*4+eval(di[8])*3+eval(di[9])*2;
	var ultimoDigitoRuc=eval(di[10]);
	
	var enteroRuc=parseInt(sumRuc/11);
	var enteroRuc11=enteroRuc*11;
	var difSumRucEnteroRuc11=sumRuc-enteroRuc11;
	var dif11DifSumRucEnteroRuc11=11-difSumRucEnteroRuc11;
	
	if(dif11DifSumRucEnteroRuc11==10){
			digitoVerificador= 0;
	}else{
			digitoVerificador= dif11DifSumRucEnteroRuc11;
	}
	
	if(digitoVerificador==ultimoDigitoRuc){
		return true;
		
	}else{
		//alert(msgError);
		return false;
	}
	
}
//MaxLength TextArea
function maximo(obj,e,ma) {
	tecla=(document.all)?e.keyCode:e.which;
	if(obj.value.length==ma && tecla!=8)
	return false;
}

function esTelefono(x){
	if (x.value != ''){
		num = /^([0-9\-\*\#])*$/.test(x.value);
		if(!num)
			x.value = ""; 
	}
}
function esTextoLongitud(x, pLongitud){
	if (x.value != ''){
		num = /^([0-9a-zA-Z''&-._"/,()'\xE1\xE9\xED\xF3\xFA\xF1\xC1\xC9\xCD\xD3\xDA\xD1\s])*$/.test(x.value);
		if(!num){
			x.value = "";
		} else {
			if(x.value.length > pLongitud){
				x.value = x.value.substr(0, pLongitud);
			}
		}
	}
}
function esTexto3(x){
	// Solo letras y numeros y el guion
	if (x.value != ''){
		num = /^([0-9a-zA-Z\-])*$/.test(x.value);
		if(!num)
			x.value = ""; 
	}
}
function esTexto2(x){
	if (x.value != ''){
		num = /^([0-9a-zA-Z\-\*\xE1\xE9\xED\xF3\xFA\xF1\xC1\xC9\xCD\xD3\xDA\xD1])*$/.test(x.value);
		if(!num)
			x.value = ""; 
	}
}
function esTexto(x){
	if (x.value != ''){
		num = /^([0-9a-zA-Z''&-._"/,()'\xE1\xE9\xED\xF3\xFA\xF1\xC1\xC9\xCD\xD3\xDA\xD1\s])*$/.test(x.value);
		if(!num)
			x.value = ""; 
	}
}
//ARF (07-05-2010): validacion que permite el ingreso de texto y los simbolos "¡" y "?"
function esTextoInterrogacionYAdmiracion(x){
	if (x.value != ''){
		num = /^([0-9a-zA-Z''&-._"/,()'\xE1\xE9\xED\xF3\xFA\xF1\xC1\xC9\xCD\xD3\xDA\xD1\s\?\!])*$/.test(x.value);
		if(!num)
			x.value = ""; 
	}
}
function esSoloTexto(x){
	if (x.value != ''){
		num = /^([a-zA-Z\xE1\xE9\xED\xF3\xFA\xF1\xC1\xC9\xCD\xD3\xDA\xD1\s])*$/.test(x.value);
		if(!num)
			x.value = ""; 
	}
}

function esNumero(x){
	if (x.value != ''){
		num = /^([0-9])*$/.test(x.value);
		if(!num)
			x.value = ""; 
	}
}

//KeyPress

function validacionTelefono(Obj) {
    var key = window.event.keyCode;
    
		if(
		key  == 45 || key==35 || key==42 ||
		//numeros
		(key  >= 48 && key <= 57) 
		) 
        return;
	else
		window.event.keyCode = 0; 
}
function validacionTexto4(Obj) {
    var key = window.event.keyCode;
    if(
		//numeros
		(key  >= 48 && key <= 57) || 
		//mayusculas
		(key  >= 65 && key <= 90) || 
		//minusculas
		(key  >= 97 && key <= 122)
    ) 
        return;
	else
		window.event.keyCode = 0; 
}
function validacionTexto3(Obj) {
    var key = window.event.keyCode;
    if(
		//otros caracteres {*,/,-}
		key  == 42 || key  == 45 || key  == 47 ||
		//numeros
		(key  >= 48 && key <= 57) || 
		//mayusculas
		(key  >= 65 && key <= 90) || 
		//minusculas
		(key  >= 97 && key <= 122)|| 
		//acentos
		key  == 225 || 
		key  == 233 || 
		key  == 237 || 
		key  == 243 || 
		key  == 250 ||
		key == 241 ||
		key == 209
    ) 
        return;
	else
		window.event.keyCode = 0; 
}
function validacionTexto2(Obj) {
    var key = window.event.keyCode;
    if(
		//otros caracteres
		key  == 42 || key  == 45 ||
		//numeros
		(key  >= 48 && key <= 57) || 
		//mayusculas
		(key  >= 65 && key <= 90) || 
		//minusculas
		(key  >= 97 && key <= 122)|| 
		//acentos
		key  == 225 || 
		key  == 233 || 
		key  == 237 || 
		key  == 243 || 
		key  == 250 ||
		key == 241 ||
		key == 209
    ) 
        return;
	else
		window.event.keyCode = 0; 
}
function validacionSoloTexto(Obj) {
    var key = window.event.keyCode;
    
    if(
		//otros caracteres
		key  == 32 || 
		//mayusculas
		(key  >= 65 && key <= 90) || 
		//minusculas
		(key  >= 97 && key <= 122)|| 
		//acentos
		key  == 225 || 
		key  == 233 || 
		key  == 237 || 
		key  == 243 || 
		key  == 250 ||
		key == 241 ||
		key == 209
    ) 
        return;
	else
		window.event.keyCode = 0; 
}

function validacionTexto(Obj) {
    var key = window.event.keyCode;
  
    if(
		//otros caracteres
		key  == 32 || 
		key  == 35 || 
		(key  >= 38 && key <= 41) || 
		(key  >= 44 && key <= 46) || 
		//numeros
		(key  >= 48 && key <= 57) || 
		//mayusculas
		(key  >= 65 && key <= 90) || 
		//minusculas
		(key  >= 97 && key <= 122)|| 
		//acentos
		key  == 225 || 
		key  == 233 || 
		key  == 237 || 
		key  == 243 || 
		key  == 250 ||
		key == 241 ||
		key == 209		
    ) 
        return;
	else
		window.event.keyCode = 0; 
}

//ARF (07-05-2010): Se crea la validacion para texto y los sigons de interrogacion y admiracion
function validacionTextoInterrogacionYAdmiracion(Obj) {
    var key = window.event.keyCode;
  
    if(
		//otros caracteres
		key  == 32 || 
		key  == 33 ||
		key  == 35 || 
		(key  >= 38 && key <= 41) || 
		(key  >= 44 && key <= 46) || 
		//numeros
		(key  >= 48 && key <= 57) || 
		//iInterrogacion
		key  == 63 ||
		//mayusculas
		(key  >= 65 && key <= 90) || 
		//minusculas
		(key  >= 97 && key <= 122)|| 
		//acentos
		key  == 225 || 
		key  == 233 || 
		key  == 237 || 
		key  == 243 || 
		key  == 250 ||
		key == 241 ||
		key == 209		
    )     
        return;
	else		
		window.event.keyCode = 0; 
}

function habilitarControl(condicion,objName)
{
obj = document.getElementById(objName);
obj.disabled = !condicion;
toggleDisabled(condicion,obj);

}
function toggleDisabled(condicion,el) {
        try {
            el.disabled = !condicion;
        }
        catch(E){}
        
        if (el.childNodes && el.childNodes.length > 0) {
            for (var x = 0; x < el.childNodes.length; x++) {
                toggleDisabled(condicion,el.childNodes[x]);
            }
        }
    }


//Validacion de Fecha:
//-----------------------
function validacionFechaKeyPress(obj,separador,anio){
 	FP_PermiteNumeros();
	if (obj.value.length == 2)
	    obj.value = obj.value + separador;
	if(anio){    
	    if (obj.value.length ==5 )
	        obj.value = obj.value + separador;
    }
    if (obj.value.length = obj.maxlength-1){return;}
}
function validacionFechaOnblur(obj,formato) 
{	
	if (obj.value !="")
	  { 
	  if (!isFecha(obj.value,formato)) {
	      	obj.value="";
			alert('Debe ingresar una fecha valida.');
			obj.focus();			
		}		
	 }	
}
function isFecha(val,format) {
	var date=getDateFromFormat(val,format); //necesita el archivo date.js
	if (date==0) { return false; }
	return true;
	}
function FP_PermiteNumeros()
{
	if ((window.event.keyCode<48) || (window.event.keyCode>57)) {
		window.event.returnValue =0;}
}

//---------------------------

// JavaScript Document
function MM_swapImgRestore() { //v3.0
var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;}
function MM_preloadImages() { //v3.0
var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array(); var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++) if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}}
function MM_findObj(n, d) { //v4.01
var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) { d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);} if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n]; for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); if(!x && d.getElementById) x=d.getElementById(n); return x;}
function MM_swapImage() { //v3.0
var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3) if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}}
function MM_openBrWindow(theURL,winName,features) { //v2.0
window.open(theURL,winName,features);}
function isObject(o) {return (typeof(o)=="object");}
function isArray(o) {return (isObject(o) && (o.length) &&(!isString(o)));}
function RestoreScrollPosition(x,y) {scrollTo(x,y);} pX=0; pY=0;
function isString(o) {return (typeof(o)=="string");}
/*Funcion de validacion */

function checkStringNumerico(value)
{
    var checkStr="0123456789";
	var xkey;
	if (document.all)
	{
		xkey=window.event.keyCode;
		if(xkey=="13")
			event.returnValue = true;
		else
	        if (!(checkStr.indexOf(String.fromCharCode(xkey)) >= 0))
	            return false;
			else
				return true;
	}
}

function onKeyPressNumbers(e)
{
	var key = window.event ? e.keyCode : e.which
	var keychar = String.fromCharCode(key)
	reg = /\d/;
	return reg.test(keychar)
}

function onKeyPressAlpha(e)
{
	var key = window.event ? e.keyCode : e.which;
	var keychar = String.fromCharCode(key);
    var reg = new RegExp("^[0-9,a-z,A-Z]*$","g");
	return reg.test(keychar);
}
function onKeyPressStock(e)
{
	var key = window.event ? e.keyCode : e.which;
	var keychar = String.fromCharCode(key);
    var reg = new RegExp("^[1-9]*$","g");
	return reg.test(keychar);
}
function checkStringDecimal(value)
{
    var checkStr="0123456789.";
	var xkey;
	if (document.all)
	{
		xkey=window.event.keyCode;
		if(xkey=="13")
			event.returnValue = true;
		else
	        if (!(checkStr.indexOf(String.fromCharCode(xkey)) >= 0))
				{					
					return false;
	            }
			else	
				{			
					return true;
				}
	}
}

function checkStringDecimalUnDecimal(value)
{
    var checkStr="0123456789.";
	var xkey;
	if (document.all)
	{
		num = value;
		xkey=window.event.keyCode;
		if(xkey=="13")
			event.returnValue = true;
		else
	        if (!(checkStr.indexOf(String.fromCharCode(xkey)) >= 0))
				{
					return false;
	            }
			else				
			{
				//num+=String.fromCharCode(xkey);
				var vec = num.split('.');
				if (vec.length>1)
				{
						var dec = vec[1];
						//alert(dec);						
						//ARF (07-05-2010): Se cambia el valor del comparador de 1 a 0
						//if (dec.length>1)
						if (dec.length>0)
						{
							return false;
						}
						else
						{
							return true;
						}
				}				
			}
	}
}

function uppercase(e,r)
{
var key = window.event ? e.keyCode : e.which;
if (e.keyCode > 96 && e.keyCode < 123)
r.value = r.value.toUpperCase();
}

/*Funcion de validacion */
function browseImages(pSubject,pControl)
{
	var control = document.getElementById(pControl);
	var pCampo = control.name;
	var pValor = control.value;	
	MM_openBrWindow('../browse.aspx?pSubject='+pSubject+'&pCampo='+pCampo+'&pValor='+pValor,'Buscador','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=no,width=440,height=340');
}

jk=0;
objects=new Array();
function EnableButtons(){
	for(k=0;k<objects.length;k++){
		objects[k].disabled=false;
	}
}

function DisableButtons(object) 
{
//	if(typeof(object)=="object"){
//		object.disabled=true;
//		objects[jk++]=object;
//		window.onfocus = EnableButtons;
//	}
return true;
}

function trim(str)
{
   return str.replace(/^\s*|\s*$/g,"");
}

function makeOption(name, value) {
	var opt = document.createElement("OPTION");
	opt.text = name;
	opt.value = value;
	return opt;
}
function verificaTmMax(obj, max)
{
	var oas = new ActiveXObject("Scripting.FileSystemObject");
	var d = obj.value;
	var e = oas.getFile(d);
	if(e.size > max)
	{
		alert("El archivo a superado el tamaño maximo permitido " + e.size + " bytes");
	}
}
function imgLoad(obj, max)
{
	var strT = obj.value;
	if(strT != "")
	{
		strT = "<img id='Sample' src='" + strT + "' width='100' height='100'></img>";
		document.getElementById("MostrarImg").innerHTML= strT;
		if(!LimitedSize(max))
		{
			alert("File Size is more than 100 KB");
		}
		document.getElementById("MostrarImg").innerHTML = "";
	}
}
function LimitedSize(max)
{
	var i;
	var y = document.images;
	for (i=0;i<y.length;i++)
	{
		if((y[i].id) == 'Sample')
		{ 
			if(y[i].fileSize > max)
 			return false;
		}
	}
	return true;
}
function comprueba_extension(obj, tipo) { 
	var extensiones_permitidas;
	if(tipo == 1)
		extensiones_permitidas = new Array(".gif", ".jpg", ".bmp", ".tif" , ".pdf"); 
	else
		extensiones_permitidas = new Array(".mp4", ".mpg", ".avi", ".mov", ".wmv", ".mpeg",".3gp" ); 
		
	var archivo = obj.value; 
	if (archivo != "") { 
		extension = (archivo.substring(archivo.lastIndexOf("."))).toLowerCase(); 
		permitida = false; 
		for (var i = 0; i < extensiones_permitidas.length; i++) { 
			if (extensiones_permitidas[i] == extension) { 
				permitida = true; 
				break; 
			}
		}
		if (!permitida){
			alert("Comprueba la extensi\u00F3n de los archivos a subir. \nS\u00F3lo se pueden subir archivos con extensiones: " + extensiones_permitidas.join()); 
			return false;
		}
		else
			return true;
			
	}else
		return true;
}		
function getSelectIDs(oForm)
{
	if(valida)
	{
		var formLen = oForm.elements.length
		var resultado = true;
		for (i=0; i<formLen; i++)
		{
			switch (oForm.elements[i].type)
			{
				case 'file':
					if(oForm.elements[i].id.indexOf("Imagen") != -1)
						resultado = comprueba_extension(oForm.elements[i], 1)
					else
						resultado = comprueba_extension(oForm.elements[i], 0);
					break;
			}
			
			if(!resultado)
				return false;
		}
		return true;
	}else{
		return true;
	}
}

//*************************************************************************
//ARF (21-07-2010): Creaion de nuevas funciones para validacion de decimales
//Se crea la siguientes funciones que validaran a que solo se ingresen 2 decimales en las cajas de texto
function checkStringDecimalDosDecimales(obj, NumDecimales)
{
    extractNumber(obj, NumDecimales, false);
}
function BlockNonNumbers(obj, e)
{
	return blockNonNumbers(obj, e, true, false);
}
function extractNumber(obj, decimalPlaces, allowNegative)
{
	var temp = obj.value;
	
	// avoid changing things if already formatted correctly
	var reg0Str = '[0-9]*';
	if (decimalPlaces > 0) {
		reg0Str += '\\.?[0-9]{0,' + decimalPlaces + '}';
	} else if (decimalPlaces < 0) {
		reg0Str += '\\.?[0-9]*';
	}
	reg0Str = allowNegative ? '^-?' + reg0Str : '^' + reg0Str;
	reg0Str = reg0Str + '$';
	var reg0 = new RegExp(reg0Str);
	if (reg0.test(temp)) return true;

	// first replace all non numbers
	var reg1Str = '[^0-9' + (decimalPlaces != 0 ? '.' : '') + (allowNegative ? '-' : '') + ']';
	var reg1 = new RegExp(reg1Str, 'g');
	temp = temp.replace(reg1, '');

	if (allowNegative) {
		// replace extra negative
		var hasNegative = temp.length > 0 && temp.charAt(0) == '-';
		var reg2 = /-/g;
		temp = temp.replace(reg2, '');
		if (hasNegative) temp = '-' + temp;
	}
	
	if (decimalPlaces != 0) {
		var reg3 = /\./g;
		var reg3Array = reg3.exec(temp);
		if (reg3Array != null) {
			// keep only first occurrence of .
			//  and the number of places specified by decimalPlaces or the entire string if decimalPlaces < 0
			var reg3Right = temp.substring(reg3Array.index + reg3Array[0].length);
			reg3Right = reg3Right.replace(reg3, '');
			reg3Right = decimalPlaces > 0 ? reg3Right.substring(0, decimalPlaces) : reg3Right;
			temp = temp.substring(0,reg3Array.index) + '.' + reg3Right;
		}
	}
	
	obj.value = temp;
}
function blockNonNumbers(obj, e, allowDecimal, allowNegative)
{
	var key;
	var isCtrl = false;
	var keychar;
	var reg;
		
	if(window.event) {
		key = e.keyCode;
		isCtrl = window.event.ctrlKey
	}
	else if(e.which) {
		key = e.which;
		isCtrl = e.ctrlKey;
	}
	
	if (isNaN(key)) return true;
	
	keychar = String.fromCharCode(key);
	
	// check for backspace or delete, or if Ctrl was pressed
	if (key == 8 || isCtrl)
	{
		return true;
	}

	reg = /\d/;
	var isFirstN = allowNegative ? keychar == '-' && obj.value.indexOf('-') == -1 : false;
	var isFirstD = allowDecimal ? keychar == '.' && obj.value.indexOf('.') == -1 : false;
	
	return isFirstN || isFirstD || reg.test(keychar);
}

