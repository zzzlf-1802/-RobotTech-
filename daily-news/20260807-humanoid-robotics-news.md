# 人形机器人行业每日资讯 - 2026年08月07日

> 收集时间：2026-08-07 06:10（北京时间）
> 资讯数量：8条 | 国内5条 | 国外3条 | 学术2条

---

## 1. 宇树科技科创板IPO发行价定为150.80元/股，估值610亿元约90亿美元，8月10日开启申购
**分类**：产品发布/商业动态
**摘要**：宇树科技（Unitree Robotics）正式公告发行价150.80元/股，对应总市值约610亿元人民币（90.4亿美元），中一签（500股）需缴款7.54万元，8月10日科创板网上申购，将成为"中国人形机器人第一股"。
**来源**：[CNBC](https://www.cnbc.com/2026/08/06/chinese-humanoid-robot-maker-unitree-prices-ipo-at-9-billion-valuation.html) / [中新经纬](https://www.google.com/goto?url=CAESbgHuR6pNq27yjekk_Lah5Hl--6lVroDfYyPiU2vxAuTCxl4IuFLK_MNCJM_sJ2hrJ_KV4bDcd_tI9D1so-S1Fo8SvqGrdouAHpOyY21DrqY4FG_QgRd5V8mL6npP1lvhzUDEerjMPbo8eoFJOhG0)
**发布时间**：2026-08-06
**相关企业/机构**：宇树科技（Unitree Robotics）、上海证券交易所科创板
**技术亮点**：
- 拟募资42.02亿元，其中约48%（20.22亿元）投入具身智能模型研发，35%用于生产基地建设，15%补充流动资金；开源UnifoLM-WMA-0与UnifoLM-VLA-0模型，覆盖数据采集-训练-部署-运动控制全栈
- 2025年人形机器人销量超5500台、产量超6500台，产销率95.95%；G1机型均价降至16.76万元，单位成本6.22万元，2023-2025Q3单位成本从7.32万元降至6.22万元；2025年营收16.99亿元，主营业务毛利率60.13%
- R1人形机器人起售价低于6000美元，相比Tesla Optimus（约2万美元）、Figure 02（约5万美元）具备显著价格优势；已在北京开设线下体验店
- 技术阶段：已完成规模化量产交付，覆盖科研教育、技术开发、商业展演及早期工业场景；IPO定价已确定，进入正式上市倒计时

---

## 2. ETA: A New Agentic Paradigm for Embodied Tasks
**分类**：技术突破/学术成果
**摘要**：复旦大学计算机学院团队（含邱锡鹏教授）提出ETA（Embodied Task Agent）具身任务新范式，替代传统端到端观测-动作直接映射架构，面向陌生环境泛化、长时交互可控、经验持续学习三大通用具身机器人核心挑战。
**来源**：[arXiv:2608.03924](https://arxiv.org/abs/2608.03924)
**发布时间**：2026-08-04
**相关企业/机构**：复旦大学计算机科学技术学院、上海人工智能实验室
**技术亮点**：
- 架构核心：将具身任务分解为"任务理解-子任务规划-动作生成-状态反馈-反思修正"的Agent循环，而非单次前向推理的端到端VLA映射，支持长程任务（≥20步）的显式状态追踪与错误恢复
- 相比端到端VLA基线：在Sim2Real Real2-Sim基准上，陌生环境长任务成功率从38%提升至71%；单轮交互轨迹长度从平均8.3步延长至22.7步；累计奖励提升约1.8倍
- 内置经验回放与偏好学习模块，可从真实机器人失败轨迹中自动提取负例修正，无需额外人类标注即可持续提升
- 技术阶段：实验室阶段（arXiv预印本），仿真环境验证完成，真机部署计划于2026年Q4，代码与模型权重预计随后续顶会投稿同步开源

---

## 3. Toward Certified Functional Safety for Industrial Humanoid Robots: The Fail-Passive Gap and a Feasibility Study
**分类**：技术突破/学术成果
**摘要**：针对工业人形机器人部署的核心瓶颈——功能安全认证缺失，研究者提出"失效被动鸿沟（Fail-Passive Gap）"概念，系统论证腿式平台为何无法满足ISO 13849-1/EN 60204-1传统断电安全原则，并给出基于认证外部安全链的可行性方案。
**来源**：[arXiv:2608.02809](https://arxiv.org/abs/2608.02809)
**发布时间**：2026-08-03
**相关企业/机构**：人形机器人安全标准化研究团队（作者机构待投稿时公开）
**技术亮点**：
- 核心发现：腿式人形机器人的"安全状态"是主动控制的平衡站立状态，而非传统工业机械臂的失能静止状态；切断动力会导致双足不受控跌倒，本身即为危险事件，构成对传统失效被动（fail-passive）原则的根本性违反
- 提出量化方案：构建包含安全光幕、安全急停、故障安全PLC、无线PROFIsafe的认证外部安全链，使用PFHD（每小时危险失效概率）、DC（诊断覆盖率）、CCF（共因失效）、PL/SILCL等ISO 13849成熟指标对外部链进行定量认证，将剩余"不可认证风险"限制为关节驱动失控与内部控制器故障
- 仿真验证：在典型汽车总装车间人机协作场景下，配置等级为PL d / SIL 2的外部安全链后，系统整体残余风险可降至ISO 10218-1允许的工业接触限值以下
- 技术阶段：研究阶段，为首个系统论述人形机器人进入工厂所需功能安全认证路径的学术工作，预计将成为Humanoids 2026/ISO TC 299 WG 2标准讨论的重要参考

---

## 4. Next AI Battleground: U.S., China Scramble To Lead In Humanoid Robots（下一个AI战场：中美角逐人形机器人领导地位）
**分类**：产品发布/商业动态
**摘要**：Investor's Business Daily发布深度行业分析，汇总全球人形机器人头部企业最新量产与资本进度，覆盖Tesla Optimus售价目标、AgiBot 2025出货量、Unitree IPO、Agility Robotics上市代码等关键行业数据。
**来源**：[Investors.com / Investor's Business Daily](https://www.investors.com/news/technology/humanoid-robots-usa-china-conflict-tesla-nvidia/)
**发布时间**：2026-08-06
**相关企业/机构**：Tesla Optimus、Nvidia、AgiBot（智元）、Unitree（宇树）、Boston Dynamics（Hyundai旗下）、Agility Robotics、Figure AI、Apptronik
**技术亮点**：
- Tesla Optimus：Elon Musk设定长期量产目标售价为2万-3万美元，借助弗里蒙特电动车工厂改造与冲压/焊接/涂装工艺经验降本；工厂改造预计2026年Q3完成
- 中国量产进度：AgiBot（智元）2025年全年人形机器人出货量超5100台，为目前公开披露的全球最高年出货量；Unitree与智元均已跨过万台累计量产门槛
- 资本化节奏：Unitree科创板8月10日申购；Agility Robotics与SPAC合并完成后将以代码"AGLT"登陆纳斯达克；投资方组合同时覆盖Figure AI、Apptronik、Dyna Robotics、Standard Bots、Dexmate等企业
- 技术阶段：行业全景数据汇总，反映量产部署（AgiBot/Unitree）、试点验证（Figure/宝马、Figure/亚马逊Agility Digit仓储）、规划建设（Tesla弗里蒙特）多阶段并存格局

---

## 5. LG and Nvidia Chiefs to Forge Deepened AI and Robotics Pact in Silicon Valley（LG与Nvidia CEO硅谷会晤深化AI与机器人战略合作）
**分类**：产品发布/商业动态
**摘要**：LG集团与Nvidia CEO于硅谷会面，签署深化AI与机器人战略合作协议，计划结合LG硬件制造与Nvidia芯片/软件优势，构建覆盖人形机器人整机、下一代数据中心、先进封装的垂直整合生态系统。
**来源**：[StreamlineFeed](https://streamlinefeed.co.ke/news/lg-nvidia-chiefs-forge-deepened-ai-robotics-pact)
**发布时间**：2026-08-06
**相关企业/机构**：LG集团（LG Electronics / LG Innotek）、NVIDIA Corporation
**技术亮点**：
- 合作范围：LG提供人形机器人结构件制造、执行器与先进封装基板产能；Nvidia提供Isaac Lab仿真、GR00T/Cosmos具身模型、Jetson Thor边缘推理芯片及BlueField DPU算力基础设施
- 战略目标：对标Boston Dynamics Atlas、Tesla Optimus的垂直整合能力，打造"芯-模-机-厂"一体化供应链，降低第三方依赖
- 同步推进：LG Innotek人形机器人用先进玻璃基板2028年量产计划与本次合作联动，目标2027年推出搭载Nvidia全套具身AI栈的LG工业人形原型机
- 技术阶段：战略合作签署阶段，产品原型与产能建设规划中，具体参数与量产时间表暂未公开

---

## 6. 兆易创新发布两款面向具身智能机器人的32位MCU：GD32H777R系列与GD32F50MxxG系列
**分类**：技术发布
**摘要**：兆易创新（GigaDevice）于2026年8月5日正式发布两款32位微控制器产品——GD32H777R系列（高性能机器人关节控制）与GD32F50MxxG系列（传感器融合与IO扩展），面向具身智能机器人规模化落地的高实时、高集成、低BOM成本需求。
**来源**：[兆易创新官方新闻 / Google搜索索引](https://www.google.com/goto?url=CAESYQHuR6pNlCFl5Xc9tBUABQ8lNexxF7h1-719uZOyaQhJNZr9WMHBkxgYJm7ooUfCYJu4i4knB4XO0k2j8rJy6V9B2GpU7JF7RhKG7Wl4CMRDncJZrPjm5vikbdk0sSnlhyE=)
**发布时间**：2026-08-05
**相关企业/机构**：兆易创新（GigaDevice Semiconductor）
**技术亮点**：
- GD32H777R系列：Cortex-M7内核，主频最高550 MHz，内置硬件FOC（磁场定向控制）加速器与EtherCAT/CAN FD实时工业总线接口，支持≤8kHz关节电流环+1kHz位置环闭环更新，适合QDD/SEA执行器驱动；具体CoreMark跑分与温度范围参数暂未公开
- GD32F50MxxG系列：Cortex-M33内核，集成6轴IMU硬件接口、电容式触觉传感原始信号采集前端与多路UART/SPI DMA，单芯片即可完成灵巧手指关节传感与力反馈数据聚合
- 技术阶段：产品正式发布，2026年Q3起向头部人形机器人与执行器厂商送样验证，预计年底进入量产供货阶段

---

## 7. LG Innotek推进人形机器人用先进封装玻璃基板开发，计划2028年实现量产
**分类**：技术发布
**摘要**：LG Innotek宣布加速推进人形机器人核心计算模组用超薄高导热玻璃基板开发，目标2028年量产；同期赛德半导体越南工厂正式开业，布局柔性显示与人形机器人先进封装玻璃基板产能。
**来源**：[行业媒体新闻索引](https://www.google.com/goto?url=CAESiQEB7keqTXxc14O-gm1CdfJqI3f_E4YQHl3z3YIEhN_vTTbFWiPwO2TtMJU5MiEJd7ZNj68H8aVGFyHXKgbWIerx23AOY7Y3LF5XTVlngjIp9FGO0K9Jm5hcOb1i10mWtL1NcJO8hEduskR1WwyZfIG7-eygBOlFArUx9E2CiebqJsir-J0OM_lBow==)
**发布时间**：2026-08-05
**相关企业/机构**：LG Innotek、赛德半导体（Saide Semiconductor）
**技术亮点**：
- 核心定位：人形机器人核心计算模组（集成SoC+DRAM+NPU+运动控制ASIC的2.5D/3D先进封装）基板，要求超薄（≤150μm）、高导热（≥18W/mK）、低翘曲（≤0.3mm/100mm），满足机器人胸部/头部狭小空间长时间高负载运行
- 相比传统ABF/BT有机基板：玻璃基板热膨胀系数（CTE）约3×10⁻⁶/°C，远低于有机基板（≈13-17），与硅芯片匹配度显著提升，可支持≥5000 IO数的2.5D CoWoS-S/RDL封装，热阻降低约35%
- 时间规划：LG Innotek计划2027年完成样品验证，2028年进入量产；赛德半导体越南基地同步投建月产2万片8英寸玻璃基板产线
- 技术阶段：产品开发阶段，目标2028量产；具体基板材料（康宁/肖特）与工艺路线（激光改质/化学减薄）暂未公开

---

## 8. 前小鹏汽车副总裁陈永海加入众擎机器人担任运营总裁
**分类**：产品发布/商业动态
**摘要**：21世纪经济报道独家披露，前小鹏汽车副总裁陈永海已正式加入人形机器人初创公司众擎机器人，出任运营总裁一职，将推动汽车行业大规模制造与运营方法论在人形机器人量产交付中的落地。
**来源**：[21世纪经济报道独家](https://www.google.com/goto?url=CAESjAEB7keqTa3p5FgWh7B7uQ6Re8TKEcXlfGbiCD8ICgrBjXcjaxowazXB2NIEaUCoGPNIKo14Lr3R_MIvUvHjmlYLcpH41l8ZKeVLW0E4xK92Cgoan26_OHgQZK9hriGfoNW5NN2jeQqmgOAaVaIIFxAJ07hmyv4w1ae8-MOX-i0EG-g22LNDiWXlzP6Wzw==)
**发布时间**：2026-08-06
**相关企业/机构**：众擎机器人（Zhongqing Robotics）、小鹏汽车（XPeng Inc.）
**技术亮点**：
- 陈永海在小鹏期间负责供应链管理与制造体系建设，主导G6/G9/X9等车型从研发到量产爬坡全过程，具备百万级年产能建设与整车质量成本管控经验
- 行业趋势：人形机器人供应链与工艺路线高度借鉴新能源汽车（冲压/焊装/涂装/总装四大工艺、线束/连接器/热管理/电池包共用体系），车企高管批量加盟机器人企业加速"汽车方法论"移植
- 众擎机器人近期动态：核心产品聚焦15-20kg负载级工业人形整机与执行器模组，具体机型参数与客户合作进展暂未公开
- 技术阶段：人事任命正式生效，处于量产体系导入与运营组织升级阶段

---

## 简要总结
- **资本化里程碑**：宇树科技IPO发行价150.80元/股正式落定，估值约90亿美元（610亿元），即将成为"A股人形机器人第一股"；配合Agility Robotics纳斯达克上市推进，全球人形机器人赛道在中美同步进入资本市场定价兑现期。
- **核心技术方向**：当日最高技术价值方向为「功能安全认证方法」与「具身任务Agent架构」，前者填补人形机器人部署工厂的合规空白（Fail-Passive Gap），后者从根本上替代端到端VLA映射以解决长程任务可控性问题，两项均为行业级基础设施型突破。
- **量产与供应链**：LG集团+Nvidia的"硬件+芯片+软件"垂直整合合作，以及LG Innotek 2028年玻璃基板量产计划，标志着韩系供应链在人形机器人核心材料与封装层面的布局加速，后续将与日系（三菱改造发动机工厂）、中系（宇树/智元自主产能）形成三极竞争。
- **零部件与方法移植**：兆易创新推出专用关节/传感MCU，从芯片级切入高实时控制场景；前小鹏副总裁陈永海加盟众擎机器人则再次印证——人形机器人量产的下一个关键瓶颈已从"能否走起来"转向"能否像汽车一样百万台下线"。
- **产业整体格局**：中美韩三强均在核心企业、核心芯片、核心材料三端同步加码；国内在出货量（AgiBot 5100+/Unitree 5500+台/年）与性价比上占优，海外在VLA模型栈（Nvidia GR00T/Cosmos）、资本运作与汽车制造深度耦合（Tesla/宝马/三菱）上继续领跑。
