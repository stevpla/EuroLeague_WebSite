
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
    private String TeamName, IdName ;
    
    public ObjectA ( String a, String b )
    {
        TeamName = a ;
        IdName = b ;
    }
    
    public String GetTeamName ( )
    {
        return this.TeamName ;
    }
    
    
    public String GetIdName ( )
    {
        return this.IdName ;
    }
    
}
