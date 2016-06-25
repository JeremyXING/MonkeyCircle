using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.invitation")]
    public partial class invitation
    {

        private System.Nullable<int> _invitationId;

        private string _email;

        private System.Nullable<int> _chanId;

        public invitation()
        {
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_invitationId", DbType = "Int")]
        public System.Nullable<int> invitationId
        {
            get
            {
                return this._invitationId;
            }
            set
            {
                if ((this._invitationId != value))
                {
                    this._invitationId = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_email", DbType = "VarChar(50)")]
        public string email
        {
            get
            {
                return this._email;
            }
            set
            {
                if ((this._email != value))
                {
                    this._email = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_chanId", DbType = "Int")]
        public System.Nullable<int> chanId
        {
            get
            {
                return this._chanId;
            }
            set
            {
                if ((this._chanId != value))
                {
                    this._chanId = value;
                }
            }
        }
    }
}
