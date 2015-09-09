import AuthenticatedRoute from './base-authenticated';

export default AuthenticatedRoute.extend({
  model: function() {
    return this.get('store').find('article');
  }
});
