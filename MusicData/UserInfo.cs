using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace MusicData
{
    [SugarTable("UserInfo", "用户表")]//, IsDisabledUpdateAll = true安全级别高，只创建，不修改和删除
    public class UserInfo
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]//主键自增
        public int Id { get; set; }

        [SugarColumn(ColumnDataType = "Nvarchar(50)")]//自定义情况Length不要设置
        public string? UserName { get; set; }

        [SugarColumn(ColumnDataType = "Nvarchar(32)")]
        public string? Password { get; set; }

        [SugarColumn(ColumnDataType = "Nvarchar(32)")]
        public string? Role { get; set; }


        public DateTime CreateTime { get; set; }
    }
}
