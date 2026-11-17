# Cosmic Snake datapack

## Description

### Minecraft Datapack that adds an end-game boss

> [!WARNING]
> This datapack require a resourcepack [link](https://modrinth.com/datapack)
>
> Current version work for `Minecraft 26.3`

The Boss head animations where made using [Animated Java](https://animated-java.dev/)

(Note: I'm terrible at animation)

The Animated Java files are not included in the repository due to how many there are (3000+ files), and because the files are 99% models and animations.

In 2020 I had an idea for a boss that since kept being stuck in my head, so why not use my Minecraft datapack experience to make it.

## Features

**This datapack has a config wich you can access it via `/function cosmicsnake:_admin/_set_config`** (require cheats)

There is also an unique per-player config that toggle a post-effect shader using `/trigger cosmicsnake.config.disable_posteffect`

### **<ins>How to start:</ins>**

You can follow the news advancements added in `The End category` to see every feature added.

#### **<ins>Summoning the Boss:</ins>**

To summon the boss, in any end biome, around a block on top of bedrock:

    - place 4 EndCrystal in a 4 blocks max radius
    - then place a beacon on top of the bedrock

exemple :[summoning image]

> [!NOTE]
> The boss can be summoned anywere in the End, you don't need to summon it at the End Podium

#### **<ins>The Boss abilities:</ins>**

[cosmicsnake image]

The Cosmic Snake is kind of destructive, so be carefull if you have any precious build nearby (unless mob_grief gamerule is disabled)

    - 1000 Health
    - The head have more resistance than the body
    - Damaging a segment will transfer the damage to the head and ignore the head resistance
    - Damaging a segment will increase an energy meter depending on the damage, and how fast the boss is being attacked
    - Immune to explosion, lightning, and fire
    - 1 ultimate attack, that is executed if the energy meter is too high

**<ins>Changes depending on the game difficulty:</ins>**

    - Normal :
        + Boss segments have contact damage depending on the energy
        + Boss have passive regen
        + Damaging a segment will give it resistance I for 1 second

    - Hard :
        + Damaging a segment will give it resistance II for 1 second

<details>
<summary>Tips and other informations:</summary>

    - The smaller the time the boss is not being attacked, the higher his energy meter will go up
    - Receive less damage from freezing, Spear, Mace, Firework
    - The Boss is design to have aoe attacks, keeping distance and attack it using range attacks is highly recomended
</details>

#### **<ins>Rewards:</ins>**

**Looking at advancements and the recipe books is recomended**

After defeating the boss you can collect a `Cosmic Snake Scale` (if mob_drops gamerules is enabled)

[boss drop image]

Using this item and a Brewing Stand you can brew a `Cosmic Bottle`. Wich can be used for a new weapon: `Ray Cannon` (check recipe book for the crafting).

This weapon when crafted is uncharged, you will need 2 Cosmic Bottles in the Off-Hand to charge it (you only need to this once per Ray Cannon)

The weapon can also be upgraded using `Ray Cannon Upgrade`, wich can be crafted (also check recipe book)

## Other Informations

A lot of thing can be modified in the datapack by modifying the files / using another datapck :

Most of them can be found inside: `data/cosmicsnake/tags/`

But you can also modify:
    
    - Default value of confing: `data/cosmicsnake/context_float_provider|context_int_provider/config_default_value/`
    - Boss loot in `data/cosmicsnake/loot_table/entity/cosmic_snake`

If you ever have a broken Cosmic Snake you can force kill all of the custom entity with this command: `function cosmicsnake:_admin/force_kill_all`