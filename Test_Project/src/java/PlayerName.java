
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
public class PlayerName implements Serializable
{
    
    private String playername, id_dplayer ;
    
    
    public PlayerName ( String playername, String id_dplayer )
    {
        this.playername = playername ;
        this.id_dplayer = id_dplayer ;
    }
    
    public String GetPlayerName ( )
    {
        return this.playername ;
    }
    
    public String Getid_dplayer ( )
    {
        return this.id_dplayer ;
    }
    
}
