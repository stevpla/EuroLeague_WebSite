
import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author LU$er
 */

public class ObjectA implements Serializable 
{
    
    private String Name ;
    
    
    public ObjectA ( String Name )
    {
        this.Name = Name ;
    }
    
    
    public String Get_Name ( )
    {
        return this.Name ;
    }
    
    
}
