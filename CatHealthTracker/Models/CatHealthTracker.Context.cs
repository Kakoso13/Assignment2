﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CatHealthTracker.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DefaultConnection : DbContext
    {
        public DefaultConnection()
            : base("name=DefaultConnection")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Breed> Breeds { get; set; }
        public virtual DbSet<Daylist> Daylists { get; set; }
        public virtual DbSet<Exerciselog> Exerciselogs { get; set; }
        public virtual DbSet<Foodlist> Foodlists { get; set; }
        public virtual DbSet<Foodlog> Foodlogs { get; set; }
        public virtual DbSet<Goallog> Goallogs { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
