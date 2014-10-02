#!/bin/bash
{
  echo "update";
  echo "upgrade";

  brew tap | while read tap; do echo "brew tap $tap"; done
  brew list | while read item; do echo "install $item"; done

  echo "cleanup";
} >> Brewfile
