using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using ORBITA.Model;
using ORBITA.DAL;

namespace ORBITA.BLL
{
    public class CaseManage
    {
        public static CaseCollection GetList()
        {
            return CaseService.GetList();
        }

        public static Case GetItem(int id)
        {
            return CaseService.GetItem(id);
        }

        public static bool Insert(Case mycase)
        {
            return CaseService.Insert(mycase);
        }

        public static bool Delete(int id)
        {
            return CaseService.Delete(id);
        }

        public static bool Update(Case mycase)
        {
            return CaseService.Update(mycase);
        }
    }
}
