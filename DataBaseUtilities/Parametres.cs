using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DataBaseUtilities
{
    public class Parametres
    {
        public static Parametres _instance;

        public static Parametres Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new Parametres();
                return _instance;
            }
        }
        public IDbDataParameter AddParametres(IDbCommand cmd, string parameterName, int size, DbType type, object value)
        {
            IDbDataParameter param = cmd.CreateParameter();

            param.ParameterName = parameterName;
            param.DbType = type;
            param.Size = size;
            param.Value = value;

            return param;
        }
    }
}