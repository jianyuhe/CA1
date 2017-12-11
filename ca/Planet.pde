class Planet
{
 
  String Name;
  
  float xg, yg, zg;
  float Size;
  
  Planet(String Name, float xg, float yg, float zg, float Size)
  {
    // this refers to the field
   
    this.Name = Name;
  
    this.xg = xg;
    this.yg = yg;
    this.zg = zg;
    this.Size = Size;
    
  }
    Planet(TableRow row)
  {
   Name = row.getString("Name");
  
    xg = row.getFloat("xg");
    yg = row.getFloat("yg");
    zg = row.getFloat("zg");
    Size = row.getFloat("Size");
    
  }
  
}