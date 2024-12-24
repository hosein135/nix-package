{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	packages = with pkgs; [
    		python312
		python312Packages.pip
    		python312Packages.flask
		python312Packages.flask-migrate
		python312Packages.flask-sqlalchemy
		python312Packages.flask-cors
		python312Packages.cryptography
  	];

	shellHook = ''
		python dev/cntl.py
	'';
}
