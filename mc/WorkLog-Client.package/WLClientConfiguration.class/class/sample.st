instance creation
sample
	"
	self configFileName asFileReference 
		writeStreamDo: [ :stream | STON put: self sample onStreamPretty: stream ]
	"
	^ self new 
		url: 'http://log.smallworks.eu';
		username: 'johndoe';
		password: '134885030126667754307791984366958960935';
		yourself