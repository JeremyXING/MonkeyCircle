using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.Coder")]
    public partial class CoderInfo : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private string _userId;

        private string _name;

        private System.Nullable<char> _gender;

        private System.Nullable<int> _age;

        private string _phoneNum;

        private System.Nullable<int> _techType;

        private System.Nullable<bool> _applyState;

        private string _workplace;

        private System.Nullable<int> _value;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnuserIdChanging(string value);
        partial void OnuserIdChanged();
        partial void OnnameChanging(string value);
        partial void OnnameChanged();
        partial void OngenderChanging(System.Nullable<char> value);
        partial void OngenderChanged();
        partial void OnageChanging(System.Nullable<int> value);
        partial void OnageChanged();
        partial void OnphoneNumChanging(string value);
        partial void OnphoneNumChanged();
        partial void OntechTypeChanging(System.Nullable<int> value);
        partial void OntechTypeChanged();
        partial void OnapplyStateChanging(System.Nullable<bool> value);
        partial void OnapplyStateChanged();
        partial void OnworkplaceChanging(string value);
        partial void OnworkplaceChanged();
        partial void OnvalueChanging(System.Nullable<int> value);
        partial void OnvalueChanged();
        #endregion

        public CoderInfo()
        {
            OnCreated();
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_userId", DbType = "Char(10) NOT NULL", CanBeNull = false, IsPrimaryKey = true)]
        public string userId
        {
            get
            {
                return this._userId;
            }
            set
            {
                if ((this._userId != value))
                {
                    this.OnuserIdChanging(value);
                    this.SendPropertyChanging();
                    this._userId = value;
                    this.SendPropertyChanged("userId");
                    this.OnuserIdChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_name", DbType = "VarChar(10)")]
        public string name
        {
            get
            {
                return this._name;
            }
            set
            {
                if ((this._name != value))
                {
                    this.OnnameChanging(value);
                    this.SendPropertyChanging();
                    this._name = value;
                    this.SendPropertyChanged("name");
                    this.OnnameChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_gender", DbType = "Char(1)")]
        public System.Nullable<char> gender
        {
            get
            {
                return this._gender;
            }
            set
            {
                if ((this._gender != value))
                {
                    this.OngenderChanging(value);
                    this.SendPropertyChanging();
                    this._gender = value;
                    this.SendPropertyChanged("gender");
                    this.OngenderChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_age", DbType = "Int")]
        public System.Nullable<int> age
        {
            get
            {
                return this._age;
            }
            set
            {
                if ((this._age != value))
                {
                    this.OnageChanging(value);
                    this.SendPropertyChanging();
                    this._age = value;
                    this.SendPropertyChanged("age");
                    this.OnageChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_phoneNum", DbType = "VarChar(15)")]
        public string phoneNum
        {
            get
            {
                return this._phoneNum;
            }
            set
            {
                if ((this._phoneNum != value))
                {
                    this.OnphoneNumChanging(value);
                    this.SendPropertyChanging();
                    this._phoneNum = value;
                    this.SendPropertyChanged("phoneNum");
                    this.OnphoneNumChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_techType", DbType = "Int")]
        public System.Nullable<int> techType
        {
            get
            {
                return this._techType;
            }
            set
            {
                if ((this._techType != value))
                {
                    this.OntechTypeChanging(value);
                    this.SendPropertyChanging();
                    this._techType = value;
                    this.SendPropertyChanged("techType");
                    this.OntechTypeChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_applyState", DbType = "Bit")]
        public System.Nullable<bool> applyState
        {
            get
            {
                return this._applyState;
            }
            set
            {
                if ((this._applyState != value))
                {
                    this.OnapplyStateChanging(value);
                    this.SendPropertyChanging();
                    this._applyState = value;
                    this.SendPropertyChanged("applyState");
                    this.OnapplyStateChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_workplace", DbType = "VarChar(5)")]
        public string workplace
        {
            get
            {
                return this._workplace;
            }
            set
            {
                if ((this._workplace != value))
                {
                    this.OnworkplaceChanging(value);
                    this.SendPropertyChanging();
                    this._workplace = value;
                    this.SendPropertyChanged("workplace");
                    this.OnworkplaceChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_value", DbType = "Int")]
        public System.Nullable<int> value
        {
            get
            {
                return this._value;
            }
            set
            {
                if ((this._value != value))
                {
                    this.OnvalueChanging(value);
                    this.SendPropertyChanging();
                    this._value = value;
                    this.SendPropertyChanged("value");
                    this.OnvalueChanged();
                }
            }
        }

        public event PropertyChangingEventHandler PropertyChanging;

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void SendPropertyChanging()
        {
            if ((this.PropertyChanging != null))
            {
                this.PropertyChanging(this, emptyChangingEventArgs);
            }
        }

        protected virtual void SendPropertyChanged(String propertyName)
        {
            if ((this.PropertyChanged != null))
            {
                this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }

    
}
