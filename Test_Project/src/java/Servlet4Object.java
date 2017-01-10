
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
public class Servlet4Object implements Serializable 
{
    
    
    String hname, fname ;
    int hp, fp ;
    
    
    public Servlet4Object ( String hname, String fname, int hp, int fp )
    {
        this.hname = hname ;
        this.fname = fname ;
        this.hp = hp ;
        this.fp = fp ;
    }
    
    public String GetHname ( )
    {
        return this.hname ;
    }
    
    public String GetFname ( )
    {
        return this.fname ;
    }
    
    public int GetHp ( )
    {
        return this.hp ;
    }
    
    public int GetFp ( )
    {
        return this.fp ;
    }
    
}
