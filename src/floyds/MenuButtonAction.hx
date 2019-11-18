package floyds;

enum MenuButtonAction {
	LoadGui( id: String );
	LoadRoom( id: String );
	SetLanguage( language: String );
	OpenUrl( url: String );
	Back;
}
