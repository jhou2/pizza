//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MarysEntities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public Order()
        {
            this.Toppings = new HashSet<Topping>();
        }
    
        public int orderId { get; set; }
        public string firstname { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string size { get; set; }
        public Nullable<int> noOfPizzas { get; set; }
        public string delivery { get; set; }
        public System.DateTime orderDate { get; set; }
    
        public virtual ICollection<Topping> Toppings { get; set; }
    }
}
