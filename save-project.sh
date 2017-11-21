#!/bin/bash

save-project git@github.com:pH7Software/pH7-Internationalization.git
save-project git@bitbucket.org:pH-7/pH7-Internationalization.git
save-project git@gitlab.com:pH-7/pH7-Internationalization.git

# Save a git project to a specific repo (e.g. github, bitbucket, ...)
function save-project() {
    git remote rm origin
    git remote add origin $1
    git push
}
