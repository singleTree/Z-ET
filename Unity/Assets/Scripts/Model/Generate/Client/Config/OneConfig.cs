
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;

namespace ET
{
    [EnableClass]
    public sealed partial class OneConfig : BeanBase
    {
        public OneConfig(ByteBuf _buf)
        {
            Test = _buf.ReadInt();

            PostInit();
        }

        public static OneConfig DeserializeOneConfig(ByteBuf _buf)
        {
            return new OneConfig(_buf);
        }

        /// <summary>
        /// 匹配最大时间
        /// </summary>
        public readonly int Test;


        public const int __ID__ = -1151772376;
        public override int GetTypeId() => __ID__;

        public  void ResolveRef()
        {
            
            
            PostResolve();
        }

        public override string ToString()
        {
            return "{ "
            + "Test:" + Test + ","
            + "}";
        }

        partial void PostInit();
        partial void PostResolve();
    }
}
