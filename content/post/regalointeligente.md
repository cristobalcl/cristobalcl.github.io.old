---
title: "Presentación de RegaloInteligente.com"
date: "2015-02-24"
description: ""
categories:
    - "projects"
slug: "regalointeligente"
---

## Introducción

![RegaloInteligente.com](/images/regalointeligente-logo.png) Después de mucho tiempo de trabajo, es un placer presentar mi último proyecto: [RegaloInteligente.com](http://regalointeligente.com). Esta idea nació hace ya casi diez años, aunque por aquel entonces era algo totalmente distinto. En aquel momento se quedó en el tintero porque no había una forma clara de monetizar la idea. En 2013 retomé el concepto pero lo transformé en lo que terminó siendo: un buscador de regalos. Pero no di con la tecla de cómo hacer la clasificación inteligente de los regalos, y entre la avalancha de otros proyectos quedó aparcado. Hasta el mes pasado... Decidí abrazar la filosofía del [Lean Startup](http://en.wikipedia.org/wiki/Lean_startup), pero sobre todo la de [Getting Real](https://gettingreal.37signals.com/), libro que, irónicamente, estoy leyendo justo después de haber lanzado el proyecto. Ante todo, la idea era sacar un *producto mínimo viable* en el menor tiempo posible, para poder así probar la idea.

Y estamos hablando de días. En menos de dos semanas lancé la primera versión de la [web](http://regalointeligente.com), aunque es cierto que ya tenía bastante código escrito, y que el grueso del trabajo del servidor lo realiza mi framework **OrigamiPress**, que algún día liberaré. La [aplicación móvil](https://play.google.com/store/apps/details?id=com.cristobal.regalointeligente.app) para Android se desarrolló en 5 días. El primero de los cuales lo dediqué a investigar tecnologías como [PhoneGap](http://phonegap.com/), frameworks Javascript y estilos para móviles, etc. Finalmente decidí irme a lo nativo —aunque eso significara no tener la aplicación iOS al mismo tiempo—, y para ser mi primera aplicación para Android estoy muy contento con el resultado. La aplicación no solamente funciona bien, sino que el interfaz no es de los más feos. Es verdad que no tiene muchas *features*, pero eso es parte de la filosofía *Getting Real* —de la que ya hablaré en el futuro—.

Paralelamente a la web y a la app móvil desarrollé también una parte fundamental de la estrategia del negocio: un bot para Twitter. Cuando empecé el proyecto tenía una idea clara: tenía que ser un negocio *semi-pasivo*. ¿Qué significa esto? Pues que debía minimizar el tiempo que tuviera que dedicarle a administrarlo. Esto no solo implicaba que la base de datos de productos, la clasificación y la búsqueda, debía funcionar sin supervisión. Además el marketing debía funcionar también de forma autónoma. Para esto tenía varias alternativas, pero todas pasaban por la creación de gran cantidad de contenidos, en forma de artículos de blog, por ejemplo, para mejorar el SEO. Esta no es una idea que descarte todavía, pero viendo el estado actual del mercado, y sobre todo la experiencia en proyectos anteriores, preferí intentar otra cosa. Y como mi mejor arma era el software, y la red social más fácil de automatizar es Twitter, la opción estaba clara. Tenía que crear una estrategia eficaz de *growth hacking* a través de esta plataforma.

Para ello desarrollé un bot que realiza dos tareas. En primer lugar, periódicamente a lo largo del día publica en Twitter mensajes de varios tipos, como por ejemplo:

<blockquote class="twitter-tweet" lang="es"><p>Esta semana hemos añadido 198 productos a nuestra lista de <a href="https://twitter.com/hashtag/regalos?src=hash">#regalos</a>.</p>&mdash; RegaloInteligente (@regalointeligen) <a href="https://twitter.com/regalointeligen/status/570206518835961856">febrero 24, 2015</a></blockquote>

O bien:

<blockquote class="twitter-tweet" lang="es"><p>¿Buscas un <a href="https://twitter.com/hashtag/regalo?src=hash">#regalo</a> para tu novio? Encuentra aquí los mejores: <a href="http://t.co/1mW5QNhIHL">http://t.co/1mW5QNhIHL</a></p>&mdash; RegaloInteligente (@regalointeligen) <a href="https://twitter.com/regalointeligen/status/570297113139154944">febrero 24, 2015</a></blockquote>

Pero en segundo lugar, y para que la repercusión pudiera funcionar de forma viral, el bot es capaz de dar sugerencias cuando le preguntan en forma de menciones:

<blockquote class="twitter-tweet" lang="es"><p><a href="https://twitter.com/cristobal_psi">@cristobal_psi</a> Creo que esto le encantará: <a href="http://t.co/kA3vNkLyPQ">http://t.co/kA3vNkLyPQ</a> ;) <a href="https://twitter.com/hashtag/regaloencontrado?src=hash">#regaloencontrado</a></p>&mdash; RegaloInteligente (@regalointeligen) <a href="https://twitter.com/regalointeligen/status/567273693987221504">febrero 16, 2015</a></blockquote>

Para preguntarle sólo hay que mencionar a [@regalointeligen](https://twitter.com/regalointeligen) y añadir el hasttag `#buscoregalo`. El bot puede contestar a mensajes tan dispares como:

> «@regalointeligen #buscoregalo para mi novia.»

> «Hola @regalointeligen yo #buscoregalo para mi hijo de 10 años.»

> «Querido @regalointeligen #buscoregalo para mi madre. Gracias.»

> «@regalointeligen #buscoregalo para mi hermanito de #7.»

Todavía es muy pronto para saber cómo va a funcionar esta estrategia de marketing ya que ni siquiera está anunciado aún, pero será un buen [pivote](http://en.wikipedia.org/wiki/Lean_startup#Build-Measure-Learn) de partida para experimentar.

## Tecnología

![RegaloInteligente.com](/images/regalointeligente-1.png) En el apartado técnico no me he desviado mucho de lo que solía utilizar: Python + Pyramid, junto a mi framework OrigamiPress, que a su vez usa MongoDB, Memcached, Elasticsearch, Mako, etc. Por supuesto, uso extensivo de las APIs de Amazon y Twitter. Y en el lado del cliente HTML5, CSS3, Bootstrap, Javascript, Ajax,... Algo que no me esperaba en este punto era la falta de compatibilidad entre los distintos navegadores que existe todavía: tras lanzar la web descubrí que no funcionaba bien en Safari y Explorer, algo que fue difícil de depurar —sin querer salirme de Linux—.

Otra historia muy diferente ha sido la aplicación para Android. Ha sido *"sencilla"* de hacer, ya que el grueso del trabajo lo hace el servidor a través de servicios web. Pero como siempre, la parte más tediosa fue el interfaz de usuario. En primer lugar porque salirse del aspecto visual estándar de Android da mucho trabajo, y en segundo porque faltan algunos componentes como el selector de rango dual. Otra de las dificultades ha sido el entorno. Acostumbrado a hacerlo todo en el ligero **Vim**, tener que lidiar con un monstruo pesado como [Android Studio](http://developer.android.com/tools/studio/) ha sido muy duro. Y además el lenguaje **Java**, que me hizo echar de menos **Python** durante esos 5 días. Cuando te falta algo en Python la solución suele ser un `pip install`. En Java/Android la solución es más bien *"copia estos ficheros dentro de tu proyecto, modifícalos y cruza los dedos"*, aunque algunas veces tienes la suerte de encontrar un paquete que puedes añadir con Gradle.

Otra novedad ha sido el VPS. Esta vez, y tras mucho investigar y estudiar comparativas, he decidido apostar por [DigitalOcean](www.digitalocean.com/?refcode=36e391fa75d0), y la verdad es que estoy muy contento con la elección. No solo porque funciona todo genial, con un interfaz limpio y funcional, sino por la extensa y clarísima documentación que proveen para todos los aspectos del despliegue. Y el dominio, como siempre, en [NameCheap](http://www.namecheap.com/?aff=61066).

## Futuro

Todavía es muy pronto para valorar el éxito del proyecto. La web se anunció hace poco más de una semana y la aplicación móvil se anunció hoy mismo. Los perfiles sociales están empezando tímidamente a funcionar, y aún queda por desvelar el funcionamiento del bot de Twitter. Los primeros comentarios acerca del proyecto son positivos en cuanto a la utilidad del mismo. Las únicas críticas recibidas han sido con respecto a la cantidad de productos. En el momento de escribir este artículo había 544 productos en la página, que en principio no está mal, pero aún así es fácil de aumentar esa cifra, ya que el funcionamiento es semi-automático: la mayoría de los productos se buscan y clasifican automáticamente cada semana, aunque yo tengo la opción de añadir a mano algunos productos *destacados*. De todas formas, prefiero que haya pocos productos pero relevantes —de nuevo, me remito a las ideas del Getting Real—.

Ideas para nuevas funcionalidades hay para estar desarrollando durante meses, pero eso iría en contra de la filosofía adoptada. Los nuevos *features* deberán pasar un buen tiempo de cuarentena antes de decidir si merecen ser implementados. Por ahora la tarea es evaluar el funcionamiento de la página, escuchar a los usuarios y medir el éxito o fracaso de la propuesta. Y según los resultados de este análisis, actuar.

Mientras tanto, te invito a probar [la web](http://regalointeligente.com) y la [app](https://play.google.com/store/apps/details?id=com.cristobal.regalointeligente.app). ¡Todos los [comentarios](mailto:ccarnerolinan@gmail.com) son bienvenidos!

<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
