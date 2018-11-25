package hiber;

import static java.lang.System.out;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class registerDAO {
     public boolean save(register r){
         boolean saved = false;
         try{
         register r1 = new register();
         r1.setUsername(r.getUsername());
         r1.setPassword(r.getPassword());
         r1.setEmail(r.getEmail());
        Configuration cf = new Configuration();
        cf.configure("cfghiber/hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s=sf.openSession();
        Transaction tx = s.beginTransaction();
            s.save(r);
            tx.commit();
            s.close();
            sf.close();
            return true;
         }catch(Exception e){
             return false;
         }
    }
}
