# SudoWars AMF Monitor (aka: SudoWire)

The SudoWars AMF Monitor (aka: SudoWire) is a Action Message Format monitor for debugging inbound and outbound messages. It can act as an inline transparent proxy (supporting 'local' & 'http') or as a side-loaded "T-style" adapter as not to effect the actual traffic that the game client is connecting to and any external proxy that might be in use by the end-user (aka: the gamer).

It also can save an observed session for replaying to the client at a later time. This feature is primary used to test client UI and engine features during development as to not involve the game server in these development cycles. A secondary feature us it can also be used as a way to repro a bug that the developers can not. The the gamer would enable this proxy, run their game till the bug that they are experiencing happened, save the current session and send the resulting session file to the developers for review.

    Note: This replay feature only sends data back to the connected local client but not the game server.

As an Adobe Air version 16+ based application it is supported on OS-X and Windows, but not Linux (complain to Adobe, not to us about this).

## Usage:

As a '*local*' proxy use host name (or IP address ) and port 54321 in your client proxy setup:

ie. "local://localhost:54321"

As a '*http*' proxy use host name (or IP address ) and port 54321 in your client proxy setup:

ie. "http://localhost:54321"

Socks and HTTPS are currently not tested and not in the public release, if you have a need for these post a enhancement (via issues: https://github.com/Sudo-Wars/SudoWire/issues).

## Build Information:

**OS-X Requirements:**

    OS-X 10.8+ (Intel)
	Air 16.0+ 
	
**Dependancies:**

	ANE: MacOSFullScreenANE
	Forked: https://github.com/b005t3r/MacOSFullScreenANE
	
	FlexORM Library(swc)
	Forked: https://github.com/seyran/FlexORM
	 
**Add Compiler keep metadata for the following attributes:**

	* Table
	* Id
	* Column
	* ManyToOne
	* OneToMany
	* ManyToMany
	* Transient


