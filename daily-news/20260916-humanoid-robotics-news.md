# 人形机器人行业每日资讯 - 2026年09月16日

> 收集时间：2026-09-16 03:07（北京时间）
> 资讯数量：8条 | 国内3条 | 国外2条 | 学术2条 | 工具链1条

---

## 1. Agility Robotics 发布第五代人形机器人 Digit 5，主打协作安全与大规模部署
**分类**：产品发布
**摘要**：Agility Robotics 于 2026年9月15日 发布第五代通用人形机器人 Digit 5，首次引入协作安全架构（Cooperatively Safe），无需物理安全护栏即可与人近距离协同工作，目前已获超 3亿美元多年期客户订单。
**来源**：[Agility Robotics 官方新闻稿](https://www.agilityrobotics.com/content/agility-unveils-digit-5-humanoid-robot-built-for-cooperatively-safe-work-at-scale)
**发布时间**：2026-09-15
**相关企业/机构**：Agility Robotics, FORT Robotics, NVIDIA
**技术亮点**：
- **协作安全突破**：Digit 5 是 Agility 首款面向大规模协作安全（Cooperatively Safe at Scale）设计的人形，通过与 FORT Robotics 合作的安全架构和 NVIDIA 的计算平台，消除了传统工业自动化所需的物理安全护栏限制
- **部署经验积淀**：基于 Digit 4 累计超过 **65,000小时** 真实商用部署经验迭代，Agility RoboFab 工厂年产能达 **10,000 台**
- **商业化进展**：已获超 **3亿美元** 多年期客户订单，2027年上半年早期访问（Early Access），2027年底面向制造、仓储、分销领域正式商用；首次拓展欧盟及英国市场，CE 认证准备中
- 技术阶段：**已发布，2027年商用部署**；具体负载能力、电池续航等硬件参数暂未公开

---

## 2. 优必选柳州人形机器人超级智能工厂正式投产，每 10 分钟下线一台
**分类**：产品发布 / 量产进展
**摘要**：2026年9月12日，优必选（UBTECH）柳州工业人形机器人超级智能工厂正式投产，采用与西门子合作的数字化制造方案，实现 Walker S 和 Cruzr 系列人形机器人的规模化量产，每 10 分钟下线一台整机。
**来源**：[Gasgoo Embodied Intelligence](https://autonews.gasgoo.com/articles/news/one-unit-rolls-off-every-10-minutes-as-robots-making-robots-takes-shape-2099733498218053632)
**发布时间**：2026-09-15
**相关企业/机构**：优必选 UBTECH, 西门子 Siemens
**技术亮点**：
- **制造工艺**：14,000 平米超级智能工厂，采用西门子 Plant Simulation 1:1 数字孪生建模，从原材料入厂到成品出厂全流程虚拟调试；自研焱禧 MOM 系统管理生产排程、物料配送与仓库监控
- **工厂特色**：工厂本身采用人形机器人（Cruzr Y1/S2）执行拆垛、码垛、装卸和转运——即「机器人制造机器人」，搭配 360° 旋转工作台实现 Walker 和 Cruzr 系列混线柔性生产
- **产能与业绩**：年产能规划超 **10,000 台**；2026 上半年营收 **12.7 亿元人民币**，同比 +104.2%；人形整机销量 **16,123 台**，同比 +268.3%；Walker/Cruzr 大型人形销量 921 台，同比 +1,946.7%
- 技术阶段：**已量产部署**

---

## 3. NVIDIA 开源 Isaac Lab-Arena 0.3 Alpha，Agentic 环境生成 + 多节点大规模评估
**分类**：技术发布 / 工具与仿真
**摘要**：NVIDIA 于 2026年9月10日 发布 Isaac Lab-Arena 0.3（Alpha），开源支持基于自然语言的 Agentic 环境生成、Subtask Predicates 细粒度任务跟踪、GPU 加速的大规模并行策略评估等核心功能。
**来源**：[GitHub Release Announcement](https://github.com/isaac-sim/IsaacLab-Arena/discussions/1245)
**发布时间**：2026-09-10
**相关企业/机构**：NVIDIA, UC Berkeley, RoboTwin, RoboDojo, 清华大学 X Square, Lightwheel, RLWRLD DexBench
**技术亮点**：
- **Agentic 环境生成（实验性）**：用自然语言描述任务，Agent 自动推断物体空间约束、查找 SimReady USD 资产、生成一组 Arena 评估环境——以复合 pick-and-place 为初始示例
- **鲁棒性分析**：新增 Subtask Predicates（抓取→举起→搬运→放置）跟踪每个子任务的细粒度里程碑，以及灵敏度分析（Sensitivity Analysis）功能，通过扰动环境因子揭示策略薄弱环节
- **大规模评估架构**：策略 Client-Server 架构支持 GR00T、π0.5 等大模型策略接入；OSMO 分布式框架实现多节点集群 GPU 加速并行评估
- **现成基准**：31 个 Kitchen Benchmark（DROID 厨房操作任务）+ 38 个由自然语言生成的 RoboLab 任务
- GitHub Stars：**564**（截至 2026-09-16）
- 技术阶段：**开源 Alpha**，核心功能与 API 仍在快速迭代

---

## 4. 小鹏 IRON 人形机器人正式开启量产，2026年底目标月产 1,000 台
**分类**：量产进展
**摘要**：小鹏汽车（XPENG）旗下机器人业务线于 2026年9月7日 在广州自动化产线下线首台 IRON 人形机器人，正式进入量产阶段，2026年底目标实现月产 1,000 台规模。
**来源**：[Science Nature / Facebook 转述](https://www.facebook.com/ScienceNaturePage/posts/eerily-humanlike-robots-just-entered-mass-production-in-china-chinese-technology/1634978864749643/)、[Instagram](https://www.instagram.com/p/DdS7342knNr/)
**发布时间**：2026-09-07（产线启动）/ 2026-09-15（海外媒体报道）
**相关企业/机构**：小鹏汽车 XPENG
**技术亮点**：
- **量产指标**：广州自建自动化产线，**2026年底目标月产 1,000 台**；**80% 以上核心部件自产**
- **技术阶段**：**量产启动中**，面向汽车制造工厂内部任务场景（如物料搬运、装配辅助）
- 注：IRON 整机重量、自由度、负载能力、控制频率等具体硬件参数暂未公开；小鹏机器人业务单元本轮融资规模超 9 亿美元

---

## 5. CAP：基于学习去噪的感知盲人形连续自适应控制（arXiv 2609.11553）
**分类**：技术突破 / 学术成果
**摘要**：复旦大学、哈尔滨工业大学、上海交通大学联合团队提出 CAP（Continuously Adaptive Perception-Blind Humanoid Locomotion via Learned Denoising），通过将感知世界模型编码器训练为去噪器，从部分损坏的深度输入中重建干净信号，实现人形机器人在感知退化条件下的鲁棒复杂地形运动。
**来源**：[arXiv 2609.11553](https://arxiv.org/html/2609.11553v1) / [项目主页](https://hoshi-no-ai.github.io/CAP/)
**发布时间**：2026-09-10
**相关机构**：复旦大学、哈尔滨工业大学、上海交通大学、上海人工智能研究院、TARS Robotics
**技术亮点**：
- **核心创新**：（1）感知世界模型编码器作为**学习去噪器**，从损坏的深度观测中重建干净信号；（2）本体感受变分编码器（Proprioceptive Variational Encoder）提供无深度的身体状态补充；（3）耦合训练方案：深度噪声课程（Depth-Noise Curriculum）+ 世界模型特征丢弃（World-Model Feature Dropout）
- **实验验证**：在 **Unitree G1** 人形机器人上完成仿真与真机实验，对外扰动力 ±50N/轴 每 88 控制步 的条件下保持稳定行走
- 技术阶段：**实验室阶段（arXiv preprint）**

---

## 6. DWMP：双世界模型框架用于人形机器人障碍穿越（arXiv 2609.12347）
**分类**：技术突破 / 学术成果
**摘要**：研究人员提出 DWMP（Dual World Model Policy），为行人形机器人设计两个互补的世界模型——Koopman 动力学模型提升本体观测到近似线性的潜在空间，RSSM 视觉模型压缩深度观测至紧凑随机状态，融合后驱动策略生成，有效提升障碍穿越性能。
**来源**：[arXiv 2609.12347](https://arxiv.org/html/2609.12347v1)
**发布时间**：2026-09-11
**相关机构**：未公开标注具体高校/机构
**技术亮点**：
- **双模型协同**：（1）**Koopman-based Dynamics World Model** 将低维非线性本体观测提升至近似线性潜在空间，使动力学特征更易学习；（2）**RSSM-based Visual World Model** 将高维噪声深度观测压缩为紧凑随机状态，同时保留障碍几何信息
- **真实机验证**：在 **Unitree G1** 人形机器人上完成真机实验，成功穿越随机布局的 Ceil、Mceilbar、Narrow 等障碍场景
- **对比优势**：相比直接对原始多模态观测进行端到端编码的基线方案，DWMP 在仿真与真机中均表现出更优的障碍穿越性能
- 技术阶段：**实验室阶段（arXiv preprint）**

---

## 7. 2026 上半年全球人形机器人出货约 1.91 万台，中国制造商占比 97%
**分类**：产业落地
**摘要**：多家行业机构与国家统计局数据显示，2026 年上半年全球人形机器人出货量约 **1.91 万台**，同比 2025 上半年（5,100 台）增长约 **3.75 倍**，其中中国制造商出货量占比高达 **97%**，智元机器人、宇树科技出货量居前。
**来源**：[国家统计局数据（证券时报转述）](https://www.stcn.com/live/video-detail/25554.html)、[世界机器人大会 PDF 报告](http://222.132.157.151:9988/page/1/2026-09/15/05/2026091505_pdf.pdf)、[亿欧新兴技术日报](https://www.iyiou.com/data/202609151140946)
**发布时间**：2026-09-15
**相关企业/机构**：宇树科技 Unitree、智元机器人 AgiBot、优必选 UBTECH
**技术亮点**：
- **量化指标**：2026 上半年全球出货 **1.91 万台**，同比增长 375%；中国制造商占比 **97%**
- **产业地位**：国家统计局确认人形机器人已成为中国智能制造的代表性品类，全球产业链核心环节逐步向国内集中
- 技术阶段：**已量产部署（产业数据）**

---

## 8. 波士顿动力 2027 年 IPO 可能性低，Atlas 尚未大规模商用
**分类**：企业动态
**摘要**：2026年9月14日，Reuters 援引现代汽车集团知情高管报道，波士顿动力（Boston Dynamics）短期内不太可能推进 IPO 计划，因其旗舰人形机器人 Atlas 尚未完成大规模工业部署且公司仍处于亏损状态。
**来源**：[Reuters / KWSN 转述](https://kwsn.com/2026/09/14/exclusive-ipo-for-humanoid-robot-maker-boston-dynamics-unlikely-in-2027-executive-says/)
**发布时间**：2026-09-14
**相关企业/机构**：Boston Dynamics, Hyundai Motor Group
**技术亮点**：
- **商业化瓶颈**：Atlas 人形机器人已在少量客户试点部署，但至今未实现工厂级大规模商业化落地；Boston Dynamics 整体仍未盈利
- **行业参考**：尽管 Hyundai Motor 股价因机器人业务预期创下历史新高，但管理层对波士顿动力的商业化节奏持谨慎态度——侧面反映全球人形机器人商业化进程仍处于早期
- 技术阶段：**试点测试（未大规模部署）**

---

## 简要总结
- **海外产品里程碑**：Agility Digit 5 发布是本周最具技术标杆意义的事件——协作安全（Cooperatively Safe）架构和已验证的 65,000 小时商用部署经验，意味着海外人形正从 Demo 阶段稳步走向真正的人机协同大规模部署；3 亿美元多年订单与 RoboFab 年产能 1 万台的配置，标志着海外人形商业化进入新阶段
- **国内量产竞赛白热化**：优必选柳州工厂（每 10 分钟一台 Walker）与小鹏 IRON（广州自动化产线启动）同日/近几日动作密集，叠加上半年中国占全球出货 97% 的数据，充分印证"量产"已成为当前国内人形赛道的核心竞争维度——但需注意两家头部企业的产能数字（1 万/年 vs 1,000/月）仍有差距
- **仿真工具链持续进化**：NVIDIA Isaac Lab-Arena 0.3 引入自然语言 Agentic 环境生成 + 多节点大规模评估 + Subtask Predicates 细粒度跟踪，直接回应了当下人形策略"Demo 成功但换个环境就挂"的核心痛点，是 Sim-to-Real 工具链方向的重要基础设施升级
- **学术方向聚焦感知鲁棒性**：CAP（感知盲自适应）和 DWMP（双世界模型障碍穿越）两篇论文不约而同地指向同一个关键问题——人形机器人在真实世界中的感知可靠性，且均在 Unitree G1 真机上完成了验证，反映出"仿真-真机"闭环正在成为顶会论文的硬性门槛
- **海外商业化节奏谨慎**：Boston Dynamics 2027 年 IPO 计划搁浅与 Atlas 尚未大规模部署，与国内"97% 全球份额"形成鲜明对比——背后反映的是国内车企（优必选背景、小鹏、比亚迪）自带工厂场景的落地优势，而海外公司（Boston Dynamics、Agility、Figure）在等待工业客户的规模化采购决策
