#!/bin/bash
{
  echo "update";
  echo "upgrade";

  brew tap | while read tap; do echo "tap $tap"; done
  brew list | while read item; do echo "install $item"; done
  brew cask list | while read item; do echo "cask install $item"; done

  echo "cleanup";
} > Brewfile
