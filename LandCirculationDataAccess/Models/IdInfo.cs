using System;

namespace LandCirculationDataAccess
{
   public class Id32
   {
      public Int32 Id { get; set; }
   }

   public class Id64
   {
      public Int64 Id { get; set; }
   }

   public class Id32Ex
   {
      public Int32 Id { get; set; }
      public Int32 IsNew { get; set; }
   }

   public class Id64Ex
   {
      public Int64 Id { get; set; }

      public Int32 IsNew { get; set; }
   }
}
