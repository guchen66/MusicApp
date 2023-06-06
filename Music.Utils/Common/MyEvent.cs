using Prism.Events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Music.Utils.Common
{
    public class MyEvent : PubSubEvent<string>
    {

    }
    /// <summary>
    /// 后退
    /// </summary>
    public class GoBackEvent : PubSubEvent
    {

    }
    /// <summary>
    /// 前进
    /// </summary>
    public class ForWardEvent : PubSubEvent
    {

    }
    /// <summary>
    /// 搜索
    /// </summary>
    public class SearchEvent : PubSubEvent<string>
    {

    }

}
