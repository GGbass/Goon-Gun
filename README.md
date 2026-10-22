# Goon-Gun

Visión general del proyecto
El juego parte como un shooter en vista lateral o cenital, con disparos, coberturas y enemigos básicos.
Cada arma tendrá estadísticas variables y efectos únicos, generados procedimentalmente.
Conforme avances, añadirás atributos de personaje (clases, habilidades) y un sistema de progresión persistente.

Mecánicas clave
Movimiento fluido: correr, saltar y cobertura contra paredes.

Disparo con retroceso y distintos patrones (ráfaga, dispersión).

Generador procedural de armas: cañón, cargador y elemento elemental.

Sistema de daño por áreas y estados alterados (fuego, envenenamiento).

Menú de inventario sencillo para equipar armas y habilidades.

Arquitectura y tecnologías
Motor ligero: SFML o SDL2 para render, sonido e input.

ECS (Entity Component System): biblioteca EnTT para separar lógica de datos.

Física y colisiones: Box2D o un sistema propio simple.

UI/HUD: Dear ImGui en modo debug y luego un sistema básico en tu renderer.

Gestión de recursos: clases RAII en C++ que carguen texturas, sonidos y JSON/INI para datos de armas.

Redes y multijugador futuro
Protocolo: ENet (UDP fiable) o Asio (TCP/UDP híbrido).

Arquitectura cliente/servidor: servidor autoritario para validar disparos y objetos.

Serialización: FlatBuffers o Protocol Buffers para eventos de juego.

Estado del mundo: sync delta snapshots y LOD de actualización para latencias altas.

Lobby y matchmaking: módulo aparte que gestione salas y conectividad.

Roadmap de desarrollo
Prototipo de combate básico

Movimiento y disparo.

Colisiones y muerte de enemigos.

Generador de armas

Estructura de stats y lógica procedural.

Interfaz de inspección de armas.

Sistema de progresión y HUD

Salud, munición, puntos de experiencia y niveles.

Árbol de habilidades simple.

Modo cooperativo local

Soporte de múltiples gamepads y splitscreen.

Balance de enemigos en función de jugadores.

Implementación de red

Sincronización de jugadores y enemigos.

Gestión de latencia y reconciliación de movimientos.

Contenido RPG y roles

Clases con habilidades únicas (ingeniero, soldado, sanitario).

Misiones, loot drops y zonas seguras.

Recursos y librerías útiles

OpenGameArt.org y Kenney.nl para assets gratuitos.

GitHub: ejemplos de proyectos SFML+EnTT y demos de ENet.

Foros y Discords: comunidades de C++ Gamedev, ECS, redes en juegos.

Tutoriales: series “Making a 2D Game in C++” de YouTube y documentación oficial de Box2D.

Para profundizar, podrías explorar un sistema de shaders en 2D para efectos de recarga o ralentizado. También considera usar un editor de niveles propio con JSON para iterar sin recompilar. Con esta base modular, escalarás de un shooter simple a un RPG multijugador al estilo Borderlands en un entorno 2D.




todo ---

Prototipo base con SFML/SDL2: movimiento, disparo y colisiones.

Implementar EnTT para ECS y Box2D para física.

Generador procedural de armas con estadísticas variables.

HUD minimalista con Dear ImGui.

Camino hacia multijugador con ENet y FlatBuffers.