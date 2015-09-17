using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ORBITA.Model;

using MySql.Data.MySqlClient;

namespace ORBITA.DAL
{
    public class CaseService
    {
        public static CaseCollection GetList()
        {
            CaseCollection list = new CaseCollection();
            string sql = @"select * from t_case";
            MySqlDataReader reader = DbHelper.ExecuteDataReader(sql);
            if (reader.HasRows)
            {
                while(reader.Read())
                {
                    list.Add(FillDataRecord(reader));
                }
            }
            reader.Close();

            return list;
        }

        public static Case GetItem(int id)
        {
            string sql = "select * from t_case where id=?id";
            MySqlParameter[] parms = new MySqlParameter[] { new MySqlParameter("?id", MySqlDbType.Int32) };
            parms[0].Value = id;

            MySqlDataReader reader = DbHelper.ExecuteDataReader(sql, parms);

            Case mycase = new Case();

            if (reader.HasRows)
            {
                if(reader.Read())
                {
                    mycase = FillDataRecord(reader);
                }
            }
            reader.Close();

            return mycase;

        }

        public static bool Delete(int id)
        {
            string sql = "delete from t_case where id=?id";
            MySqlParameter[] parms = new MySqlParameter[] { new MySqlParameter("?id", MySqlDbType.Int32) };
            parms[0].Value = id;
            int result = DbHelper.ExecuteNonQuery(sql, parms);

            return result > 0;
        }

        public static bool Update(Case mycase)
        {
            string sql = "update t_case set country=?country, hotel=?hotel, image=?image where id=?id";
            MySqlParameter[] parms = new MySqlParameter[] { 
                new MySqlParameter("?country", MySqlDbType.VarChar),
                new MySqlParameter("?hotel", MySqlDbType.VarChar),
                new MySqlParameter("?image", MySqlDbType.VarChar),
                new MySqlParameter("?id", MySqlDbType.Int32)
            };
            parms[0].Value = mycase.country;
            parms[1].Value = mycase.hotel;
            parms[2].Value = mycase.image;
            parms[3].Value = mycase.id;

            int result = DbHelper.ExecuteNonQuery(sql, parms);

            return result > 0;
        }

        public static bool Insert(Case mycase)
        {
            string sql = @"insert into t_case
                (
                    country, hotel, image
                ) 
                values
                (
                    ?country, ?hotel, ?image    
                )";

            MySqlParameter[] parms = new MySqlParameter[] { 
                new MySqlParameter("?country", MySqlDbType.VarChar),
                new MySqlParameter("?hotel", MySqlDbType.VarChar),
                new MySqlParameter("?image", MySqlDbType.VarChar)
            };

            parms[0].Value = mycase.country;
            parms[1].Value = mycase.hotel;
            parms[2].Value = mycase.image;

            int result = DbHelper.ExecuteNonQuery(sql, parms);

            return result > 0;
        }

        #region
            
        private static Case FillDataRecord(System.Data.IDataRecord myDataRecord)
        {
            Case mycase = new Case();

            mycase.id = myDataRecord.GetInt16(myDataRecord.GetOrdinal("id"));
            mycase.country = myDataRecord.GetString(myDataRecord.GetOrdinal("country"));
            mycase.hotel = myDataRecord.GetString(myDataRecord.GetOrdinal("hotel"));
            mycase.image = myDataRecord.GetString(myDataRecord.GetOrdinal("image"));

            return mycase;
        }

        #endregion

    }
}
