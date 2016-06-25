using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.addQuestion")]
    public partial class addQuestionInfo : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private int _chanID;

        private int _qId;

        private System.Nullable<System.DateTime> _addTime;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnchanIDChanging(int value);
        partial void OnchanIDChanged();
        partial void OnqIdChanging(int value);
        partial void OnqIdChanged();
        partial void OnaddTimeChanging(System.Nullable<System.DateTime> value);
        partial void OnaddTimeChanged();
        #endregion

        public addQuestionInfo()
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

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_qId", DbType = "Int NOT NULL", IsPrimaryKey = true)]
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
                    this.OnqIdChanging(value);
                    this.SendPropertyChanging();
                    this._qId = value;
                    this.SendPropertyChanged("qId");
                    this.OnqIdChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_addTime", DbType = "DateTime")]
        public System.Nullable<System.DateTime> addTime
        {
            get
            {
                return this._addTime;
            }
            set
            {
                if ((this._addTime != value))
                {
                    this.OnaddTimeChanging(value);
                    this.SendPropertyChanging();
                    this._addTime = value;
                    this.SendPropertyChanged("addTime");
                    this.OnaddTimeChanged();
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
