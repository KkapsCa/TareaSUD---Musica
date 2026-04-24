# TareaSUD-Musica 🎵

App de música desarrollada en Flutter, refactorizada bajo principios de **Clean Architecture** y **GetX**.

## Arquitectura
Este proyecto sigue una estructura modular para asegurar escalabilidad y mantenibilidad:
- **Presentation Layer**: Widgets y Controllers (GetX).
- **Domain Layer**: Modelos de datos y abstracciones (Interfaces).
- **Data Layer**: Repositorios y Providers (implementación del Repository Pattern).

## Características
- ✅ **Repository Pattern**: Desacoplamiento total entre lógica y datos.
- ✅ **Inyección de Dependencias**: Gestión eficiente con GetX Bindings.
- ✅ **TDD Ready**: Suite de pruebas unitarias implementada (Fakes over Mocks).

## Requisitos
- Flutter SDK: `^3.6.0`

## Instalación
```bash
git clone git@github.com:KkapsCa/TareaSUD---Musica.git
cd TareaSUD---Musica
flutter pub get
flutter run
```

## Testing
Para ejecutar la suite de pruebas:
```bash
flutter test
```

## Contribución y Conventional Commits
Este proyecto utiliza `release-please` para la automatización de releases. **Es obligatorio** seguir el estándar de [Conventional Commits](https://www.conventionalcommits.org/):
- `feat:` para nuevas funcionalidades.
- `fix:` para correcciones de bugs.
- `docs:` para cambios en documentación.
- `chore:` para mantenimiento o configuración.
