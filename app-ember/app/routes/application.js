import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    error: function(error, transition) {
      if (error && error.status === 401) {
        var loginController = this.controllerFor('login');

        loginController.set('previousTransition', transition);
        this.transitionTo('login');
      }
    }
  }
});
