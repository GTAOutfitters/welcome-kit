# Welcome Kit — Free Join Panel for FiveM Servers

A configurable welcome panel that shows when players join your server. **Standalone** — no framework, no database, 2-minute setup.

![Welcome Kit](https://gtaoutfitters.tebex.store/package/7823543)

## Features

- Your server name, tagline & welcome text (all editable in `config.lua`)
- Rules tab — edit the rules list in the config file
- Buttons for your Discord, Tebex store and website
- Accent color setting to match your server branding
- `/welcome` command lets players reopen it anytime

## Download

**Free on Tebex:** https://gtaoutfitters.tebex.store/package/7823543

Or clone this repo straight into your server's `resources` folder.

## Installation

1. Drop the `welcome-kit` folder into your server's `resources` folder
2. Add `ensure welcome-kit` to your `server.cfg`
3. Edit `config.lua` — server name, tagline, welcome text, rules, links, accent color
4. Restart the server (or `refresh` + `start welcome-kit`)

Players see the panel on join and can reopen it anytime with `/welcome`.

## Configuration

Everything lives in `config.lua`:

- `Config.ServerName` / `Config.Tagline` / `Config.WelcomeText`
- `Config.Rules` — list of rules shown on the Rules tab
- `Config.Links` — Discord / Store / Website button URLs
- `Config.AccentColor` — hex color for the panel accent

## More from GTAOutfitters

Building out a server? The store has full systems that work alongside the Welcome Kit:

- **VIP Membership System** — tiers, expiry, chat tags, Tebex-ready grant commands
- **Crafting System** — benches, blueprints, timed queues
- **Skills & Progression System** — XP and levels for everything
- **Advanced Garages + Impound** — public, job and police lots with impound fees
- **Police MDT / Dispatch** — citizens, vehicles, warrants, BOLOs, reports, live calls
- **Laundering Business** — a buyable laundromat with timed wash batches
- **Complete Script Bundle** — all five core systems in one package

Store: https://gtaoutfitters.tebex.store — launch week code **LAUNCH20** takes 20% off paid packages through Nov 30.

## Support

Found a bug or want a feature? Open an issue here, or reach us through the Tebex store page.

## License

Free to use on your server. Please don't resell or redistribute as your own product.
