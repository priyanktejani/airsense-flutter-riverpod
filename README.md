<h1 align="center">Airsense app with Riverpod (BREATHE LONDON API)</h1>


<p align="center">
  <img width="150" src="https://github.com/priyanktejani/airsense/blob/main/screenshots/launcher/ic_launcher.png?raw=true">
</p>

<p align="center"> A graphical air quality monitoring app that allows users to track air pollution levels.</p>
<div align="center">

</div>

## Getting a BREATHE LONDON API key

This project uses the BREATHE LONDON API to get the latest movies data.

Before running the app you need to [sign up on the TMDB website](https://www.themoviedb.org/signup), then obtain an API key on the [settings API page](https://www.themoviedb.org/settings/api).

Once you have this, create an `.env` file **at the root of the project** and add your key:

```dart
// .env
BREATHE_LONDON_KEY=your-api-key
```

Then, run the code generator:

```
flutter_scripts run
```

This will generate a `env.g.dart` file inside `lib/env`. This contains the `breatheLondonApiKey` that is used when making requests to the BREATHE LONDON API.

Congratulations, you're good to go. 😎


## Features

- Custom graphs
- Stateful nested routing
- Landscape view


## Packages

- [flutter_riverpod](https://pub.dev/packages/riverpod) and [riverpod_generator](https://pub.dev/packages/riverpod_generator) for data caching (and much more!)
- [fl_chart](https://pub.dev/packages/fl_chart) for generate graph
- [freezed](https://pub.dev/packages/freezed) for JSON serialization
- [dio](https://pub.dev/packages/dio) for networking
- [go_router](https://pub.dev/packages/go_router) for navigation
- [envied](https://pub.dev/packages/envied) for handling API keys
- [flutter_launcher_icons](https://pub.dev/packages/envied) for handling API keys


## App Architecture

The project follows Riverpod app architecture with a feature-first project structure.

More details here:

- [Flutter App Architecture with Riverpod: An Introduction](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/)


## Screenshots

<p align="center">
	<img width=24%; src="https://github.com/priyanktejani/airsense/blob/main/screenshots/1.png">
	<img width=24%; src="https://github.com/priyanktejani/airsense/blob/main/screenshots/2.png">
  <img width=24%; src="https://github.com/priyanktejani/airsense/blob/main/screenshots/3.png">
	<img width=24%; src="https://github.com/priyanktejani/airsense/blob/main/screenshots/4.png">
</p>