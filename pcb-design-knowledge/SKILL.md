---
name: pcb-design-knowledge
version: 1.0.2
description: PCB设计知识库 - 涵盖原理图设计、PCB布局、高速信号完整性、EMC/EMI、DFM/DFT、热设计、可靠性分析、EDA工具与自动化集成
author: PCB Design Knowledge Base
language: zh-CN
last_updated: 2026-09-22
tags:
  - PCB设计
  - 高速设计
  - 信号完整性
  - 电源完整性
  - EMC
  - DFM
  - DFT
  - 热设计
  - 可靠性
  - EDA工具
  - 嘉立创EDA
  - Altium
  - KiCad
  - AI辅助设计
  - DDR5
  - PCIe
  - SiC
---

# PCB 设计知识库 v1.0.2

## 概述

本知识库系统化整理 PCB 设计全流程知识，涵盖从原理图设计、PCB 布局布线、高速信号完整性（SI）、电源完整性（PI）、电磁兼容性（EMC）、可制造性设计（DFM）、可测试性设计（DFT）、热设计、可靠性分析，到 EDA 工具使用与自动化集成的完整知识体系。

知识库版本：**v1.0.2**
最后更新：**2026-09-22**
更新次数：**3**

---

## 知识路由表

| 知识领域 | 对应文件 | 核心内容 | 适用阶段 |
|---------|---------|---------|---------|
| 原理图设计 | [design.md](design.md) | 设计流程、层次化设计、BOM管理、AI就绪工作流 | 设计初期 |
| PCB布局布线 | [design.md](design.md) | 层叠设计、布局策略、布线规则、差分对、长度匹配 | 布局布线阶段 |
| 高速SI/PI/EMC | [design.md](design.md) | 信号完整性、电源完整性、EMC设计、DDR5/PCIe布局 | 高速设计 |
| DFM/DFT/DFA | [design.md](design.md) | 可制造性、可测试性、可装配性设计 | 设计中后期 |
| 热设计 | [design.md](design.md) | 热管理策略、重铜设计、DBC基板、SiC/GaN热设计 | 功率设计 |
| 检查清单 | [check.md](check.md) | ERC检查、DRC检查、常见陷阱、最佳实践、最终检查 | 设计验证 |
| 设计评审 | [review.md](review.md) | 评审流程、技能矩阵、EDA工具对比、嘉立创EDA技巧 | 评审阶段 |
| 分析理论 | [analyze.md](analyze.md) | 电路理论、电磁学、控制理论、数学工具、热分析、可靠性 | 理论基础 |
| 工具集成 | [integrate.md](integrate.md) | JLCPCB/LCSC API、嘉立创EDA API、KiCad自动化、AI辅助设计 | 自动化 |

---

## 快速参考

### EDA 工具版本速查（2026年9月）

| 工具名称 | 当前版本 | 发布日期 | 适用场景 |
|---------|---------|---------|---------|
| Altium Designer | 26.10.1 | 2026-09-09 | 企业级高端PCB设计 |
| 嘉立创EDA专业版 | v3.2.84 | 2026-01-27 | 国产主流、云端协同 |
| 嘉立创EDA客户端 | 4.1.60 | - | Windows x64/arm64 离线使用 |
| KiCad | 10.x | 2026 | 开源EDA、BOM/CPL导出 |
| Cadence Allegro | - | - | 超大规模高速PCB |
| Cadence AuraStack AI | - | 2026 | AI驱动PCB与先进封装 |

### 嘉立创EDA 用户数据（2026年6月）

- 注册用户：**736.88万**
- 硬件项目数：**5593.49万**
- 版本更新节奏：年度大版本（V4 预计明年发布）

### 常用阻抗参考值

| 信号类型 | 单端阻抗 | 差分阻抗 | 备注 |
|---------|---------|---------|------|
| DDR5 Addr/Cmd | 50Ω | - | 单端信号 |
| DDR5 Data Strobe | - | 80-100Ω（典型85Ω） | 差分对 |
| PCIe 差分对 | - | 85Ω±10% | 高速串行 |
| USB 3.x | - | 90Ω±15% | 高速差分 |
| HDMI 2.1 | - | 100Ω±10% | TMDS差分 |
| 通用高速信号 | 50Ω | 100Ω | 行业默认 |

### AI 辅助设计工具速查（2026 更新）

| 工具名称 | 开发者 | 功能定位 | 输出格式 |
|---------|-------|---------|---------|
| pcbGPT | 学术研究（arxiv） | 自然语言到原理图自动综合 | KiCad 原理图 |
| GPT-6 Astra | 生成式AI | 自然语言直接生成 KiCad 原理图 | KiCad 原理图 |
| Cadence AuraStack AI Super Agent | Cadence + Nvidia | PCB与先进封装全流程AI代理 | Cadence 工程 |
| Celus | Celus | 模块级电路自动生成 | 原理图 + 符号 |
| Synthelyzer ECAD 插件 | BQR | 自动化FMEA分析 | 可靠性报告 |

### 关键设计准则速记

- **3W 规则**：线间距 ≥ 3倍线宽，减少串扰（高速设计需通过串扰分析验证）
- **20H 规则**：电源层内缩 20倍介质厚度，减少边缘辐射
- **5XW 规则**（PCIe）：高速差分信号距参考平面边缘 ≥ 5倍线宽或5倍参考平面高度（取较大值）
- **4XRPH 规则**（PCIe）：距参考平面空洞 ≥ 4倍参考平面高度
- **λ/20 规则**：板边缝合过孔间距 < 最高频率波长的 1/20
- **10Ω-100Ω 串联电阻**：协议允许时用于阻尼快速边沿

---

## 设计流程总览

```
需求分析 → 方案设计 → 原理图设计 → 器件选型 → PCB布局 → 约束设置
    ↓
制造输出 ← DFM/DFT检查 ← DRC/ERC ← 布线 ← 仿真验证 ← 布线
```

### 各阶段关键输出物

| 阶段 | 关键输出 | 检查项 |
|-----|---------|-------|
| 需求分析 | 需求规格书、功能框图 | 接口定义、功耗估算、约束清单 |
| 原理图设计 | 原理图、BOM表 | ERC检查、电源完整性初评、信号分类 |
| PCB布局 | 布局文件、层叠设计 | 布局评审、热分布初评、关键路径规划 |
| 布线 | 布线文件、约束报告 | DRC检查、SI/PI仿真、EMC预评估 |
| 制造输出 | Gerber、BOM、坐标文件、钢网文件 | DFM检查、DFT检查、最终评审 |

---

## 来源索引

### 主要数据源

| 来源 | 类型 | 覆盖领域 | 版本/时间 |
|-----|------|---------|----------|
| lcsc.com | 电商/技术 | 元器件选型、BOM管理 | 2026 |
| pcbsync.com | 技术博客 | 原理图最佳实践 | 2026 |
| pcbway.com | 制造服务 | DFM指南 | 2026 |
| advancedpcb.com | 技术网站 | 高级PCB设计 | 2026 |
| leadsintec.com | 技术网站 | 高速SI/PI/EMC | 2026 |
| han-sphere.com | 技术博客 | EMC设计 | 2026 |
| jlcpcb.com | 制造服务 | DFM/制造工艺 | 2026 |
| ultralibrarian.com | 库资源 | 元器件库 | 2026 |
| pcbrunner.com | 技术博客 | PCB设计技巧 | 2026 |
| dexpcb.com | 制造服务 | DFM/DFT | 2026 |
| suga-pcba.com | 制造服务 | PCBA工艺 | 2026 |
| topfastpcb.com | 制造服务 | 高速PCB制造 | 2026 |
| flj-pcb.com | 制造服务 | PCB制造 | 2026 |
| microncorp.com | 半导体 | 存储器件设计指南 | 2026 |
| altium.com | EDA厂商 | Altium Designer | 26.10.1 / 2026-09-09 |
| prodocs.lceda.cn | EDA文档 | 嘉立创EDA专业版 | v3.2.84 / 2026-01 |
| lceda.cn | EDA平台 | 嘉立创EDA | 2026 |
| jlcgroup.cn | 集团官网 | 嘉立创集团 | 2026 |
| open.jlc.com | 开放平台 | JLCPCB API | 2026-09 |
| morepcb.com | 技术网站 | 热设计/重铜 | 2026 |
| andwinpcb.com | 制造服务 | 重铜PCB | 2026 |
| anypcba.com | 制造服务 | PCBA热设计 | 2026 |
| hitop-tech.com | 技术网站 | SiC/GaN热设计 | 2026 |
| bqr.com | 可靠性工具 | FMEA/MTBF | 2026 |
| ultroniu.com | 技术博客 | 可靠性/DDR5 | 2026 |
| trigopi.com | 技术网站 | 可靠性分析 | 2026 |
| ti.com | 半导体 | 接口设计指南 | 2026 |
| hilelectronic.com | 技术博客 | DDR/PCIe布局 | 2026 |
| ugpcb.com | 技术网站 | AI辅助PCB设计 | 2026 |
| arxiv.org | 学术论文 | pcbGPT研究 | 2026 |
| cadence.com | EDA厂商 | AuraStack AI | 2026 |
| siemens.com | EDA厂商 | AI设计工具 | 2026 |

---

## 版本信息

- **当前版本**：v1.0.2
- **上一版本**：v1.0.1
- **更新历史**：详见 [CHANGELOG.md](CHANGELOG.md)
- **元数据**：详见 [_meta.json](_meta.json)
