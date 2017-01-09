
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
public class Player_Statistics implements Serializable
{
    
    
    private String GameName, id_dplayer ;
    private Double Minutes , FG2, FG3, FT ;
    private Integer Points, reboundso, reboundsd, reboundst, assists, steals, wrongs, fv, ag, cm, rv, rip ;
    
    
    
    public Player_Statistics ( String GameName,  Double Minutes,Integer Points, Double FG2, Double FG3, Double FT, Integer reboundso, Integer reboundsd, Integer reboundst,
            Integer assists, Integer steals, Integer wrongs, Integer fv, Integer ag, Integer cm, Integer rv, Integer rip, String id_dplayer )
    {
        this.GameName = GameName ;
        this.Minutes = Minutes ;
        this.Points = Points ;
        this.FG2 = FG2 ;
        this.FG3 = FG3 ;
        this.FT = FT ;
        this.reboundso = reboundso ;
        this.reboundsd = reboundsd ;
        this.reboundst = reboundst ;
        this.assists = assists ;
        this.steals = steals ;
        this.wrongs = wrongs ;
        this.fv = fv ;
        this.ag = ag ;
        this.cm = cm ;
        this.rv = rv ;
        this.rip = rip ;
        this.id_dplayer = id_dplayer ;
    }
    
    public String GetGameName ( )
    {
        return this.GameName ;
    }
    
    public Double GetMinutes ( )
    {
        return this.Minutes ;
    }
    
    public Double GetFG2 ( )
    {
        return this.FG2 ;
    }
    
    public Double GetFG3 ( )
    {
        return this.FG3 ;
    }
    
    public Double GetFT ( )
    {
        return this.FT ;
    }
    
    public Integer GetPoints ( )
    {
        return this.Points ;
    }
    
    public Integer Getreboundso ( )
    {
        return this.reboundso ;
    }
    
    public Integer Getreboundsd ( )
    {
        return this.reboundsd ;
    }
    
    public Integer Getreboundst( )
    {
        return this.reboundst ;
    }
    
    public Integer Getassists ( )
    {
        return this.assists ;
    }
    
    public Integer Getsteals ( )
    {
        return this.steals ;
    }
    
    public Integer Getwrongs ( )
    {
        return this.wrongs ;
    }
    
    public Integer Getfv ( )
    {
        return this.fv ;
    }
    
    public Integer Getag ( )
    {
        return this.ag ;
    }
    
    public Integer Getcm ( )
    {
        return this.cm ;
    }
    
    public Integer Getrv ( )
    {
        return this.rv ;
    }
    
    public Integer Getrip ( )
    {
        return this.rip ;
    }
    
    public String Get_id_dplayer ( )
    {
        return this.id_dplayer ;
    }
    
   
}
