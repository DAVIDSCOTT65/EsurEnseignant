using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataBaseUtilities
{
    public class Connexion
    {
        string _serveur = "DESKTOP-F7M2TM5";
        string _database = "ESUR_DATABASAE";
        string _user = "sa";
        string _password = "12345";
        int _port = 0;

        public string Serveur
        {
            get
            {
                return _serveur;
            }

            set
            {
                if (string.IsNullOrEmpty(value))
                    throw new InvalidOperationException("Please specify a valid Server !!!");
                else
                    _serveur = value;
            }
        }

        public string Database
        {
            get
            {
                return _database;
            }

            set
            {
                if (string.IsNullOrEmpty(value))
                    throw new InvalidOperationException("Please specify a valid Database !!!");
                else
                    _database = value;
            }
        }

        public string User
        {
            get
            {
                return _user;
            }

            set
            {
                if (string.IsNullOrEmpty(value))
                    throw new InvalidOperationException("Please specify a valid Username !!!");
                else
                    _user = value;
            }
        }

        public string Password
        {
            get
            {
                return _password;
            }

            set
            {
                if (string.IsNullOrEmpty(value))
                    throw new InvalidOperationException("Please specify a valid Password !!!");
                else
                    _password = value;
            }
        }

        public int Port
        {
            get
            {
                return _port;
            }

            set
            {
                if (value <= 0)
                    throw new InvalidOperationException("Please specify a valid Port number !!!");
                else
                    _port = value;
            }
        }
    }
}