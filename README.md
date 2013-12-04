#The Sandbox/Powerbox blocks the keyboard input also in the Debug Console

###Steps to reproduce

- _Without_ Sandboxing (turn it off!), when at this breakpoint, you can type in the Debug Console (e.g. `p result`).
- _With_ Sandboxing, you can't! It seems the PowerBox or something is having "control" over the Keyboard Input.

**Some times when debugging/running is stopped, Xcode doesn't have a Keyboard anymore either, until I restart it**