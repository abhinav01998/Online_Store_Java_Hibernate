package hiber;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class loginDAO {
    public boolean search(login l){
        
        login l1 = null;
        Configuration cf = new Configuration();
        cf.configure("cfghiber/hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s=sf.openSession();
        l1=(login)s.get(login.class, l.getUsername());
        
        s.close();
        sf.close();
        if(l1 == null){
            return false;
        }else{
            if(l1.equals(l)){
                return true;
            }
            else{
                return false;
            }
        }
    }
}
