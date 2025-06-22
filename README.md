# OGL Content from Kobold Press Foundry VTT module

This is the new home of the [Kobold Press OGL Compendium](https://foundryvtt.com/packages/koboldpressogl) module. It will still be updated on [the KPOGL wiki](http://kpogl.wikidot.com/) for the forseeable future, but GitHub is considerably more stable than wikidot.

With the move to GitHub, I can also start accepting contributions from the community.

## Contributing

I will accept contributions of OGL licensed Kobold Press sourced materials only in this repo. What this means is that if Kobold Press has updated a piece of content under a different license, it *must not* be used as a source for the text of contributions. You *cannot* copy text for a Tales of the Valiant *or* Black Flag products into this repo. Literal copying must only be done from OGL licensed sources, and must be careful to avoid any declared Product Identity.

That said, updating the automation, classification, and art of these assets is highly appreciated. I have not yet looked into how to include art and OGL content together yet, so if you want to contribute art, please reach out to me ­ Deuce (realdeuce) ­ on either the Kobold Press or Foundry Discord servers and we'll talk about it.

Currently, a Pull Request would be most appreciated, but the Foundry tools for keeping the diffs sane for that aren't obvious. If you know how to submit a clean PR, I will be very happy to accept that.

However, if you're a Foundry VTT user and not familiar with git, JSON, or any of the other things a PR would require, I'm still happy to accept your contributions! Import the item from the Compendium into your world, make the appropriate changes (and test them!), then export the updated object. You can do this by right-clicking and selecting Export. Attach the resulting file to a new Issue in this project, and I'll do the work to merge it myself before the next release.

I'm not willing to commit to a strict release timeline, so it's possible an issue or PR will be open for months before being merged, but I promise to update this file if I lose interest in continuing.

## Building the package

We need the Foundry VTT CLI to pack the JSON files. You can run `scripts/installcli.sh` from the root of the repo to do this.

Now, you can just run `scripts/build.sh` from the root of the repo. *DO NOT RUN IT FROM ANYWHERE ELSE* it forcibly deletes aritrary path names and doesn't do any error checking.
