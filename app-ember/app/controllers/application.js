import Ember from 'ember';

export default Ember.Controller.extend({
  isAuthenticated: Ember.computed.alias('session.isAuthenticated'),
  currentUser: Ember.computed.alias('session.content.currentUser')
});
