
package time.table.generator;

import java.sql.*;
 
public class TimeTableGenerator {
    
    static int limit=0;
    static String[][][] recheck= new String[5][4][7];
    static double total=0;
    static String[][][] Timetable=new String[4][5][7];
    //******** Fitness Function ******* 
    
    public static double fitnessFunc(String C1[])
    {
        double repeat_check=0.00;
        try {
              Class.forName("com.mysql.jdbc.Driver");
              String connectionUrl = "jdbc:mysql://localhost/tt_gen?" +"user=root&password=lahiruj5";
              Connection con = DriverManager.getConnection(connectionUrl);
            
              Statement stmt = null;
              ResultSet rs = null;
              String SQL="";
              
//              String che[]=new String[6];
//              int lec_no[]=new int[6];
//              int j=0;
              
//                 SQL = "SELECT * FROM subjects WHERE 'subject_name'='"+C1[0]+"'";  
//                 stmt =con.createStatement();
//                 rs = stmt.executeQuery(SQL);
                                  
              int count1=0;
              int count2=0;
              int count3=0;
              int cnt=0;
              
              //Check for subject repitiveness
              
               for(int k=0;k<=6;k++)
                {
                    if(!C1[k].equals("-"))
                    {
                     if((k!=0)&&(C1[k].equalsIgnoreCase(C1[k-1])))
                      {
                        if((k!=6)&&(C1[k].equalsIgnoreCase(C1[k+1])))
                        {
                         count3=count3+1;
                         }
                        else
                        {
                         count2=count2+1;
                         }
                        }
                     else
                      {
                        count1=count1+1;
                       }
                      }
                     else if(C1[k].equals("-"))
                     {  
                       cnt=cnt+1;
                      }
                  }
               
               if(cnt==6)
               {
                repeat_check=0.1;
               }
               else
               {
                repeat_check=count3*(-0.2)+count2*(0.08)+count1*(0.02)+cnt*(0.03);
                
               }      
                
               // Codes of this Function should go above this line
              }       
        catch (SQLException e) {
            System.out.println("SQL Exception: "+ e.toString());
        } 
        catch (ClassNotFoundException cE) {
            System.out.println("Class Not Found Exception: "+ cE.toString());
        }
        
         return repeat_check;
    }
    
    //******** Random Number Generator ******* 
    
    public static int random_gen(int high,int low)
    {
        int rand=0;
        
        rand=(int)(Math.random()*(high-low + 1))+low;
       
        return rand;
    }
    
  //******** Cross-over &  Mutation Function ******* 
    
    public static void CrossOverAndMutaion(String dayz[][][])
    {
 
        try {
              Class.forName("com.mysql.jdbc.Driver");
              String connectionUrl = "jdbc:mysql://localhost/tt_gen?" +"user=root&password=lahiruj5";
              Connection con = DriverManager.getConnection(connectionUrl);
            
              Statement stmt = null;
              ResultSet rs = null;
              //String SQL="";
              stmt =con.createStatement();
              //rs = stmt.executeQuery(SQL);     
             //Crossover
              limit=limit+1;
              String[][] test= new String[5][7];
              
              
              int a=random_gen(5,1)-1;
              int b=a;
              int year=4;
              
              while(b==a)
              {
              b=random_gen(5,1)-1;
              }
              int c=0;
              while(c==0)
               {
                c=random_gen(7,1)-1;
                }
              int a2=a;
              while((a2==a)||(a2==b))
              {
               a2=random_gen(5,1)-1;
              }
              
              int b2=a2;
              while((b2==a)||(b2==b)||(b2==a2))
              {
                 b2=random_gen(5,1)-1;
              }
              int c2=0;
              while(c2==0)
               {
                c2=random_gen(7,1)-1;
                }
              int a3=a2;
              while((a3==a)||(a3==b)||(a3==a2)||(a3==b2))
               {
                a3=random_gen(5,1)-1;
                }
              System.out.println("A "+ a +" B "+ b +" C "+ c);
              
               double[][] val= new double[4][5];
               int p=0;
               
                         
              for(year=4;year>=1;year--)
                  {
                     System.arraycopy(dayz[a][year-1],0,test[0],0, c);
                     System.arraycopy(dayz[b][year-1],c,test[0],c, test[0].length-c);
                     
                     System.arraycopy(test[0],0,recheck[0][year-1],0, test[0].length);
                     
                     System.arraycopy(dayz[b][year-1],0,test[1],0, c);
                     System.arraycopy(dayz[a][year-1],c,test[1],c, test[1].length-c);
                     
                     System.arraycopy(test[1],0,recheck[1][year-1],0, test[1].length);
                     
                     System.arraycopy(dayz[a2][year-1],0,test[2],0, c2);
                     System.arraycopy(dayz[b2][year-1],c2,test[2],c2, test[2].length-c2);
                     
                     System.arraycopy(test[2],0,recheck[2][year-1],0, test[2].length);
                     
                     System.arraycopy(dayz[b2][year-1],0,test[3],0, c2);
                     System.arraycopy(dayz[a2][year-1],c2,test[3],c2, test[3].length-c2);
                     
                     System.arraycopy(test[3],0,recheck[3][year-1],0, test[3].length);
                     
                     System.arraycopy(dayz[a3][year-1],0,test[4],0, test[4].length);
                     
                     System.arraycopy(test[4],0,recheck[4][year-1],0, test[4].length);
                     
                     
                     for(p=0;p<=4;p++)
                      {
                       val[year-1][p]=fitnessFunc(test[p]);
                      total=total+val[year-1][p];
                      }
                  }  
              
              if((total>500)||(limit>30))
              {
                  
                   //SQL insertion query command
                  
                  
                  for(int selected_year=0;selected_year<4;selected_year++)
                   {
                        for(int day=0;day<4;day++)
                        {
                          Timetable[selected_year][day][0]=recheck[day][selected_year][0];
                          Timetable[selected_year][day][1]=recheck[day][selected_year][1];
                          Timetable[selected_year][day][2]=recheck[day][selected_year][2];
                          Timetable[selected_year][day][3]=recheck[day][selected_year][3];
                          Timetable[selected_year][day][4]=recheck[day][selected_year][4];
                          Timetable[selected_year][day][5]=recheck[day][selected_year][5];
                          Timetable[selected_year][day][6]=recheck[day][selected_year][6];
                          }
                   }
                  
                  for(int selected_year=0;selected_year<4;selected_year++)
                     {
                         //This code clears table before entering data
                        String SQL3="TRUNCATE TABLE `gen_time_table_year_"+(selected_year+1);
                         int rowsEffected2 = stmt.executeUpdate(SQL3);
                    
                      for(int day=0;day<5;day++)
                       {
                      
                
                          String SQL1 ="INSERT INTO `tt_gen`.`gen_time_table_year_"+(selected_year+1)+"` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) "
                          + "VALUES ('"
                          +Timetable[selected_year][day][0]+"', '"
                          +Timetable[selected_year][day][1]+"', '"
                          +Timetable[selected_year][day][2]+"', '"
                          +Timetable[selected_year][day][3]+"', '"
                          +Timetable[selected_year][day][4]+"', '"
                          +Timetable[selected_year][day][5]+"', '"
                          +Timetable[selected_year][day][6]+"')";
        
                          int rowsEffected = stmt.executeUpdate(SQL1);
                          System.out.println(rowsEffected + " rows effected");  
         
                        }
                  }
            
                 System.out.println("Repeated "+limit+" time(s)!");
                 System.out.println("Time Table Generated!");
                 
                 } 
        
              else
              {
               CrossOverAndMutaion(recheck);
              }
        
              // Codes of this Function should go above this line
        }
         catch (SQLException e) {
            System.out.println("SQL Exception: "+ e.toString());
        } 
        catch (ClassNotFoundException cE) {
            System.out.println("Class Not Found Exception: "+ cE.toString());
        }
                 
               
        
    }
    
  //******-------Main Method of the T T Genrator--------*******
    
    public static void main(String[] args) {
        
        //Establishing a Connection
        
        try {
              Class.forName("com.mysql.jdbc.Driver");
              String connectionUrl = "jdbc:mysql://localhost/tt_gen?" +"user=root&password=lahiruj5";
              Connection con = DriverManager.getConnection(connectionUrl);
            
              Statement stmt = null;
              ResultSet rs = null;
              String SQL="";

              //SQL query command
            
              int  sem_check=1;  //should change afterwards 
              if (sem_check==1)
                   SQL = "SELECT * FROM subjects WHERE 	(semester_id%2)!=0";
              if(sem_check==2)
                   SQL = "SELECT * FROM subjects WHERE 	!(semester_id%2)!=0";
            
              stmt =con.createStatement();
              rs = stmt.executeQuery(SQL);
            
              int credit_count=0;
              int count=0;
              String temp;
            
              while (rs.next()) {
               temp=(rs.getString("number_of_credits"));
               credit_count+=Integer.parseInt(temp);
               count=count+1;
               }
            
               String[] sub_array=new String[credit_count];
               String[] code_array=new String[count];
            
               rs = stmt.executeQuery(SQL);
               
               int i=0;
               int no=0;
               int j=0;
               int k=0;
               
               while (rs.next()) {
                temp=(rs.getString("number_of_credits"));
                k=Integer.parseInt(temp);
                code_array[no]=rs.getString("subject_code");
                no++;
                for(j=0;j<k;j++){
                sub_array[i]=rs.getString("subject_name");
                i+=1;
                }
            } 
               
             i=0;
             j=0;
             

             double wtf=0;
             int hell=0;
             String test_char="";

             int b_year=0;
             int b_day=0;
             int b_slot=0;
             
            for(int year=0;year<4;year++)
             {
             for(int day=0;day<5;day++)
               {
              for(int slot=0;slot<7;slot++)
                {
                    
                   if(i<credit_count)
                      {
                          
                        if((i!=0)&&(!sub_array[i].equals(sub_array[i-1]))){
                            j++;
                           }   
                         test_char=code_array[j];
                        
                         wtf=Double.parseDouble(test_char);
                         wtf=wtf*0.0001;
                         hell=(int)wtf; 
                    
                         if((hell!=year+1)){
                             
                           b_year=year;
                           int temp_slot=slot;
                 
                           for(b_day=day;b_day<5;b_day++){
                               
                              for(b_slot=temp_slot;b_slot<7;b_slot++){
                                  
                               Timetable[b_year][b_day][b_slot]="-";
                               System.out.println("Year "+b_year +" Day "+b_day + " Slot "+ b_slot+" is "+Timetable[b_year][b_day][b_slot]);
                               if(b_slot==6)
                                   temp_slot=0;
                             }
                            }
                           
                           
                           year++;
                           day=0;
                           slot=0;
                           }

                        Timetable[year][day][slot]=sub_array[i];
                        }
                     else
                       {
                        Timetable[year][day][slot]="-"; 
                        }
                      
                      
                      System.out.println("Year "+year +" Day "+day + " Slot "+ slot+" is "+Timetable[year][day][slot]);
                      i++;
                 }
                }
               }
            
            //SQL insertion query command
            for(int selected_year=0;selected_year<4;selected_year++)
            {
                //This code clears table before entering data
               String SQL3="TRUNCATE TABLE `time_table_year_"+(selected_year+1);
               int rowsEffected2 = stmt.executeUpdate(SQL3);
               System.out.println(rowsEffected2 + " rows effected");
               
             for(int day=0;day<5;day++)
             {
            
            String SQL1 ="INSERT INTO `tt_gen`.`time_table_year_"+(selected_year+1)+"` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) "
                          + "VALUES ('"
                          +Timetable[selected_year][day][0]+"', '"
                          +Timetable[selected_year][day][1]+"', '"
                          +Timetable[selected_year][day][2]+"', '"
                          +Timetable[selected_year][day][3]+"', '"
                          +Timetable[selected_year][day][4]+"', '"
                          +Timetable[selected_year][day][5]+"', '"
                          +Timetable[selected_year][day][6]+"')";
        
            int rowsEffected = stmt.executeUpdate(SQL1);
            System.out.println(rowsEffected + " rows effected");  
         
               }
            } 
            
        String[][] slot_1= new String[4][5];
        String[][] slot_2= new String[4][5];
        String[][] slot_3= new String[4][5];
        String[][] slot_4= new String[4][5];
        String[][] slot_5= new String[4][5];
        String[][] slot_6= new String[4][5];
        String[][] slot_7= new String[4][5];
        
        String[][][] dayz= new String[5][4][7];
         
        int r=0;
        int year=4;
        while(year>=1)
               {
                SQL = "SELECT * FROM `time_table_year_"+ year +"";
                stmt =con.createStatement();
                rs= stmt.executeQuery(SQL);
              
                //Applying DB values to Array of slots
              
                while (rs.next()) {
                 slot_1[year-1][r]=(rs.getString("8-9"));
                 slot_2[year-1][r]=(rs.getString("9-10"));
                 slot_3[year-1][r]=(rs.getString("10-11"));
                 slot_4[year-1][r]=(rs.getString("11-12"));
                 slot_5[year-1][r]=(rs.getString("1-2"));
                 slot_6[year-1][r]=(rs.getString("2-3"));
                 slot_7[year-1][r]=(rs.getString("3-4"));
                 
                 r++;
                    if(r==5)
                      {
                      r=0;
                      break;
                     }
                    
                   }
                year--;
                 }
              for(int day=0;day<=4;day++)
              {
                  for(year=4;year>=1;year--)
                  {
                    dayz[day][year-1][0]=slot_1[year-1][day];
                    dayz[day][year-1][1]=slot_2[year-1][day];
                    dayz[day][year-1][2]=slot_3[year-1][day];
                    dayz[day][year-1][3]=slot_4[year-1][day];
                    dayz[day][year-1][4]=slot_5[year-1][day];
                    dayz[day][year-1][5]=slot_6[year-1][day];
                    dayz[day][year-1][6]=slot_7[year-1][day];
                  } 
              }
             //Finished sorting slots of all years
              
             //Now Crossover and Mutation can start
        
        //Calling for Cross-over and Mutation
               CrossOverAndMutaion(dayz);
            
        // Codes of this Function should go above this line            
           } 
        catch (SQLException e) {
            System.out.println("SQL Exception: "+ e.toString());
        } 
        catch (ClassNotFoundException cE) {
            System.out.println("Class Not Found Exception: "+ cE.toString());
        }
    }
}
