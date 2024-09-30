{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	  packages = [
    		pkgs.python312
    		pkgs.pdm
  	];

	shellHook = ''
		echo "hello"
	'';
}
