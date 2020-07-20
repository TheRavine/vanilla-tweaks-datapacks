# Armor Statues

Adds a unique book that allows you to alter the properties of armor stands in survival.

## Notes

1. This datapack uses a book of clickable links to modify the settings and pose of armour stands.
2. Once the datapack is installed, use "/trigger as_help" to see how to obtain the book.
  By default this is by clicking a link in the help text but this can be changed in the admin settings.
3. Admin settings are available using "/function as:admin" command and include:
  - Creating and removing a particle shrine for obtaining the book.
  - Enabling and disabling a crafting method for obtaining the book.
  - Enabling and disabling the link in the help text for obtaining the book.
  - Removing unused armour stands; ones that are invisible and do not hold or wear any items.
4. The help text will be amended to show the selected method(s) of obtaining the book
5. The help text also includes options to have notification messages in either the action bar or in chat.

## Commands

- `/trigger as_help` - display general information and how to obtain the book

## Admin Commands

- `/function as:admin` - display a configuration dialog for this datapack
- `/function as:admin/book_from_help_toggle` - toggle whether or not users can
  get the book from `/trigger as_help`
- `/function as:admin/craft_book_toggle` - toggle whether or not users can craft
  the book.
- `/function as:admin/fixed_item_frame_toggle`
- `/function as:admin/uuid_lock_toggle` - makes armor stands only unlockable by
  the user who locked them or creative players.
- `/function as:shrine/create` - create a shrine at the current location which
  will give players the book.
- `/function as:shrine/remove` - remove a shrine at the current location which
  will give players the book.
