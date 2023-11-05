# AtlasPak - A dependency mod for KH3 custom map compatability

## What this mod does?

The purpose of this mod is to organize, manage and maintain datatables that map mods will require to edit to function and work together without conflicts.

## How to use this mod?

### For modders:

### TODO: Finalize this

For map modders, it should be as simple as copying the contents of the `projectAssets` folder into your `contents` folder in your Tres game project.

**DO NOT MODIFY THEESE ASSETS!** This is simply for compatability between different map mods.

## Adding Compatible Gummi Worlds:
In order to add gummi worlds to the gummi space, you can follow this simple guide. Just as with every other map mod, do not upload these assets or data tables in your mod. We will update the data tables in this mod that you will direct your mod downloaders to.
Guide: https://docs.google.com/document/d/14njJoIIYxajC7u4JY0j1zSX5YG0HARQT0u1Jw43hh7I/edit?usp=sharing

## Adding your maps:

### TODO: Add more robust how-to's on what data table adds what.

Add your map fields by pulling down this repo, creating a new branch, modifying the datatables to include your map (do not remove any other entries without permission), and create a pull request for your changes to be reviewed, merged, and uploaded in a new version of AtlasPak.

### TODO: Consider adding conditions for merging user submitted entries. Want to avoid dead Atlas entries for maps that might never get released.

## Uploading your map:

Make a pull request to this repo using your modified data table. We will make sure it is correct, approve it, and then reupload atlas pak to Nexus. In your mod, do not include any of these data tables or assets. On your mod page, you must put in the requirements that users download this mod. This insures that everyone's map mods are compatible with each other.

When you upload your map to nexus, be sure to do the following:

- Link AtlasPak as a dependency on nexus
- ***DO NOT COOK ATLASPAK ASSETS IN YOUR TRES-GAME***
- Can exclude by going to edit -> project settings -> project -> packaging -> directories to never cook and add the following:
  - `System/TresAreaNameTable`
  - `System/TresMapNameTable`
  - `UI/Data/AreaSelectData`
  - `UI/Data/SaveMenuFaceIcon`
  - `UI/Data/WorldIconName`
  - `Mods/AtlasPak/**`
