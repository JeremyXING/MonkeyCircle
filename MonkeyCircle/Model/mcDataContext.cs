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

        public System.Data.Linq.Table<QuestionInfo> Questions
        {
            get
            {
                return this.GetTable<QuestionInfo>();
            }
        }

        public System.Data.Linq.Table<addQuestionInfo> addQuestions
        {
            get
            {
                return this.GetTable<addQuestionInfo>();
            }
        }

        public System.Data.Linq.Table<CoderInfo> Coder
        {
            get
            {
                return this.GetTable<CoderInfo>();
            }
        }

        public System.Data.Linq.Table<CompanyInfo> Companies
        {
            get
            {
                return this.GetTable<CompanyInfo>();
            }
        }

        public System.Data.Linq.Table<incomeInfo> incomes
        {
            get
            {
                return this.GetTable<incomeInfo>();
            }
        }

        public System.Data.Linq.Table<invitation> invitations
        {
            get
            {
                return this.GetTable<invitation>();
            }
        }

        public System.Data.Linq.Table<Plan> Plans
        {
            get
            {
                return this.GetTable<Plan>();
            }
        }

        public System.Data.Linq.Table<user> users
        {
            get
            {
                return this.GetTable<user>();
            }
        }
    }
}
