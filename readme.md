# Vertebra API

## Configuración inicial (base de datos)

Si usted es un usuario experimentado en bases de datos, los archivos de configuración se encuentran  dentro del fichero `src/database`.
Ejecútelos de manera habitual y omita los 4 pasos siguientes.


De lo contrario, siga estos pasos:

**Paso 1**
<br/>
Copie los ficheros (char_loc.sql y episode.sql) de `src/database` al directorio de su preferencia.
```
cp src/database/* /su_directorio/
```

**Paso 2**
<br/>
Ubique este directorio en su consola o terminal y allí ingrese a su consola de postgres
```
cd /su_directorio/
psql
```

**Paso 3**
<br/>
Cree automáticamente la base de datos y las tablas location y character
```
\i char_loc.sql
```

**Paso 4**
<br/>
Por último cree la tabla de los episodios
```
\i episode.sql
```


## Configuración de la API

Antes de iniciar, debe modificar los datos de configuración que se encuentran en el directorio `src/services/dev.env.js`

```js script

...

const pool = new Pool({
  host : "localhost",
  user : "postgres",    // <- Ingrese su usuario
  password: "",         // <- Ingrese su contraseña
  database: "v_dev",
  port: "5432"
})

...
`
```
Cámbielos por sus datos de conexión local. Se sugiere mantener el nombre de la base de datos (`v_dev`) para evitar futuros conflictos de conexión.


## Datos locales y variables de entorno

Se disponen dos variables de entorno en el fichero .env ubicado en la raíz del proyecto, si está en un equipo con sistema operativo Linux o macOS ejecute el siguiente comando

```
export $(cat .env | xargs)
```

En windows debe acceder a `variables de entorno` en el panel de control o a través de comandos en powershell.

La tercera variable HARDC_TOKEN es un dato ‘quemado’ para facilitar el acceso a los datos sin la necesidad de generar un JWT nuevo.


## Ejecutar API

Luego de haber seguido estos pasos, debe hacer la clásica ejecución de un proyecto nodeJS.

```
npm install
npm start
```
Asegúrese de visualizar la definición del puerto en la consola con el mensaje `Server listening on 4000 port` (o el puerto de su preferencia).


## Uso de Postman 

Para acceder al api desde postman debe importar el fichero de configuración que está en el directorio `.postman/Vertebra-api.postman_collection.json` (en la raíz del proyecto)

Allí encontrará 3 subdirectorios (uno por categoría) y 2 variables de colección (`{{url_api}}`, `{{HARDC_TOKEN}}`) con sus valores ya definidos.



## Uso de la API

Desde Postman puede visualizar todos los endpoints disponibles. No se ha creado un endpoint para manejar sesiones, por lo que se recomienda hacer uso de la variable `HARDC_TOKEN` definida en las variables de entorno y de la colección de postman.

Para navegar cómodamente desde la interfaz gráfica se recomienda mantener los valores predeterminados como el `TOKEN_KEY` y el `API_PORT`, ya que si son modificados en este proyecto, allá también deberán modificarse.



<hr />

<sub><sup>© 2022  Alexander Forero L.</sup></sub>

