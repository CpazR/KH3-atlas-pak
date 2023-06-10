# AtlasPak - A dependency mod for KH3 custom map compatability

## What this mod does?

The purpose of this mod is to organize, manage and maintain datatables that map mods will require to edit to function and work together without conflicts.

## How to use this mod?

### For modders:

### TODO: Finalize this

For map modders, it should be as simple as copying the contents of the `projectAssets` folder into your `contents` folder in your Tres game project.

**DO NOT MODIFY THEESE ASSETS!** This is simply for compatability between different map mods.

## Adding your maps:

### TODO: Add more robust how-to's on what data table adds what.

Add your map fields by pulling down this repo, creating a new branch, modifying the datatables to include your map (do not remove any other entries without permission), and create a pull request for your changes to be reviewed.

## Uploading your map:

When you upload your map to nexus, be sure to do the following:

- Link MapPak as a dependency on nexus
- ***DO NOT COOK ATLASPAK ASSETS IN YOUR TRES-GAME***
- Can exclude by going to edit -> project settings -> project -> packaging -> directories to never cook and add the following:
  - `System/TresAreaNameTable`
  - `System/TresMapNameTable`
  - `UI/Data/AreaSelectData`
  - `UI/Data/SaveMenuFaceIcon`
  - `UI/Data/WorldIconName`
  - `Mods/AtlasPak`
