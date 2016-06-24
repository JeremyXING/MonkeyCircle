using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.Question")]
    public partial class QuestionInfo
    {

        private int _qId;

        private string _qTitle;

        private string _qContent;

        private System.Nullable<int> _qType;

        private System.Nullable<int> _qLevel;

        private System.Nullable<int> _qTime;

        public QuestionInfo()
        {
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_qId", DbType = "Int NOT NULL")]
        public int qId
        {
            get
            {
                return this._qId;
            }
            set
            {
                if ((this._qId != value))
                {
                    this._qId = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_qTitle", DbType = "VarChar(50)")]
        public string qTitle
        {
            get
            {
                return this._qTitle;
            }
            set
            {
                if ((this._qTitle != value))
                {
                    this._qTitle = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_qContent", DbType = "VarChar(50)")]
        public string qContent
        {
            get
            {
                return this._qContent;
            }
            set
            {
                if ((this._qContent != value))
                {
                    this._qContent = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_qType", DbType = "Int")]
        public System.Nullable<int> qType
        {
            get
            {
                return this._qType;
            }
            set
            {
                if ((this._qType != value))
                {
                    this._qType = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_qLevel", DbType = "Int")]
        public System.Nullable<int> qLevel
        {
            get
            {
                return this._qLevel;
            }
            set
            {
                if ((this._qLevel != value))
                {
                    this._qLevel = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_qTime", DbType = "Int")]
        public System.Nullable<int> qTime
        {
            get
            {
                return this._qTime;
            }
            set
            {
                if ((this._qTime != value))
                {
                    this._qTime = value;
                }
            }
        }
    }
}

