using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.publishChallenge")]
    public partial class publishChallengeInfo : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private int _chanID;

        private int _userId;

        private System.Nullable<System.DateTime> _publishTime;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnchanIDChanging(int value);
        partial void OnchanIDChanged();
        partial void OnuserIdChanging(int value);
        partial void OnuserIdChanged();
        partial void OnpublishTimeChanging(System.Nullable<System.DateTime> value);
        partial void OnpublishTimeChanged();
        #endregion

        public publishChallengeInfo()
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
                    this.OnpublishTimeChanging(value);
                    this.SendPropertyChanging();
                    this._publishTime = value;
                    this.SendPropertyChanged("publishTime");
                    this.OnpublishTimeChanged();
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
