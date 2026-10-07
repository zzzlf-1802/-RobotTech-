# 人形机器人行业每日资讯 - 2026年10月08日

> 收集时间：2026-10-08 06:29（北京时间）
> 资讯数量：9条 | 国内1条 | 国外8条 | 学术5条
> 时效窗口：2026-10-06 至 2026-10-08（I-BFM为10月5日高价值学术内容，因国庆假期国内产业资讯稀缺予以纳入）

---

## 1. QF3: Fast Flow RL with Filtered Q-Gradients — 人形运动策略训练提速10倍并实现零样本迁移
**分类**：技术突破
**摘要**：UC Berkeley等机构研究人员提出QF3离线策略流强化学习算法，使人形 locomotion 策略训练 wall-clock 速度较 FPO++ 提升10倍，并首次实现从零训练零样本迁移至真实硬件。
**来源**：[arXiv:2610.08789](https://arxiv.org/abs/2610.08789)
**发布时间**：2026-10-06
**相关企业/机构**：UC Berkeley、Stanford（Ken Goldberg、Pieter Abbeel 等）
**技术亮点**：
- 结合 flow matching 与 critic 动作梯度，通过单步流输出预测反向传播；仅对接近 replay 动作的维度施加 critic 梯度，保证估计可靠性
- 10x wall-clock 提速（对比 on-policy 方法 FPO++），首个能从零训练人形 locomotion 策略并零样本迁移到硬件的 off-policy flow RL 方法
- 同时支持在 ABC-Sim 与 Robomimic 任务上微调基于演示的 flow 操作策略
- 阶段：实验室阶段，已完成硬件零样本迁移验证

---

## 2. Agility Robotics 投资者日：Digit 5 物料成本15万美元，3亿美元订单分批解锁
**分类**：产品发布 / 商业动态
**摘要**：Agility Robotics 在10月6日投资者日披露 Digit 5 量产经济性：BOM 约15万美元，1000台/3亿美元订单按技能验证分批解锁，通用可用时间推迟至2027年底至2028年初。
**来源**：[Humanoids Daily](https://www.humanoidsdaily.com/news/agility-investor-day-digit-5-launch-costs-and-a-300m-order-that-unlocks-skill-by-skill)
**发布时间**：2026-10-06
**相关企业/机构**：Agility Robotics、Churchill Capital Corp XI
**技术亮点**：
- Digit 5 启动时物料成本（BOM）约 15 万美元，高于 Digit 4 的约 12.5 万美元；量产达 1000 台/年后 RaaS 毛利率可超 70%
- 3 亿美元、1000 台订单采用分批解锁机制：每验证一个用例释放一批机器人，3 年服务分摊至 4 年
- 早期访问机型 2027 年上半年交付，通用可用（GA）延至 2027 年底至 2028 年初；S-4 文件此前指向 2026 年底发布
- 阶段：试点测试（已部署于 Schaeffler、GXO、Toyota Motor Manufacturing Canada、Mercado Libre 等客户现场）

---

## 3. Boston Dynamics 任命亚马逊前 AI 高管 Rohit Prasad 为 CEO
**分类**：商业动态
**摘要**：波士顿动力10月6日宣布任命亚马逊 Alexa 与 AGI 前高级副总裁 Rohit Prasad 为 CEO，10月7日履新，旨在加速 AI 与机器人融合及物理 AI 商业化。
**来源**：[Boston Dynamics / Business Wire](https://www.morningstar.com/news/business-wire/20261006372029/boston-dynamics-appoints-rohit-prasad-as-chief-executive-officer)
**发布时间**：2026-10-06（任命10月7日生效）
**相关企业/机构**：Boston Dynamics、现代汽车集团、亚马逊
**技术亮点**：（商业动态，技术参数不适用）
- Prasad 在亚马逊任职 12 年，主导 Alexa 语音助手及 Amazon Nova 基础模型家族的创建
- 波士顿动力希望借助其 AI 经验强化物理 AI 竞争力，推进 Atlas 等产品商业化落地
- 阶段：企业管理层变动，属战略级商业动态

---

## 4. I-BFM: 首个面向人形-物体交互的行为基础模型，摔倒后仍保持89.3%成功率
**分类**：技术突破
**摘要**：同济大学、清华大学、浙江大学等团队提出 I-BFM，通过无监督强化学习学习人形-物体-接触耦合动力学的共享表征，单一策略即可执行携带、推动、踢击及任务链，在 Unitree G1 上完成真实世界验证。
**来源**：[arXiv:2610.06129](https://arxiv.org/abs/2610.06129)
**发布时间**：2026-10-05
**相关企业/机构**：同济大学、清华大学、浙江大学（Tsinghua、ZJU）
**技术亮点**：
- 据作者称是首个面向人形-物体交互的行为基础模型（BFM），无需任务特定策略优化即可通过 latent command 闭环执行交互
- Carry 任务标称成功率 94.3%，机器人摔倒后仍保持 89.3% 成功率，对比基于规划的 baseline 仅 1.3%
- 支持携带、推动、踢击、目标到达、运动跟踪、风格控制及长程任务链；在 Unitree G1 上验证多样 loco-manipulation、交互失败快速恢复与抗扰动
- 阶段：实验室阶段，已完成真实机器人部署

---

## 5. BiGym 2.0：面向 Unitree G1 的20项家庭操作基准，对比VLA/IL/RL/编码智能体
**分类**：技术发布
**摘要**：研究人员发布 BiGym 2.0，将 BiGym 适配至 Unitree G1，覆盖20项家庭 loco-manipulation 任务，提供每任务60条原生 VR 人类演示，并系统对比 VLA 微调、模仿学习、演示驱动 RL 及冷启动编码智能体。
**来源**：[arXiv:2610.07594](https://arxiv.org/abs/2610.07594)
**发布时间**：2026-10-06
**相关企业/机构**：Stephen James 团队（swirl-uk）
**技术亮点**：
- 20 项家庭操作任务，统一全身控制器用于演示与评估；每任务 60 条原生 VR 人类演示，含同步多视角与全身执行记录
- 同等机载视角、本体感觉与全身控制器条件下，VLA 微调取得9项任务均值最高；编码智能体（GPT-6 Astra、Claude Opus 5.5）在双臂到达上领先
- 跨工作空间堆叠仍为开放难题，π0.5 在 pick-box 上表现偏低，多物体运输对 IL/RL/编码智能体均困难
- 阶段：开源基准已发布，环境、演示与评估轨迹全部开源（github.com/swirl-uk/BiGym2）

---

## 6. iGPC: Generative Motion Priors for Object-Aware Humanoid Interaction
**分类**：技术突破
**摘要**：MBZUAI 团队提出 iGPC，将生成式预训练控制器（GPC）从通用人体运动扩展到全身人形-环境交互，通过条件化交互专家与感知驱动学生策略蒸馏，实现接触丰富真实环境中的可部署策略。
**来源**：[arXiv:2610.08120](https://arxiv.org/abs/2610.08120)
**发布时间**：2026-10-06
**相关企业/机构**：Mohamed bin Zayed University of Artificial Intelligence (MBZUAI)
**技术亮点**：
- 将 GPC 人体运动先验适配为以场景可供性线索与特权状态为条件的交互专家，学习到达物体、抓取环境支撑稳定、推动可移动物体等接触行为
- 提出保留预训练 GPC 策略的感知学生，通过结构化观测重建与先验输入校准实现从专家到感官输入的技能蒸馏
- 多项全身交互任务实验表明，大规模生成式人体运动先验为接触丰富真实环境中的人形交互策略提供有效基础
- 阶段：实验室阶段，已部署至真实机器人

---

## 7. Minerva Humanoids 获1000万美元种子轮融资，面向危险作业的半自主人形
**分类**：产品发布 / 融资
**摘要**：Minerva Humanoids 走出隐身模式，获 General Catalyst 领投的约1000万美元种子轮融资，推出面向油气与公共安全危险作业的半自主人形机器人 Roger，今年秋季启动首批付费试点。
**来源**：[GlobeNewsWire / Minerva Humanoids](https://www.globenewswire.com/news-release/2026/10/06/3375277/0/en/minerva-humanoids-emerges-from-stealth-with-10m-pre-seed-round-led-by-general-catalyst-to-build-humanoid-robots-for-the-world-s-most-dangerous-jobs.html)
**发布时间**：2026-10-06
**相关企业/机构**：Minerva Humanoids、General Catalyst
**技术亮点**：
- 融资约 1000 万美元，General Catalyst 领投，Long Journey Ventures 与 Credo Ventures 共同领投，Hugging Face、RunwayVC 等参投
- 半自主人形机器人 Roger 围绕高技能专业人员的判断力、技能与灵巧度设计，允许其在安全距离外远程执行危险作业
- 聚焦陆上/海上油气作业与公共安全（如机场疑似爆炸物响应），首批付费试点定于 2026 年秋季启动
- 阶段：试点测试（2026 年秋季启动首批付费试点）

---

## 8. RoboParty 发布 RP1 人形机器人，规划全栈开源路线图
**分类**：产品发布 / 技术发布
**摘要**：RoboParty 在 IROS 2026 展示 RP1（ROBOTO 01）双足人形，演示扰动恢复，披露峰值关节扭矩160 N·m、Romomo 执行器模块与 PartyOS/UFO 训练框架，计划10月公布开源路线图、Q4启动量产。
**来源**：[humanoid.guide](https://humanoid.guide/roboparty-unveils-rp1-humanoid-with-full-stack-open-source-plans/)
**发布时间**：2026-10-06（IROS 首发为9月28日）
**相关企业/机构**：RoboParty（美国匹兹堡）
**技术亮点**：
- 峰值关节扭矩达 160 N·m，采用自研 Romomo 执行器模块与实时运动控制系统
- PartyOS 集成 UFO 训练框架，基于无监督强化学习发现人形运动技能，覆盖技能过渡、扰动恢复与摔倒恢复，无需预定义运动轨迹
- 计划 2026 年 10 月公布开源路线图（运动控制系统、仿真环境、SDK、训练工具、PartyOS 基础），Q4 启动更广泛软硬件发布与量产项目
- 阶段：原型展示阶段，开源与量产规划中

---

## 9. PhoneBot: 复用智能手机的低成本开源人形机器人平台
**分类**：技术发布
**摘要**：UCLA RoMeLa 实验室提出 PhoneBot，将商用智能手机作为主要感知与计算单元，配合13个低成本执行器的模块化下半身，实现稳定行走、视觉人体跟随、对话交互与远程临场，软硬件全部开源。
**来源**：[arXiv:2610.08737](https://arxiv.org/abs/2610.08737)
**发布时间**：2026-10-06
**相关企业/机构**：UCLA Robotics and Mechanisms Laboratory (RoMeLa)
**技术亮点**：
- 复用智能手机的 IMU、摄像头、无线连接与板载处理能力作为主感知与计算单元，降低硬件成本并简化系统架构
- 模块化下半身由 13 个低成本执行器驱动， torso 搭载智能手机负责感知、控制计算与用户交互
- 实验验证可靠行走、感知驱动交互，支持视觉人体跟随、对话交互、拍摄与移动远程临场；软硬件设计完全开源（phonebot.dev）
- 阶段：实验室阶段，开源平台已发布

---

## 简要总结
- **学术端集中爆发**：10月6日 arXiv 同期上线 QF3、iGPC、PhoneBot、BiGym 2.0 四篇人形方向论文，覆盖强化学习训练效率、运动先验迁移、低成本硬件平台与操作基准，技术密度显著高于产业端。
- **量产经济性成产业焦点**：Agility 投资者日首次披露 Digit 5 的 BOM（15万美元）与订单分批解锁机制，将人形量产话题从"能不能造"推进到"造多少台能盈利"，RaaS 毛利率与产能爬坡节奏成为核心指标。
- **AI 高管入主头部机器人公司**：波士顿动力任命亚马逊 Alexa/Nova 负责人为 CEO，标志硬件出身的机器人公司加速向"AI + 商业化"转型，物理 AI 的竞争焦点从本体能力转向软件与数据闭环。
- **危险作业场景获资本青睐**：Minerva Humanoids 以1000万美元种子轮聚焦油气与公共安全，叠加 Agility 的仓储制造部署，人形落地正从通用场景向高价值、高风险垂直行业渗透。
- **国内动态受国庆假期影响偏淡**：10月1-7日国庆假期期间国内产业端资讯稀缺，仅纳入同济大学/清华/浙大团队的 I-BFM 学术成果；预计假期后国内头部企业（宇树、智元、优必选等）动态将恢复。
