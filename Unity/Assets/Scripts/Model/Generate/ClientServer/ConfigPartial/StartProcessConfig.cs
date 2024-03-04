using System.Net;

namespace ET
{
    public partial class StartProcessConfigCategory
    {
        public StartProcessConfig Get(int id) => this.Get(Options.Instance.StartConfig, id);
    }

    public partial class StartProcessConfig
    {
        public string InnerIP => this.StartMachineConfig.InnerIP;

        public string OuterIP => this.StartMachineConfig.OuterIP;

        // 内网地址外网端口，通过防火墙映射端口过来
        private IPEndPoint ipEndPoint;

        public IPEndPoint IPEndPoint
        {
            get
            {
                if (ipEndPoint == null)
                {
                    this.ipEndPoint = NetworkHelper.ToIPEndPoint(this.InnerIP, this.Port);
                }

                return this.ipEndPoint;
            }
        }

        public StartMachineConfig StartMachineConfig => StartMachineConfigCategory.Instance.Get(this.MachineId);

        public StartMachineConfig Get(int id) => StartMachineConfigCategory.Instance.Get(id);
    }
}