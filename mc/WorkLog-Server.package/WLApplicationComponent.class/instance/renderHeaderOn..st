rendering
renderHeaderOn: html
 	html tbsNavbar beDefault with: [
		html tbsNavbarBrand
			callback: [ self showToday ];
			with: WLApplicationComponent applicationHeader.
			
		"html tbsNav beNavbarNavigation; with: [ 
			html tbsNavItem: [ html anchor callback: [ self showToday ]; with: 'Today' ].
			html tbsNavItem: [ html anchor callback: [ self showThisWeek ]; with: 'This Week' ].
			html tbsNavItem: [ html anchor callback: [ self showThisMonth ]; with: 'This Month' ]]"].
