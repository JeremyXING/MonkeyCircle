using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [global::System.Data.Linq.Mapping.TableAttribute(Name = "dbo.income")]
    public partial class incomeInfo : INotifyPropertyChanging, INotifyPropertyChanged
    {

        private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);

        private int _incomeId;

        private int _planId;

        private System.Nullable<int> _companyId;

        private System.Nullable<int> _income1;

        private System.Nullable<int> _payType;

        private System.Nullable<System.DateTime> _createTime;

        #region Extensibility Method Definitions
        partial void OnLoaded();
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        partial void OnCreated();
        partial void OnincomeIdChanging(int value);
        partial void OnincomeIdChanged();
        partial void OnplanIdChanging(int value);
        partial void OnplanIdChanged();
        partial void OncompanyIdChanging(System.Nullable<int> value);
        partial void OncompanyIdChanged();
        partial void Onincome1Changing(System.Nullable<int> value);
        partial void Onincome1Changed();
        partial void OnpayTypeChanging(System.Nullable<int> value);
        partial void OnpayTypeChanged();
        partial void OncreateTimeChanging(System.Nullable<System.DateTime> value);
        partial void OncreateTimeChanged();
        #endregion

        public incomeInfo()
        {
            OnCreated();
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_incomeId", DbType = "Int NOT NULL", IsPrimaryKey = true)]
        public int incomeId
        {
            get
            {
                return this._incomeId;
            }
            set
            {
                if ((this._incomeId != value))
                {
                    this.OnincomeIdChanging(value);
                    this.SendPropertyChanging();
                    this._incomeId = value;
                    this.SendPropertyChanged("incomeId");
                    this.OnincomeIdChanged();
                }
            }
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

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_companyId", DbType = "Int")]
        public System.Nullable<int> companyId
        {
            get
            {
                return this._companyId;
            }
            set
            {
                if ((this._companyId != value))
                {
                    this.OncompanyIdChanging(value);
                    this.SendPropertyChanging();
                    this._companyId = value;
                    this.SendPropertyChanged("companyId");
                    this.OncompanyIdChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Name = "income", Storage = "_income1", DbType = "Int")]
        public System.Nullable<int> income1
        {
            get
            {
                return this._income1;
            }
            set
            {
                if ((this._income1 != value))
                {
                    this.Onincome1Changing(value);
                    this.SendPropertyChanging();
                    this._income1 = value;
                    this.SendPropertyChanged("income1");
                    this.Onincome1Changed();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_payType", DbType = "Int")]
        public System.Nullable<int> payType
        {
            get
            {
                return this._payType;
            }
            set
            {
                if ((this._payType != value))
                {
                    this.OnpayTypeChanging(value);
                    this.SendPropertyChanging();
                    this._payType = value;
                    this.SendPropertyChanged("payType");
                    this.OnpayTypeChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage = "_createTime", DbType = "DateTime")]
        public System.Nullable<System.DateTime> createTime
        {
            get
            {
                return this._createTime;
            }
            set
            {
                if ((this._createTime != value))
                {
                    this.OncreateTimeChanging(value);
                    this.SendPropertyChanging();
                    this._createTime = value;
                    this.SendPropertyChanged("createTime");
                    this.OncreateTimeChanged();
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
