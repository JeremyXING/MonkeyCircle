using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.DoChallenge")]
    public partial class DoChallengeInfo : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private int _chanID;

        private int _userId;

        private System.Nullable<bool> _acceptStatus;

        private System.Nullable<bool> _finishStatus;

        private System.Nullable<bool> _result;

        private System.Nullable<int> _score;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnchanIDChanging(int value);
        partial void OnchanIDChanged();
        partial void OnuserIdChanging(int value);
        partial void OnuserIdChanged();
        partial void OnacceptStatusChanging(System.Nullable<bool> value);
        partial void OnacceptStatusChanged();
        partial void OnfinishStatusChanging(System.Nullable<bool> value);
        partial void OnfinishStatusChanged();
        partial void OnresultChanging(System.Nullable<bool> value);
        partial void OnresultChanged();
        partial void OnscoreChanging(System.Nullable<int> value);
        partial void OnscoreChanged();
        #endregion

        public DoChallengeInfo()
        {
            OnCreated();
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_chanID", DbType = "Int NOT NULL", IsPrimaryKey = true)]
        public int chanID
        {
            get
            {
                return this._chanID;
            }
            set
            {
                if ((this._chanID != value))
                {
                    this.OnchanIDChanging(value);
                    this.SendPropertyChanging();
                    this._chanID = value;
                    this.SendPropertyChanged("chanID");
                    this.OnchanIDChanged();
                }
            }
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

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_acceptStatus", DbType = "Bit")]
        public System.Nullable<bool> acceptStatus
        {
            get
            {
                return this._acceptStatus;
            }
            set
            {
                if ((this._acceptStatus != value))
                {
                    this.OnacceptStatusChanging(value);
                    this.SendPropertyChanging();
                    this._acceptStatus = value;
                    this.SendPropertyChanged("acceptStatus");
                    this.OnacceptStatusChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_finishStatus", DbType = "Bit")]
        public System.Nullable<bool> finishStatus
        {
            get
            {
                return this._finishStatus;
            }
            set
            {
                if ((this._finishStatus != value))
                {
                    this.OnfinishStatusChanging(value);
                    this.SendPropertyChanging();
                    this._finishStatus = value;
                    this.SendPropertyChanged("finishStatus");
                    this.OnfinishStatusChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_result", DbType = "Bit")]
        public System.Nullable<bool> result
        {
            get
            {
                return this._result;
            }
            set
            {
                if ((this._result != value))
                {
                    this.OnresultChanging(value);
                    this.SendPropertyChanging();
                    this._result = value;
                    this.SendPropertyChanged("result");
                    this.OnresultChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_score", DbType = "Int")]
        public System.Nullable<int> score
        {
            get
            {
                return this._score;
            }
            set
            {
                if ((this._score != value))
                {
                    this.OnscoreChanging(value);
                    this.SendPropertyChanging();
                    this._score = value;
                    this.SendPropertyChanged("score");
                    this.OnscoreChanged();
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
