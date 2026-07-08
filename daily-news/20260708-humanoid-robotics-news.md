# 人形机器人行业每日资讯 - 2026年07月08日

> 收集时间：2026-07-08 09:09（北京时间）
> 资讯数量：9条 | 国内4条 | 国外4条 | 学术1条

---

## 1. NVIDIA发布Isaac GR00T 1.7端到端人形机器人开发平台，Apache 2.0开源
**分类**：技术发布
**摘要**：NVIDIA于7月7日发布Isaac GR00T 1.7，这是首个面向通用人形机器人技能的开源商用VLA模型，配套推出从仿真到部署的完整端到端开发平台，已获1X、Agility、NEURA Robotics等十余家机器人企业采用。
**来源**：[NVIDIA Developer Blog](https://developer.nvidia.com/blog/develop-humanoid-robot-policies-end-to-end-with-nvidia-isaac-gr00t/)
**发布时间**：2026-07-07
**相关企业/机构**：NVIDIA
**技术亮点**：
- GR00T 1.7为3B参数VLA模型，采用Cosmos-Reason2-2B（Qwen3-VL架构）作为VLM骨干，替代前代Eagle骨干，支持原生宽高比图像输入无需padding
- 预训练数据：约32,000小时真实人类演示+自我中心数据，约8,000小时仿真滚出与演示数据（含BEHAVIOR、RoboCasa、仿真GR-1）
- 全流程支持：Isaac Lab-Arena（仿真）→ Isaac Teleop（VR遥操作数据采集）→ GR00T 1.7（策略训练）→ Isaac ROS + Jetson Thor（部署），支持ONNX/TensorRT导出
- 基准提升：DROID-F0(+10%)、DROID-F6(+61%)、SimplerEnv Bridge(+5%)、Fractal(+2%)，支持跨具身部署，Apache 2.0许可商用

---

## 2. 工信部：2026年中国人形机器人整机产量有望突破10万台
**分类**：产品发布/商业动态
**摘要**：工信部科技司副司长甘小斌在7月7日WAIC 2026新闻发布会上表示，依托大模型与具身智能技术迭代，今年中国人形机器人全年整机产量有望突破10万台，行业正式进入规模化量产元年。
**来源**：[澎湃新闻](https://www.thepaper.cn/newsDetail_forward_33532485)
**发布时间**：2026-07-07
**相关企业/机构**：工业和信息化部
**技术亮点**：
- 2025年全球人形机器人总出货量仅约2万台（国产约1.6万台），2026年预期10万台意味着同比增幅超500%，单年产能达去年全球总量5倍
- 核心零部件国产化率突破70%，谐波减速器、力矩伺服、六维力传感器等摆脱海外供给约束
- 整机制造成本近两年下降30%-40%，已具备批量交付基础
- 宇树、智元合计占据国内近80%出货量，优必选、傅利叶、银河通用等同步建设万台级总装工厂
- 工信部正实施"人形机器人与具身智能实景实训"专项行动，推动机器人"进工厂、下车间"

---

## 3. 宇树科技科创板IPO注册生效，拟募资42亿元扩产
**分类**：产品发布/商业动态
**摘要**：7月6日晚间，上交所更新宇树科技IPO审核状态为"注册生效"，从3月20日受理到注册生效仅104天，成为A股首个人形机器人整机标的，计划募资42.02亿元用于模型研发、本体研发和新制造基地建设。
**来源**：[凤凰网科技](https://tech.ifeng.com/c/8uYhYI2akVW)
**发布时间**：2026-07-06
**相关企业/机构**：宇树科技（Unitree）
**技术亮点**：
- 财务数据：2025年营收17.1亿元（2023年1.59亿元，两年翻十倍），净利润2.88亿元（实现扭亏）
- 出货数据：2025年全年出货超5500台人形机器人，四足机器人累计销量超3万台，四足全球市占率超60%
- 产能规划：募投项目将建成年产7.5万台人形机器人+11.5万台四足机器人的制造基地
- 海外收入占比约四成：日本航空羽田机场自2026年5月起试运行G1机器人，从事行李装卸和货物转运，试用期至2028年
- 产品矩阵：从2.69万元双臂人形到390万元载人机甲GD01，6月发布搭载Jetson Thor与Isaac GR00T平台的H2 Plus

---

## 4. DREAMSTEER：隐世界模型实时引导VLA策略，未见物体任务成功率提升2.8倍
**分类**：技术突破/学术成果
**摘要**：USC与NVIDIA研究团队提出DREAMSTEER框架，无需微调或修改参数即可在部署时增强预训练VLA策略性能，通过隐空间世界模型"想象"动作后果并由语言条件价值模型选择最优轨迹，在未见物体操控任务上将成功率从23.75%提升至66.25%。
**来源**：[arXiv:2607.02865](https://arxiv.org/abs/2607.02865) / [TheNeuralFeed报道](https://theneuralfeed.com/article/dreamsteer-latent-world-models-can-steer-vla-policies-during-deployment-without-/gjfKzqCM)
**发布时间**：2026-07-07
**相关企业/机构**：University of Southern California、NVIDIA
**技术亮点**：
- 核心创新：结合潜空间世界模型（预测未来状态）与语言条件价值模型（评估想象轨迹的成功概率），部署时从VLA策略和运动原语中采样候选动作块，在隐空间仿真后选择最优动作
- 无需额外训练数据或模型微调，即插即用增强现有VLA策略，解决分布偏移（新物体/意外情况）问题
- 实验结果：4个真实操控基准上，未见物体任务成功率从23.75%提升至66.25%（2.8倍提升）
- 技术阶段：实验室阶段/arXiv预印本，尚未在人形机器人真机上验证
- 意义：为VLA模型在真实世界非结构化环境中的鲁棒部署提供了轻量级解决方案

---

## 5. Agility Robotics通过SPAC上市，估值25亿美元，CEO称家用机器人尚需十年
**分类**：产品发布/商业动态
**摘要**：Agility Robotics宣布通过SPAC合并上市，估值约25亿美元，成为首批登陆公开市场的人形机器人企业之一。公司以审慎估值著称，依托Digit机器人在物流领域的多年实际部署和RaaS收入，与Figure AI 390亿美元估值形成鲜明对比。
**来源**：[Our Publicist Mag](https://ourpublicistmag.com/2026/07/07/agility-robotics-is-going-public-at-2-5b-while-figure-ai-sits-at-39b-on-less-proven-ground-and-the-gap-between-those-two-numbers-is-the-entire-humanoid-robotics-thesis-in-one-line/) / [TechCrunch](https://techcrunch.com/2026/07/05/this-humanoid-robotics-company-is-going-public-but-its-ceo-isnt-promising-a-robot-in-your-home-anytime-soon/)
**发布时间**：2026-07-05/07
**相关企业/机构**：Agility Robotics
**技术亮点**：
- Digit双足机器人已有十年部署历史，拥有多年RaaS（机器人即服务）实质收入，客户含Amazon等物流与制造业企业
- CEO Damion Johnson明确表示：人形机器人进入家庭至少还需10年，家庭环境的不可预测性远超仓库
- 安全优先：强调安全认证不能事后补装，电气系统、零部件、软件均需集成认证以满足工业安全标准
- 资金用途：加速俄勒冈州Salem制造工厂产能，支持现有客户合同交付
- 行业对比：Figure AI估值390亿美元（C轮10亿美元），Apptronik估值55亿美元（A轮9.35亿美元），Agility 25亿美元估值相对保守

---

## 6. Apptronik开放9万平方英尺Robot Park数据工厂，Apollo 2双形态亮相
**分类**：技术发布/产品发布
**摘要**：Apptronik于6月30日在德州奥斯汀开放近9万平方英尺的Robot Park设施，同时展示兼具双足与轮式双形态的Apollo 2人形机器人平台。Apollo已部署于Mercedes-Benz和GXO Logistics实际执行班次任务，Robot Park定位为物理世界数据生产线，为Google DeepMind Gemini Robotics模型提供训练数据。
**来源**：[CSDN深度解析](https://wuzikang.blog.csdn.net/article/details/162521385) / [Apptronik官方](https://apptronik.com/news-collection/welcome-to-robot-park-where-apptroniks-apollo-goes-to-work)
**发布时间**：2026-06-30（深度分析发布于2026-07-06）
**相关企业/机构**：Apptronik、Google DeepMind
**技术亮点**：
- Robot Park面积约9万平方英尺（~8360平方米），定位为"物理世界数据生产线"而非传统训练场，持续采集物流、制造、零售场景的真实任务数据
- Apollo 2采用模块化设计，同时推出双足形态（适用于非结构化空间）和轮式形态（适用于工业环境），上身/感知/任务系统共用
- 已商用部署：Mercedes-Benz工厂和GXO Logistics实际执行搬运班次，非Demo展示
- 与Google DeepMind深度合作：Gemini Robotics VLA模型+具身推理ER 1.5，数据闭环（Robot Park采集→模型训练→部署回Apollo）
- 累计融资约10亿美元（2025年A轮4.15亿+2026年A-X轮5.2亿），估值约53亿美元（2026年2月）
- CEO Jeff Cardenas名言："行业花了多年展示机器人在Demo中能做什么，我们关注它们每天在工作中能做什么。"

---

## 7. Machina 2026巴黎峰会：NVIDIA Jim Fan提出世界动作模型，Boston Dynamics Atlas D1将执行器减至2种
**分类**：技术发布/产业动态
**摘要**：7月7日，Machina 2026人形机器人峰会在巴黎Station F举办，Boston Dynamics、Apptronik、Google DeepMind、Agility、LimX Dynamics、1X等全球头部企业同台演讲。NVIDIA Jim Fan提出"世界动作模型"新范式，Boston Dynamics披露Atlas D1将108种执行器大幅简化至2种。
**来源**：[humanoid.guide现场报道](https://humanoid.guide/machina-2026/)
**发布时间**：2026-07-07
**相关企业/机构**：NVIDIA、Boston Dynamics、Google DeepMind、LimX Dynamics等
**技术亮点**：
- NVIDIA Jim Fan提出World Action Model（世界动作模型）：替代传统VLA"一帧→动作"范式，机器人"做梦"生成未来几秒视频帧预测，称为"机器人的GPT-2时刻"，基于Cosmos模拟浮力、反射、碰撞物理
- EgoScale数据方案：99.99%人类自我中心视频（20,000小时）预训练，无需机器人数据；仅需50小时手套数据+4小时遥操作即可完成卡牌分拣、注射器操作等精细任务
- Boston Dynamics：在现代汽车集团支持下，Atlas D1将执行器类型从108种大幅削减至2种（手臂/腿通用互换），以实现规模化制造；四大评估支柱——能工作吗？有用吗？AI用在哪？能规模化吗？
- GR00T开源模型与物理AI数据集下载量突破1000万次
- 中国企业逐际动力LimX Dynamics受邀演讲，代表中国人形机器人企业首次登上Machina主舞台

---

## 8. 特斯拉Optimus弗里蒙特工厂产线启动安装，马斯克称初期生产将极其缓慢
**分类**：产品发布/商业动态
**摘要**：7月1日马斯克在社交平台发布弗里蒙特工厂Optimus生产线合照，标志着原Model S/X产线改造完成、量产设备开始安装。但马斯克同时警告Optimus初期生产"极其缓慢"，否定"超预期量产"猜测；特斯拉副总裁陶琳7月3日确认目标为2026年底启动规模化量产。
**来源**：[搜狐财经](https://m.sohu.com/a/1046353094_122295434/) / [微博](https://m.weibo.cn/detail/5316860191965917)
**发布时间**：2026-07-01/03（市场反应报道7月6日）
**相关企业/机构**：Tesla
**技术亮点**：
- Optimus Gen3参数：37个关节（比Gen2增加9个），谐波+行星驱动系统，行走速度1.2m/s，可在15°斜坡稳定行走
- 22自由度腱驱灵巧手具备亚毫米级操作精度，可完成精细抓取、搬运和组装；腕部/前臂额外增加3自由度
- 产线改造：弗里蒙特工厂Model S/X产线4个月内完成拆除和新模块化设备安装（含德国采购生产线及数十条执行器/电池子产线）
- 量产时间表：2026年夏季启动试产，弗里蒙特目标年产100万台；德州Giga Texas工厂土建6月开工，大规模量产预计2027年夏季
- 马斯克明确表示："Optimus生产一开始会极其缓慢，因为一切都是全新的。这不像制造汽车。"Optimus包含约1万个独立零部件
- 技术阶段：试产准备阶段，尚未进入大规模量产

---

## 9. 2026H1人形机器人产业盘点：全球154家企业融资超1072亿元，具身模型架构收敛至世界模型+VLA
**分类**：产品发布/商业动态
**摘要**：7月7日发布的2026年上半年人形机器人产业盘点显示，全球154家具身智能企业累计融资超1072亿元，马太效应显著（CR5=34%）；具身模型架构开始收敛，世界模型+VLA成为主流技术路线；国内企业上半年发布18款新品，头部企业启动万台级产能建设。
**来源**：[搜狐产业研究](https://m.sohu.com/a/1047111518_121123901/)
**发布时间**：2026-07-07
**相关企业/机构**：全行业
**技术亮点**：
- 融资情况：TOP5企业——Neura Robotics（德国，14亿美元C轮）、Skild AI（美国，14亿美元C轮）、Mind Robotics（美国，A轮+超9亿美元）、智平方（50亿元C轮）、千寻智能（三轮累计超45亿元），合计约364亿元
- 模型进展：海外π系列零样本通用能力持续升级，英伟达GR00T N1.7率先商用落地，DeepMind携手波士顿动力拿下工业VLA高成功率纪录；国内五六月份迎来模型集中发布潮
- 产能建设：Figure产能爬升至每小时一台；优必选柳州工厂投产，2026年产能有望达1万台/年；智元6月下线第1.5万台精灵G2（临港/张江/成都/无锡多工厂投产）；小鹏机器人广州工厂一期规划5万台，预计26年底月产千台
- IPO动态：Agility通过SPAC上市，越疆回A申请获受理，宇树科技过会，乐聚智能/云深处完成IPO辅导验收，银河通用/星海图完成股改筹备港股
- 架构趋势：VLA与世界模型两条技术路线走向融合，从"会走路"到"能干活"成为行业共识

---

## 简要总结
今日资讯呈现三大核心趋势：**一是量产元年实质性开启**，工信部官方预测2026年中国产量突破10万台（同比增超500%），宇树科创板IPO过会、Agility SPAC上市标志着资本市场对人形机器人赛道从概念期进入业绩验证期；**二是VLA模型生态加速成熟**，NVIDIA GR00T 1.7以Apache 2.0开源+完整工具链降低开发门槛，DREAMSTEER等研究为部署鲁棒性提供新思路，世界动作模型（World Action Model）被NVIDIA提出为下一代范式；**三是数据工厂成为新竞争焦点**，Apptronik Robot Park、Boston Dynamics执行器简化、特斯拉产线建设均表明行业竞争从"Demo炫技"转向"真实世界数据+规模化制造"，工业场景率先落地而家用场景仍需十年以上。中国在产能规模和供应链成本上优势显著，但基础模型原创能力和安全认证体系仍是需要追赶的方向。
