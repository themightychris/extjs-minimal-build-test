Ext.define('MyApp.MyClass', {
	singleton: true,
	requires: [
		'Ext.XTemplate'
	],

    sayHello: function() {
        alert('hello');
        // Ext.GlobalEvents;
    }
});