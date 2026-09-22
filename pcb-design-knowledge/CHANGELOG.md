# Changelog

All notable changes to the PCB Design Knowledge Base will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/lang/zh-CN/).

---

## [1.0.2] - 2026-09-22

### Added

**AI 辅助设计**
- 新增 GPT-6 Astra：自然语言**端到端**直接生成 KiCad 原理图（无需中间 DSL）
- 新增 GPT-6 Astra 与 pcbGPT 对比（中间表示 / 输出 / 成熟度）
- 新增 GPT-6 Astra 集成方式与评审注意点（生成结果缺少规则溯源、需对照 datasheet 复核）

**EDA 工具**
- 补充 Altium Designer 26.10.1 新增 Rule Sets（规则集）功能：
  - 规则分组管理、一键应用、Force Batch Check 批量检查、模板复用共享
  - 评审影响：规则集覆盖完整性、信号属性匹配、复用前核对时序/阻抗

**高速设计**
- 补充 PCIe 5.0 应用要点：信号速率 32 GT/s、奈奎斯特约 16 GHz、低损耗板材（Megtron6 类）
- 补充 DDR5 训练（Training）依赖说明

**检查清单**
- 新增 AI 工具补充验证检查项（7.4）：自然语言输入审计、规则溯源、全流程审计等

### Changed

**SKILL.md**
- 版本号从 1.0.1 更新为 1.0.2
- last_updated 更新为 2026-09-22
- 新增 GPT-6 Astra 到 AI 辅助设计工具速查表
- 补充 Altium 26.10.1 Rule Sets 功能说明

**design.md**
- 新增 Altium 26.10.1 Rule Sets 功能说明（DDR4/Ethernet 规则组管理、Force Batch Check）
- 新增 PCIe 5.0 32 GT/s 高速设计要点（低损耗板材选择）
- 补充 DDR5 训练依赖说明

**review.md**
- 新增 GPT-6 Astra 到主流 EDA 工具概览表
- 新增 3.4 Altium 26.10.1 Rule Sets 新特性小节
- 新增 5.3 GPT-6 Astra 小节与 5.5 AI 工具能力对比（四列）
- AI 工具能力对比表扩充至 pcbGPT / AuraStack / Celus / GPT-6 Astra

**integrate.md**
- 新增 6.2 GPT-6 Astra 端到端原理图生成小节
- AI 辅助设计工作流集成架构补充 GPT-6 Astra
- AI 工具选型建议补充 GPT-6 Astra

**check.md**
- 新增 7.4 AI 工具补充验证检查项

**_meta.json**
- version 更新为 "1.0.2"
- last_updated 更新为 "2026-09-22T08:35:00Z"
- update_count 更新为 3
- 新增 tags：GPT-6、Rule Sets
- 新增数据源：altium.com、prodocs.lceda.cn 等

---

## [1.0.1] - 2026-09-22

### Added

**原理图设计**
- 新增 AI 就绪工作流：MPN 元数据标注、结构化原理图要求、可追溯性设计
- 新增高速原理图结构设计：电源域分离原则、差分对定义、长度匹配约束、层次化设计策略
- 新增调试与可测试性设计：测试点放置、串联阻尼电阻、调试接口
- 新增"先画功能框图"设计方法：明确功能、接口、电源域、约束

**高速 SI/PI/EMC**
- 新增约束驱动设计方法论：电气约束、物理约束、制造约束三大类
- 新增 EMC 防护环设计：时钟/振荡器周围接地防护环规范
- 新增板边缝合过孔：λ/20 间距规则、法拉第笼结构
- 新增高速过孔返回地过孔设计要求
- 新增电源入口去耦配置规范

**PCB 布局布线**
- 新增十层 PCB 布线规则：层分配、转换次数、过孔结构、对内 skew、走线间距、测试接入、AC 耦合七大规则
- 新增走线间距由串扰分析推导的理念（超越 3W 口号）
- 新增测试结构验证要求

**DFM/DFT/DFA**
- 新增 DFT（可测试性设计）完整章节：可控性与可观测性核心理念
- 新增 DFA（可装配性设计）维度：元件间距、焊盘设计、极性标记、散热焊盘、BGA逃逸、焊接可达性、检测可见性
- 完善 DFM 检查项目与工艺参数

**热设计**
- 新增加重铜设计（2 oz 至 4 oz）：横向热分布应用
- 新增 DBC（直接覆铜）基板：结构、材料、优势、应用场景
- 新增 SiC 器件热设计：衬底热导率 120-170 W/m·K、结温超 175°C、热阻参考值
- 新增 GaN 器件热设计：小面积热点、热扩散挑战、底部散热
- 新增 TO-247/TO-220/半桥模块热阻参考数据
- 新增高开关频率对无源器件小型化的影响

**DDR5/PCIe 布局**
- 新增 PCIe 5XW 规则：高速差分信号距参考平面边缘 ≥ 5倍线宽或 5倍参考平面高度（取较大值）
- 新增 PCIe 4XRPH 规则：距参考平面空洞 ≥ 4倍参考平面高度
- 完善 DDR5 5600 阻抗要求：Addr/Cmd 50Ω单端、DQS 80-100Ω差分（典型85Ω）
- 新增 DDR Fly-by 与 T-branch 拓扑对比
- 完善 PCIe 布局要点

**可靠性分析**
- 新增自动化 FMEA 分析工具（Synthelyzer ECAD 插件）
- 新增 MTBF 预测方法：Telcordia 3 Parts Count / Parts Stress、MIL-217-F2
- 新增 Parts Stress 方法基于电气与热应力数据
- 新增 EOS（电过应力）概念：与 ESD 的区别、来源、防护设计
- 新增可靠性指标关系表：可靠度、MTBF、失效率、任务可靠度
- 新增 GJB 450A 和 GJB 9001C 军用标准引用
- 新增威布尔（Weibull）分布分析
- 新增降额设计管理规范

**EDA 工具**
- 更新 Altium Designer 版本至 26.10.1（发布日期 2026-09-09）
- 更新嘉立创EDA专业版至 v3.2.84（更新于 2026.01.27）
- 更新嘉立创EDA客户端至 4.1.60（支持 Windows x64/arm64）
- 新增嘉立创EDA用户数据：736.88万注册用户、5593.49万硬件项目（2026年6月）
- 新增嘉立创EDA V4 版本预告（年度大版本规则）
- 新增多用户实时协作、深色模式特性说明

**AI 辅助设计**
- 新增 pcbGPT：自然语言到原理图自动综合、Python DSL、KiCad输出
- 新增 Cadence AuraStack AI Super Agent：业界首个 Agentic AI 平台、Nvidia Blackwell + CUDA-X
- 新增 Celus：模块级电路 AI 解决方案
- 新增 AI 辅助设计工具对比表
- 新增 AI 辅助设计评审检查项：原理图验证、布局验证、仿真验证
- 新增 AI 时代工程师角色转变分析
- 新增 AI 硬件可靠性设计 12 条规则

**JLCPCB/LCSC API**
- 更新 JLCPCB Online API 最后更新时间：2026年9月9日
- 新增开放平台地址：https://open.jlc.com
- 新增 KiCad 10 BOM 与 CPL 导出指南（2026更新）
- 新增 API 技术支持团队信息

**检查清单**
- 新增 DFT 可控性检查清单（7项）
- 新增 DFT 可观测性检查清单（7项）
- 新增测试点几何与治具检查清单（7项）
- 新增功能测试接入检查清单（5项）
- 新增 SiC 器件热设计验证清单（7项）
- 新增功率器件电气验证清单（6项）
- 新增 GaN 器件专项检查清单（4项）
- 新增 AI 生成原理图检查清单（7项）
- 新增 AI 辅助布局检查清单（5项）
- 新增 AI 仿真与分析检查清单（4项）

### Changed

**SKILL.md**
- 版本号从 1.0.0 更新为 1.0.1
- last_updated 更新为 2026-09-22
- 更新 EDA 工具版本速查表（Altium 26.10.1、嘉立创EDA v3.2.84/客户端4.1.60）
- 新增 AI 辅助设计工具速查表（pcbGPT、Cadence AuraStack AI、Celus、Synthelyzer）
- 新增 5XW 规则、4XRPH 规则、λ/20 规则到快速参考
- 新增 20+ 个数据源到来源索引
- 更新 tags 列表，新增 SiC、GaN、DBC、重铜、FMEA、MTBF、威布尔、EOS、GJB、pcbGPT、AuraStack 等标签

**design.md**
- 第一章"原理图设计"扩充：新增 AI 就绪工作流、高速原理图结构设计、调试与可测试性设计小节
- 第二章"PCB布局布线"扩充：新增十层 PCB 布线规则小节
- 第三章"高速SI/PI/EMC"扩充：新增约束驱动方法论、防护环与板边缝合、电源入口去耦等内容
- 第四章"DFM/DFT"扩充为"DFM/DFT/DFA"：新增 DFA 设计维度
- 第五章"热设计"大幅扩充：新增加重铜、DBC基板、SiC器件、GaN器件等小节
- 第六章"DDR5/PCIe布局规范"扩充：新增 5XW/4XRPH 规则、Fly-by vs T-branch 拓扑对比
- 新增第七章"AI 硬件可靠性设计要点"：12条可靠性设计规则

**check.md**
- 全文结构优化，按 ERC、DRC、DFM、DFT、SiC热验证、常见陷阱、AI评审、最终检查组织
- 新增 DFT 可测试性检查完整章节
- 新增 SiC/功率器件热验证检查完整章节
- 新增 AI 辅助设计评审检查项完整章节

**review.md**
- 更新 EDA 工具对比表：Altium 26.10.1、嘉立创EDA v3.2.84/客户端4.1.60、KiCad 10.x
- 更新嘉立创EDA版本信息与用户数据
- 新增嘉立创EDA核心功能亮点（离线功能、拼板、3D建模、多人协作、深色模式）
- 新增第五章"AI 辅助设计工具"（pcbGPT、Cadence AuraStack AI、Celus）
- 新增第六章"AI 辅助设计评审要点"（质量评估、工作流、角色转变）

**analyze.md**
- 第五章"热分析理论"扩充：新增 SiC 衬底热导率数据（120-170 W/m·K）
- 新增 DBC 基板热特性小节：各类型 DBC 热阻参考值表
- 第六章"可靠性分析"扩充：
  - 新增可靠性指标关系表
  - 新增 GJB 450A 和 GJB 9001C 标准引用
  - 新增威布尔分布分析
  - 新增 EOS（电过应力）完整小节
  - 新增自动化 FMEA 工具介绍
  - 新增降额设计管理

**integrate.md**
- 更新 JLCPCB 开放平台信息（2026年9月9日更新）
- 更新嘉立创EDA API 版本信息（v3.2.84 / 客户端 4.1.60）
- 新增 KiCad 10 新特性与 BOM/CPL 导出指南（2026更新）
- 新增第六章"AI 辅助设计集成"：
  - pcbGPT Python DSL 工作原理与集成方式
  - Cadence AuraStack AI 平台架构与能力
  - AI 辅助设计工作流集成架构
  - AI 辅助设计工程实践原则

**_meta.json**
- version 更新为 "1.0.1"
- last_updated 更新为 "2026-09-22T00:00:00Z"
- update_count 更新为 2
- 新增 10+ 个数据源
- 新增 10+ 个标签
- modules 描述同步更新

---

## [1.0.0] - 2026-09-21

### Added

- 初始版本发布
- SKILL.md：知识库主入口，路由表与快速参考
- design.md：原理图设计、PCB布局、高速SI/PI/EMC、DFM、热设计、DDR5/PCIe
- check.md：ERC检查、DRC检查、常见陷阱、最佳实践、最终清单
- review.md：设计评审流程、技能矩阵L1-L4、EDA工具对比、嘉立创EDA技巧
- analyze.md：电路理论、电磁学、控制理论、数学工具、热分析、可靠性基础
- integrate.md：JLCPCB/LCSC API、嘉立创EDA API、KiCad自动化、Altium脚本、开源工具
- _meta.json：元数据文件
- CHANGELOG.md：变更日志
