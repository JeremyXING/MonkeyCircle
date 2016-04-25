using System;
using System.ComponentModel;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.[user]")]
    public partial class UserInfo : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private int _userId;

        private string _userEmail;

        private string _password;

        private System.Nullable<int> _role;

        private System.Nullable<System.DateTime> _registerTime;

        private System.Nullable<System.DateTime> _loginTime;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnuserIdChanging(int value);
        partial void OnuserIdChanged();
        partial void OnuserEmailChanging(string value);
        partial void OnuserEmailChanged();
        partial void OnpasswordChanging(string value);
        partial void OnpasswordChanged();
        partial void OnroleChanging(System.Nullable<int> value);
        partial void OnroleChanged();
        partial void OnregisterTimeChanging(System.Nullable<System.DateTime> value);
        partial void OnregisterTimeChanged();
        partial void OnloginTimeChanging(System.Nullable<System.DateTime> value);
        partial void OnloginTimeChanged();
        #endregion

        public UserInfo()
        {
            OnCreated();
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_userId", DbType = "Int NOT NULL", IsPrimaryKey = true)]
        public int userId
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

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_userEmail", DbType = "VarChar(50)")]
        public string userEmail
        {
            get
            {
                return this._userEmail;
            }
            set
            {
                if ((this._userEmail != value))
                {
                    this.OnuserEmailChanging(value);
                    this.SendPropertyChanging();
                    this._userEmail = value;
                    this.SendPropertyChanged("userEmail");
                    this.OnuserEmailChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_password", DbType = "VarChar(18)")]
        public string password
        {
            get
            {
                return this._password;
            }
            set
            {
                if ((this._password != value))
                {
                    this.OnpasswordChanging(value);
                    this.SendPropertyChanging();
                    this._password = value;
                    this.SendPropertyChanged("password");
                    this.OnpasswordChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_role", DbType = "Int")]
        public System.Nullable<int> role
        {
            get
            {
                return this._role;
            }
            set
            {
                if ((this._role != value))
                {
                    this.OnroleChanging(value);
                    this.SendPropertyChanging();
                    this._role = value;
                    this.SendPropertyChanged("role");
                    this.OnroleChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_registerTime", DbType = "DateTime")]
        public System.Nullable<System.DateTime> registerTime
        {
            get
            {
                return this._registerTime;
            }
            set
            {
                if ((this._registerTime != value))
                {
                    this.OnregisterTimeChanging(value);
                    this.SendPropertyChanging();
                    this._registerTime = value;
                    this.SendPropertyChanged("registerTime");
                    this.OnregisterTimeChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_loginTime", DbType = "DateTime")]
        public System.Nullable<System.DateTime> loginTime
        {
            get
            {
                return this._loginTime;
            }
            set
            {
                if ((this._loginTime != value))
                {
                    this.OnloginTimeChanging(value);
                    this.SendPropertyChanging();
                    this._loginTime = value;
                    this.SendPropertyChanged("loginTime");
                    this.OnloginTimeChanged();
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
