package CheckLogin;


import javax.jdo.PersistenceManager;
import javax.jdo.Transaction;





import com.google.appengine.api.datastore.Entity;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;






import app.PMF;



public class UserServiceImpl {
	
	

	public void newUser(String name, String email, String password){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Transaction tx = pm.currentTransaction();
		
			User newUser = new User(name, email, password);
			
			try {
				tx.begin();
				pm.makePersistent(newUser);
				tx.commit();
				pm.close();
			}finally {
				if (tx.isActive()) {
					System.err.println("Error storing the new user " + email);
					tx.rollback();
				}
				pm.close();
			}
	}
	
	public boolean existUser(String email){
		
		Filter f1 = new FilterPredicate("email", FilterOperator.EQUAL, email);
		Query q = new Query("User").setFilter(f1);
		DatastoreService datastoreService = DatastoreServiceFactory.getDatastoreService();
		int count = datastoreService.prepare(q).countEntities(FetchOptions.Builder.withDefaults());

		if(count > 0){
			return true;
		}else return false;
	}
	
	public boolean findUser(String email, String password){
		Filter f1 = new FilterPredicate("email", FilterOperator.EQUAL, email);
		Filter f2 = new FilterPredicate("password", FilterOperator.EQUAL, password);
		Filter filter =  CompositeFilterOperator.and(f1, f2);
		Query q = new Query("User").setFilter(filter);
		DatastoreService datastoreService = DatastoreServiceFactory.getDatastoreService();
		int count = datastoreService.prepare(q).countEntities(FetchOptions.Builder.withDefaults());
		
		if(count > 0)
			return true;
		else return false;
		
	}
}
