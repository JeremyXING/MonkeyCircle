using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.[Plan]")]
    public partial class Plan : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private int _planId;

        private System.Nullable<int> _planMoney;

        private System.Nullable<int> _invitationNum;

        private System.Nullable<int> _challgeNum;

        private System.Nullable<int> _payTime;

        private System.Nullable<int> _planType;

        private System.Nullable<System.DateTime> _addTime;

        private System.Nullable<System.DateTime> _mofigyTime;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnplanIdChanging(int value);
        partial void OnplanIdChanged();
        partial void OnplanMoneyChanging(System.Nullable<int> value);
        partial void OnplanMoneyChanged();
        partial void OninvitationNumChanging(System.Nullable<int> value);
        partial void OninvitationNumChanged();
        partial void OnchallgeNumChanging(System.Nullable<int> value);
        partial void OnchallgeNumChanged();
        partial void OnpayTimeChanging(System.Nullable<int> value);
        partial void OnpayTimeChanged();
        partial void OnplanTypeChanging(System.Nullable<int> value);
        partial void OnplanTypeChanged();
        partial void OnaddTimeChanging(System.Nullable<System.DateTime> value);
        partial void OnaddTimeChanged();
        partial void OnmofigyTimeChanging(System.Nullable<System.DateTime> value);
        partial void OnmofigyTimeChanged();
        #endregion

        public Plan()
        {
            OnCreated();
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_planId", DbType = "Int NOT NULL", IsPrimaryKey = true)]
        public int planId
        {
            get
            {
                return this._planId;
            }
            set
            {
                if ((this._planId != value))
                {
                    this.OnplanIdChanging(value);
                    this.SendPropertyChanging();
                    this._planId = value;
                    this.SendPropertyChanged("planId");
                    this.OnplanIdChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_planMoney", DbType = "Int")]
        public System.Nullable<int> planMoney
        {
            get
            {
                return this._planMoney;
            }
            set
            {
                if ((this._planMoney != value))
                {
                    this.OnplanMoneyChanging(value);
                    this.SendPropertyChanging();
                    this._planMoney = value;
                    this.SendPropertyChanged("planMoney");
                    this.OnplanMoneyChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_invitationNum", DbType = "Int")]
        public System.Nullable<int> invitationNum
        {
            get
            {
                return this._invitationNum;
            }
            set
            {
                if ((this._invitationNum != value))
                {
                    this.OninvitationNumChanging(value);
                    this.SendPropertyChanging();
                    this._invitationNum = value;
                    this.SendPropertyChanged("invitationNum");
                    this.OninvitationNumChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_challgeNum", DbType = "Int")]
        public System.Nullable<int> challgeNum
        {
            get
            {
                return this._challgeNum;
            }
            set
            {
                if ((this._challgeNum != value))
                {
                    this.OnchallgeNumChanging(value);
                    this.SendPropertyChanging();
                    this._challgeNum = value;
                    this.SendPropertyChanged("challgeNum");
                    this.OnchallgeNumChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_payTime", DbType = "Int")]
        public System.Nullable<int> payTime
        {
            get
            {
                return this._payTime;
            }
            set
            {
                if ((this._payTime != value))
                {
                    this.OnpayTimeChanging(value);
                    this.SendPropertyChanging();
                    this._payTime = value;
                    this.SendPropertyChanged("payTime");
                    this.OnpayTimeChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_planType", DbType = "Int")]
        public System.Nullable<int> planType
        {
            get
            {
                return this._planType;
            }
            set
            {
                if ((this._planType != value))
                {
                    this.OnplanTypeChanging(value);
                    this.SendPropertyChanging();
                    this._planType = value;
                    this.SendPropertyChanged("planType");
                    this.OnplanTypeChanged();
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

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_mofigyTime", DbType = "DateTime")]
        public System.Nullable<System.DateTime> mofigyTime
        {
            get
            {
                return this._mofigyTime;
            }
            set
            {
                if ((this._mofigyTime != value))
                {
                    this.OnmofigyTimeChanging(value);
                    this.SendPropertyChanging();
                    this._mofigyTime = value;
                    this.SendPropertyChanged("mofigyTime");
                    this.OnmofigyTimeChanged();
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
