# 人形机器人行业每日资讯 - 2026年10月22日

> 收集时间：2026-10-22 03:11（北京时间）
> 资讯数量：8条 | 国内3条 | 国外5条 | 学术2条（含于国外）

---

## 1. [SuperMimic：用单一可微世界模型扩展人形全身控制，单卡 3 小时超越 128 卡 7 天基线（CoRL 2026）]
**分类**：技术突破
**摘要**：UC Berkeley 团队提出 SuperMimic，用单个可学习的可微世界模型训练人形全身运动跟踪策略，单张 H100 训练 3 小时即超越 SONIC 用 128 张 L40 训练 7 天的归一化回报，并在实体 Unitree G1 上零样本运行。
**来源**：[SuperMimic 项目页](https://supermimic.github.io/)（论文 arXiv:2610.28480，CoRL 2026）
**发布时间**：2026-10（CoRL 2026 录用）
**相关企业/机构**：UC Berkeley（Qiayuan Liao、Yiyang Shao、Junfeng Long、Kevin Zakka、Roberto Horowitz、Pieter Abbeel、Koushil Sreenath）
**技术亮点**：
- 训练效率：1×H100 3 小时（约 3 GPU-hours）超越 SONIC 释放版 checkpoint（128×L40、168 小时、约 2.1 万 GPU-hours），GPU-hours 下降超过 1000 倍、墙钟时间下降超过 50 倍；2×H100 训练 9.8 小时后，在 129,514 个基准动作上实现零失败（SONIC 释放版失败 179 个，含全部 44 个翻转与 22 个侧滚）。
- 方法学：不对物理引擎求导，而是用标准 MuJoCo Warp 采集的转移数据拟合一个可微世界模型，再经世界模型做 BPTT/解析策略梯度；在世界模型上"想象"rollout 比 MuJoCo Warp 快 10 倍以上，达到 PPO-WM 最佳回报所需想象步数少约 64 倍。
- 数据与阶段：仅用 BONES-SEED 公开子集 264.56 小时（为 SONIC 611 小时的 2.3 倍更少数据）；当前为 CoRL 2026 论文成果，策略已在真机 Unitree G1 上零样本部署，无需逐动作调参。

---

## 2. [NVIDIA Advances Isaac Platform for General-Purpose Robotics With New Reference Humanoid, Frameworks, Simulation Pipelines and Data（NVIDIA 扩展 Isaac 平台：新增 Agile ONE SN 参考人形、Isaac Lab 3.0 与 Isaac OS）]
**分类**：技术发布
**摘要**：NVIDIA 在 GTC Berlin 宣布扩展 Isaac 开放机器人平台，联合 Agile Robots 推出 31 自由度参考人形 Agile ONE SN，并正式发布 Isaac Lab 3.0、开源 Isaac OS 运行时、Human 1M 数据集与 DGX Station 参考工作流。
**来源**：[NVIDIA Newsroom](https://nvidianews.nvidia.com/news/nvidia-advances-isaac-platform-for-general-purpose-robotics-with-new-reference-humanoid-frameworks-simulation-pipelines-and-data)
**发布时间**：2026-10-21
**相关企业/机构**：NVIDIA、Agile Robots、Stanford University、ETH Zurich
**技术亮点**：
- Agile ONE SN 整机：身高 1.40 m、重 40 kg、31 个自由度，单臂负载 3 kg；双手为 WUJI Hand 2 五指手，每手 20 自由度、1 kHz 力控并集成触觉感知；搭载 Jetson Thor，2070 FP4 TFLOPS、128 GB 统一内存；头部/腕部相机 + 激光雷达 + IMU；计划集成 NVIDIA Halos 安全栈。定于 2027 年初上市，属规划阶段。
- 工具链：Isaac Lab 3.0 正式可用（GA），开源、支持多 GPU 工作流，物理引擎覆盖 Newton 与 PhysX；Isaac OS 基于 Holoscan，作为开源运行时统一 AI、传感器、控制与机器人硬件，提供从仿真到实机的确定性实时性能。
- 数据与生态：SimReady Central Library 提供 2000 余个仿真就绪资产；Human 1M 数据集含多样化人类活动、三视角同步视频与 3D 手部追踪，已在 Hugging Face 发布；面向 DGX Station 开放三套参考工作流，用于 GR00T 1.7 强化学习精调、Isaac Lab 灵巧操作训练与 Cosmos 世界模型后训练。

---

## 3. [宇树科技发布人形机器人“H2-X 功夫传奇”，站立续航约 8 小时]
**分类**：产品发布
**摘要**：宇树科技 10 月 21 日通过官方视频号发布人形机器人“H2-X（功夫传奇）”，官方称站立工况续航可达约 8 小时，演示了撞击车门致其变形、4 米高台安全落地与连续武术动作。
**来源**：[中财网（引宇树科技官方视频号）](https://www.cfi.net.cn/newspage.aspx?id=20261021000732)、[每日经济新闻（新浪转载）](https://finance.sina.cn/2026-10-21/detail-inivynsm5424535.d.html)
**发布时间**：2026-10-21
**相关企业/机构**：宇树科技（688836）
**技术亮点**：
- 续航：官方口径为站立工况约 8 小时“超长续航”，明显高于公开人形整机常见的 2–4 小时演示时长，但未披露电池容量与行走工况续航。
- 结构与抗冲击：视频展示机身撞击车门并致其变形、从 4 米高台落地后仍能完成流畅武术动作，指向机身结构强度与关节模组的抗冲击设计。
- 场景与阶段：演示覆盖家庭安保、交通事故救援；属新品发布/演示阶段，整机自由度、重量、关节峰值扭矩等具体参数暂未公开。

---

## 4. [Figure 03 连续 9 天跑步机测试：348 英里、120 万步]
**分类**：技术突破
**摘要**：Figure AI 的 Figure 03 连续 9 天在跑步机上行走，累计 348 英里（约 560 km）、120 万步，用于在长时重复运动中暴露硬件失效点。
**来源**：[Interesting Engineering](https://interestingengineering.com/ai-robotics/figure-03-humanoid-robot-treadmill-test)（引 Figure AI CEO Brett Adcock 在 X 的发布）
**发布时间**：2026-10-19（美国时间，北京时间 2026-10-20）
**相关企业/机构**：Figure AI
**技术亮点**：
- 可靠性数据：9 天连续行走、120 万步、348 英里累计里程；测试中机器人连接电源线，官方未说明是否由单机全程完成及具体供电方案。
- 感知升级：相机帧率提升至前代 2 倍、延迟降至前代 1/4，单相机视场角扩大 60%；手掌相机与触觉传感器可检测低至 3 g 的接触力。
- 补能与阶段：足部内置线圈支持无线感应充电，踩上配套底座即以 2 kW 补能；本次属内部压力测试而非产线部署，Figure 02 机队已随 Figure 03 量产爬坡退役。

---

## 5. [FRDV：面向人形机器人学习的快速运动重定向框架，最高 9,156 帧/秒（Humanoids 2026）]
**分类**：技术突破
**摘要**：UMass Amherst 团队提出 FRDV，将人体动捕数据经约束运动学重定向与可选动力学校验映射到不同人形机器人，在 LAFAN1 上平均吞吐 9,156 FPS，并在 Unitree G1 上实现零样本 sim-to-real 部署。
**来源**：[FRDV 项目页](https://daroslab.github.io/frdv/)（Humanoids 2026 录用）
**发布时间**：2026-10（Humanoids 2026 录用论文）
**相关企业/机构**：UMass Amherst（Daniel Marew、Sangjun Park、Nisal Perera、Donghyun Kim）
**技术亮点**：
- 吞吐性能：20 个 CPU worker 下 LAFAN1 平均 9,156 FPS（单 worker 677 FPS，开启边界细化约 1,947 FPS）；AMASS 13,662 段动作约 1 小时处理完，对比 ProtoMotions 的 45.06 小时（4,324.4 FPS 对 57.8 FPS）。
- 算法：自研 SQP 求解器 + Real-Time Iteration，每帧仅一步并利用时间热启动；长序列分块并行求解并做边界精化；可选 contact-implicit iLQR 在全刚体动力学与执行器约束下校验可跟踪性，无需预设接触序列。
- 效果与阶段：在 Dance1-S1 前 26 秒，使用 CI-iLQR 修正参考后平均全局体位置跟踪误差由 103.12 mm 降至 86.58 mm；策略零样本迁移至实体 G1，无需硬件专项微调；代码计划开源（仅运动学重定向管线，不含动力学校验）。

---

## 6. [星际光年与奔图科技达成战略合作，绳驱灵巧手进入打印机总装线完成数月验证]
**分类**：产品发布
**摘要**：深圳星际光年与奔图科技、星擎智能签署战略合作及灵巧手联合实验室共建协议，其绳驱灵巧手 + VTLAM 操作模型方案已在奔图打印机产线完成数月真实作业验证，覆盖识别、抓取、对位插接与装配到位。
**来源**：[CSDN](https://www.csdn.net/article/2026-10-21/168659243)
**发布时间**：2026-10-21
**相关企业/机构**：深圳星际光年科技有限公司、奔图科技（002180）、珠海星擎智能科技有限公司
**技术亮点**：
- 硬件方案：Pantheon 系列绳驱灵巧手采用“驱手分离”架构，驱动单元后置于小臂/大臂/胸腔，手部自重降至 290 g，握力 500 N 以上；自研“全自动即时张紧算法”针对腱绳蠕变做闭环柔性补偿，单指重复定位精度 0.14 mm，已通过百万次全行程疲劳测试；另有模块化 20-DoF 直驱灵巧手与驱控一体微型关节模组。
- 软件闭环：上层为融合视觉与触觉的 VTLAM 具身操作模型，配套 System-M“失败—修正—记忆”闭环，可在异常发生后秒级自我修正并沉淀为可复用策略。
- 阶段与规模：已在真实产线连续验证数月、可完成 20 余项精细操作且节拍与产线对齐，属产线验证/试点落地；双方同步共建联合实验室，尚未披露部署台数与采购金额。

---

## 7. [AGCO 与 Agility Robotics 签署商业协议，Digit 将于 2027 年在堪萨斯工厂试点]
**分类**：商业动态
**摘要**：AGCO 与 Agility Robotics 签署商业协议，计划自 2027 年起在 AGCO 堪萨斯州 Hesston 工厂试点部署 Digit 人形机器人，先期承担零件分拣、堆叠与周转箱智能摆放。
**来源**：[Agility Robotics 新闻稿](https://www.agilityrobotics.com/content/agco-and-agility-robotics-advance-smart-manufacturing-with-humanoid-robot-pilot-in-hesston-kansas-facility)
**发布时间**：2026-10-20
**相关企业/机构**：AGCO（NYSE: AGCO）、Agility Robotics
**技术亮点**：
- 部署形态：Digit 与 Agility Arc 云端机队管理平台配合，可在不做大规模基础设施改造、不进行高昂产线升级的前提下接入现有作业流程。
- 运行基础：Agility 称其人形机器人累计超过 65,000 小时真实场景运行；AGCO 之前已有 Toyota、GXO、Schaeffler 等客户部署 Digit。
- 阶段界定：本次为商业协议签署 + 试点规划（2027 年启动），尚未进入实际生产；Agility 另计划于 2026 年第四季度完成与 Churchill Capital Corp XI 的业务合并，以代码 AGLT 在纳斯达克交易。

---

## 8. [长盈精密前 8 月交付人形机器人精密零组件超 110 万件，Q3/Q4 订单增速加快]
**分类**：商业动态
**摘要**：长盈精密公告 2026 年 1–8 月累计交付人形机器人精密零组件超过 110 万件，第三、四季度订单增速较上半年进一步加快，深圳园区约 6 万平方米厂房已投入人形机器人产品生产。
**来源**：[中新经纬](https://www.jwview.com/jingwei/html/m/10-21/693605.shtml)
**发布时间**：2026-10-21
**相关企业/机构**：长盈精密
**技术亮点**：
- 产品覆盖：灵巧手传动件、旋转执行器核心传动件、丝杠核心传动件、躯干大尺寸传动件与骨骼结构件，已从单件延伸至整机组装的一站式服务能力。
- 制造能力：材料端覆盖铝合金、镁合金、钛合金及 PEEK、IGUS 工程塑料、橡胶/硅胶/尼龙/纤维织布；工艺端具备 CNC、3D 打印、压铸、注塑、滚齿、热压等多成型工艺组合。
- 阶段与产能：属批量交付中的供应链量产阶段，深圳机器人智能制造产业园已投用，其中约 6 万平方米厂房专用于人形机器人相关产品，为跨品类规模化订单做产能储备。

---

## 简要总结

- **训练范式**：SuperMimic 把全身运动跟踪的训练成本压到 1 张 H100 / 3 小时（对 128 卡 7 天基线实现 >1000 倍 GPU-hours 缩减），"可微世界模型替代大规模仿真 PPO"的路线首次在大规模动作库上给出完整对照数据，是当日技术价值最高的方向。
- **平台标准化**：NVIDIA 以 Isaac Lab 3.0（GA）+ Isaac OS + GR00T + Jetson Thor 打包"数据—训练—部署"，并联合 Agile Robots 给出 31 DoF、双手各 20 DoF 的参考整机，工具链与硬件基线同步收敛。
- **国内进展**：宇树 H2-X 以约 8 小时站立续航、撞击与 4 m 跌落演示主打结构可靠性；星际光年绳驱灵巧手（290 g 自重、500 N 握力、0.14 mm 重复精度）进入打印机总装线实测数月；长盈精密百万件级交付与 6 万平方米专线厂房，显示供应链正从打样转向批量。
- **海外落地仍以试点为主**：Figure 03 用 9 天、120 万步跑步机测试验证长时可靠性，AGCO×Digit 的商业协议要到 2027 年才启动试点，量产部署与规划阶段的边界需严格区分。
- **学术工具链**：CoRL/Humanoids 当日成果集中于运动重定向与全身跟踪，FRDV 的 9,156 FPS 重定向吞吐与零样本 G1 迁移说明"数据规模化"正成为 sim-to-real 的新瓶颈与突破口。
