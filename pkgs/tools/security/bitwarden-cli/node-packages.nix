# This file has been generated by node2nix 1.6.0. Do not edit!

{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, nodejs ? pkgs."nodejs-10_x"}:

let
  nodeEnv = import ../../../development/node-packages/node-env.nix {
    inherit (pkgs) stdenv python2 utillinux runCommand writeTextFile;
    inherit nodejs;
    libtool = if pkgs.stdenv.isDarwin then pkgs.darwin.cctools else null;
  };
in
import ./node-packages-generated.nix {
  inherit (pkgs) fetchurl fetchgit;
  inherit nodeEnv;
}