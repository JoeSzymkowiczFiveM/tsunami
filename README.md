# tsunami

This a simple script to bring down a FiveM server at specific times. Enter the hour that you wish to stop the server, and it will begin a countdown in the chat 5 minutes prior. This will not bring FXServer back up. OS will need to do this separately.

### Requirements

- [cron](https://github.com/esx-framework/cron)

## Installation
- Add this to your `server.cfg`:
```
start tsunami
```
- Add this to your `server.cfg` after your `start tsunami`:
```
add_ace resource.tsunami command.sets allow
```

# Legal
### License
tsunami

Copyright (C) 2019-2020 Joe Szymkowicz

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
