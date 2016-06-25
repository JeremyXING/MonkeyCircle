using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.Company")]
    public partial class CompanyInfo
    {

        private System.Nullable<int> _userId;

        private string _fullName;

        private string _shortName;

        private string _logo;

        private System.Nullable<int> _scale;

        private string _intro;

        private string _location;

        private string _tags;

        private string _contactInfo;

        private string _telephone;

        private string _industry;

        private string _certification;

        public CompanyInfo()
        {
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_userId", DbType = "Int")]
        public System.Nullable<int> userId
        {
            get
            {
                return this._userId;
            }
            set
            {
                if ((this._userId != value))
                {
                    this._userId = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_fullName", DbType = "VarChar(30)")]
        public string fullName
        {
            get
            {
                return this._fullName;
            }
            set
            {
                if ((this._fullName != value))
                {
                    this._fullName = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_shortName", DbType = "VarChar(10)")]
        public string shortName
        {
            get
            {
                return this._shortName;
            }
            set
            {
                if ((this._shortName != value))
                {
                    this._shortName = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_logo", DbType = "VarChar(100)")]
        public string logo
        {
            get
            {
                return this._logo;
            }
            set
            {
                if ((this._logo != value))
                {
                    this._logo = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_scale", DbType = "Int")]
        public System.Nullable<int> scale
        {
            get
            {
                return this._scale;
            }
            set
            {
                if ((this._scale != value))
                {
                    this._scale = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_intro", DbType = "Char(200)")]
        public string intro
        {
            get
            {
                return this._intro;
            }
            set
            {
                if ((this._intro != value))
                {
                    this._intro = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_location", DbType = "VarChar(50)")]
        public string location
        {
            get
            {
                return this._location;
            }
            set
            {
                if ((this._location != value))
                {
                    this._location = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_tags", DbType = "VarChar(100)")]
        public string tags
        {
            get
            {
                return this._tags;
            }
            set
            {
                if ((this._tags != value))
                {
                    this._tags = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_contactInfo", DbType = "VarChar(50)")]
        public string contactInfo
        {
            get
            {
                return this._contactInfo;
            }
            set
            {
                if ((this._contactInfo != value))
                {
                    this._contactInfo = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_telephone", DbType = "VarChar(20)")]
        public string telephone
        {
            get
            {
                return this._telephone;
            }
            set
            {
                if ((this._telephone != value))
                {
                    this._telephone = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_industry", DbType = "VarChar(10)")]
        public string industry
        {
            get
            {
                return this._industry;
            }
            set
            {
                if ((this._industry != value))
                {
                    this._industry = value;
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_certification", DbType = "VarChar(100)")]
        public string certification
        {
            get
            {
                return this._certification;
            }
            set
            {
                if ((this._certification != value))
                {
                    this._certification = value;
                }
            }
        }
    }
}