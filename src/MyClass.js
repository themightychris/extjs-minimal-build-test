Ext.define('MyApp.MyClass', {
    singleton: true,
    requires: [
        'Ext.Ajax'
    ],

    sayHello: function() {
        alert('hello');
        // Ext.GlobalEvents;
    }
});