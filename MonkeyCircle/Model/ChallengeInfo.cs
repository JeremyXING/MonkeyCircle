using System;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.Challenge")]
    public partial class ChallengeInfo
    {

        private System.Nullable<int> _chanID;

        private System.Nullable<int> _chanType;

        private System.Nullable<int> _salary;

        private System.Nullable<bool> _open;

        private System.Nullable<System.DateTime> _publishTime;

        private System.Nullable<bool> _status;

        public ChallengeInfo()
        {
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_chanID", DbType = "Int")]
        public System.Nullable<int> chanID
        {
            get
            {
                return this._chanID;
            }
            set
            {
                if ((this._chanID != value))
                {
                    this._chanID = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_chanType", DbType = "Int")]
        public System.Nullable<int> chanType
        {
            get
            {
                return this._chanType;
            }
            set
            {
                if ((this._chanType != value))
                {
                    this._chanType = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_salary", DbType = "Int")]
        public System.Nullable<int> salary
        {
            get
            {
                return this._salary;
            }
            set
            {
                if ((this._salary != value))
                {
                    this._salary = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Name = "[open]", Storage = "_open", DbType = "Bit")]
        public System.Nullable<bool> open
        {
            get
            {
                return this._open;
            }
            set
            {
                if ((this._open != value))
                {
                    this._open = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_publishTime", DbType = "DateTime")]
        public System.Nullable<System.DateTime> publishTime
        {
            get
            {
                return this._publishTime;
            }
            set
            {
                if ((this._publishTime != value))
                {
                    this._publishTime = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_status", DbType = "Bit")]
        public System.Nullable<bool> status
        {
            get
            {
                return this._status;
            }
            set
            {
                if ((this._status != value))
                {
                    this._status = value;
                }
            }
        }
    }
}
