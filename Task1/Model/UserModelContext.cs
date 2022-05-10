using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Task1.Model
{
    public class UserModelContext : DbContext
    {
        public UserModelContext() : base("DbConnection")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<UserModelContext, Migrations.Configuration>());
        }

        public DbSet<UserModel> UserModel { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

    }
}