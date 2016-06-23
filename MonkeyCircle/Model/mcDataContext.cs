using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Linq.Mapping;

namespace Model
{
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Data;
    using System.Collections.Generic;
    using System.Reflection;
    using System.Linq;
    using System.Linq.Expressions;
    using System.ComponentModel;
    using System;


    [global::System.Data.Linq.Mapping.DatabaseAttribute(Name = "mc")]
    public partial class MCDataContext : System.Data.Linq.DataContext
    {

        private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();

        #region Extensibility Method Definitions
        partial void OnCreated();
        partial void InsertDoChallenge(DoChallenge instance);
        partial void UpdateDoChallenge(DoChallenge instance);
        partial void DeleteDoChallenge(DoChallenge instance);
        #endregion

        public MCDataContext() :
                base(global::Model.Properties.Settings.Default.mcConnectionString, mappingSource)
        {
            OnCreated();
        }

        public MCDataContext(string connection) :
                base(connection, mappingSource)
        {
            OnCreated();
        }

        public MCDataContext(System.Data.IDbConnection connection) :
                base(connection, mappingSource)
        {
            OnCreated();
        }

        public MCDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) :
                base(connection, mappingSource)
        {
            OnCreated();
        }

        public MCDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) :
                base(connection, mappingSource)
        {
            OnCreated();
        }

        public System.Data.Linq.Table<DoChallenge> DoChallenges
        {
            get
            {
                return this.GetTable<DoChallenge>();
            }
        }
    }
}
