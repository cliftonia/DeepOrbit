# Deep Orbit

A space strategy game for iPhone that mixes galaxy-scale empire building with top-down arcade
combat, inspired by *Star Reach* (1994). Built in SpriteKit with no third-party dependencies.

<p align="center">
  <img src="docs/screenshots/menu.png" alt="Title screen with a ringed gas giant, a space station and the New Mission and Settings buttons" width="30%">
  <img src="docs/screenshots/free-roam.png" alt="Free-roam piloting between planets with fuel, credits and minerals in the HUD" width="30%">
  <img src="docs/screenshots/planet.png" alt="Planet detail for the player's colony with population, resources, structures and build options" width="30%">
</p>

## The game

- **Galaxy map**: a procedurally generated galaxy; fly between planets on a fuel budget
- **Planets**: build mines, factories, spaceports and biospheres to grow an economy
- **Combat**: wave-based arcade encounters decide who holds a planet
- **Rival factions**: three AI races expand and compete for the same galaxy
- **Fleets**: ships you build join the fight
- **Campaign**: win and lose states, with save and load

Status: **1.0 complete**. Roadmap and milestones are in [`DEEPORBIT.md`](DEEPORBIT.md).

## Structure

Each screen is an `SKScene`, split into focused extensions:

| Area | Files |
|---|---|
| Galaxy | `GalaxyGenerator`, `GalaxyMapScene` (+ `HUD`, `Navigation`) |
| Combat | `GameplayScene` (+ `Combat`, `Input`, `Player`, `Spawning`, `HUD`), `CombatContext` |
| Free roam | `FreeRoamScene` (+ `Controls`, `HUD`) |
| Strategy | `PlanetDetailScene`, `FleetManagerScene`, `AIController`, `FactionData` |
| State | `GameState`, `SaveManager`, `GameSettings` |
| Look and feel | `Theme`, `BackgroundBuilder`, `GameFeedback` |

## Running it

Open `spritekit.xcodeproj` and run the **spritekit** scheme on an iOS simulator or device. Tests use Swift Testing:
`xcodebuild test -project spritekit.xcodeproj -scheme spritekit -destination 'platform=iOS Simulator,name=iPhone 17'`.

## Licence

[MIT](LICENSE)
