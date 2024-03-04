using System.Collections.Generic;
using System.ComponentModel;
using System.Net;

namespace ET
{
    public partial class StartMachineConfigCategory
    {
        public StartMachineConfig Get(int id) => this.Get(Options.Instance.StartConfig, id);
    }
}