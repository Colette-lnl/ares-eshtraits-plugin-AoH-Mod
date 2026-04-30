# ESH traits AoH fork for Ares

This is simply a modified version of Clockwork's ESH traits plugin that adds two new fields to the sheet: Personality and Timeline. That's it. It's the same in every other way, and Clockwork did the real work and deserves all the credit. Original ESH traits readme below, installation etc. is all exactly the same.


# ESH Traits Plugin for Ares

## Credits

Clockwork@AresCentral

Rucket@AresCentral for Sheet Template Updates

## Overview

PLEASE NOTE: This plugin has been updated for but not tested with v2.0.0-rc1. If you encounter any issues, let me know.

This plugin creates a series of commands for setting Powers, Skills, Advantages, and Flaws on characters. It also contains instructions on integrating these into the web portal and character generation.

![Web Portal](https://github.com/ClockworkEJD/ares-eshtraits-plugin/blob/master/images/ESHTraits.jpg)

![Client](https://github.com/ClockworkEJD/ares-eshtraits-plugin/blob/master/images/ESHTraits2.jpg)

 **NOTE:** This plugin requires the insertion of code into several areas reserved for custom hooks. It should not cause any merge conflicts as it does not modify the core code; however, the custom files will require updating per the instructions below.

## Installation

Disable the FS3 plugins, as explained in [Enabling and Disabling Plugins](https://aresmush.com/tutorials/config/plugins/).

In the game, run: plugin/install https://github.com/clockworkejd/ares-eshtraits-plugin

### Updating Custom Profile and Chargen Files

If you do not have any existing edits to these custom files, you can use the files in the custom_files folder of this repository as-is. If you do, then you may use them as templates to add the lines of code needed for eshtraits.

**File**: aresmush/plugins/profile/custom_char_fields.rb

**Update with**: custom_files/custom_char_fields.rb

**File**: aresmush/plugins/chargen/custom_app_review.rb

**Update with**: custom_files/custom_app_review.rb

### Updating Custom Web Portal Chargen and Profile Files

If you do not have any existing edits to these custom files, you can use the files in the custom_files folder of this repository as-is. If you do, then you may use them as templates to add the lines of code needed for eshtraits.

**File**: ares-webportal/app/components/chargen-custom.js

**Update with**: custom_files/chargen-custom.js

**File**: ares-webportal/app/components/chargen-custom.hbs

**Update with**: custom_files/chargen-custom.hbs

**File**: ares-webportal/app/components/chargen-custom-tabs.hbs

**Update with**: custom_files/chargen-custom-tabs.hbs

**File**: ares-webportal/app/components/profile-custom.hbs

**Update with**: custom_files/profile-custom.hbs

**File**: ares-webportal/app/components/profile-custom-tabs.hbs

**Update with**: custom_files/profile-custom-tabs.hbs

### Configuration

Go to Admin > Setup menu and edit chargen.yml and replace two FS3 [chargen stages](https://aresmush.com/tutorials/config/chargen.html) with the eshtraits stage.

Remove these two items:

    sheet:
      help: sheets
    abilities:
      help:skills

Add this item below the "groups" section:

    eshtraits:
      help: eshtraits



## Uninstalling

Removing the plugin requires some code fiddling. See [Uninstalling Plugins](https://www.aresmush.com/tutorials/code/extras.html#uninstalling-plugins).

## License

Same as [AresMUSH](https://aresmush.com/license).
