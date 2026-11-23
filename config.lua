Config = {}

-- ============================================================
--  GTAOutfitters Welcome Kit (FREE) - configuration
--  Make it yours: name, text, links, rules, colors.
-- ============================================================

Config.ServerName = 'Your Server Name'
Config.Tagline = 'Welcome to the city.'

Config.WelcomeText = 'Thanks for joining us. Read the rules, join the Discord, and say hello in chat - staff are around if you need anything.'

-- Buttons on the panel. Set a URL to '' to hide that button.
Config.DiscordUrl = 'https://discord.gg/yourserver'
Config.StoreUrl = 'https://yourstore.tebex.io'
Config.WebsiteUrl = ''

-- Rules list shown on the Rules tab. Plain text lines.
Config.Rules = {
    'No RDM or VDM.',
    'Stay in character in the city.',
    'No exploiting or mod menus.',
    'Respect other players and staff.',
    'Report bugs in the Discord, do not abuse them.',
}

-- Show the panel on every join (true) or only the first spawn
-- of each session (false - same thing on most servers; the panel
-- always closes permanently for the session once dismissed).
Config.ShowEveryJoin = false

-- Accent color for the panel (buttons, headings, divider).
Config.Accent = '#D4AF37'

-- Footer credit. It is one small line; leaving it in is how this
-- free resource supports its makers. You may remove it.
Config.FooterText = 'Welcome Kit by GTAOutfitters'
