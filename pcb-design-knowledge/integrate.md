# PCB 设计工具集成与自动化

> 本文档汇总 PCB 设计相关的 API、自动化脚本、开源工具与 AI 辅助设计集成方案，涵盖 JLCPCB/LCSC 开放平台、嘉立创EDA API、KiCad 自动化、Altium 脚本、开源工具链以及 AI 辅助设计接口。

---

## 一、JLCPCB / LCSC 开放平台

### 1.1 开放平台概览（2026年9月更新）

**平台信息**
- 开放平台地址：https://open.jlc.com
- JLCPCB Online API 最后更新：2026年9月9日
- 技术支持：提供专业技术支持团队协助 API 集成

**主要 API 分类**

| API 类别 | 功能描述 | 典型应用 |
|---------|---------|---------|
| PCB 打样下单 | PCB 订单创建、报价、进度查询 | 自动化打样、批量下单 |
| SMT 贴片 | 元件选型、BOM 匹配、贴片下单 | PCBA 一站式服务 |
| 3D 打印 | 3D 打印下单、材料选择 | 结构件快速原型 |
| 元器件信息 | 规格参数、库存、价格查询 | BOM 分析、成本估算 |
| 订单管理 | 订单状态、物流、发票 | ERP 集成 |

### 1.2 PCB 打样 API

**核心接口**
- 报价接口：上传 Gerber 获取报价
- 下单接口：创建 PCB 订单
- 进度查询：查询生产进度
- 物流查询：查询发货与物流信息

**典型工作流**
```
Gerber文件 → 上传解析 → 获取报价 → 确认参数 → 下单支付 → 生产跟踪 → 收货
```

**常用参数**
- 层数：2-20+ 层
- 板厚：0.4-3.2mm
- 板材：FR-4、CEM-1、铝基板等
- 表面处理：HASL、ENIG、OSP、硬金等
- 铜厚：1oz、2oz、3oz、4oz 等
- 阻焊颜色：绿、红、蓝、黑、白、黄等
- 特殊工艺：阻抗、盲埋孔、盘中孔等

### 1.3 SMT 贴片 API

**核心功能**
- BOM 智能匹配：自动匹配 LCSC 元器件
- 元件库存查询：实时库存与价格
- 贴片报价：BOM + 坐标文件 → SMT 报价
- 贴片下单：创建 PCBA 订单
- 钢网制作：钢网文件上传与下单

**BOM 匹配流程**
1. 上传 BOM 文件（Excel/CSV 格式）
2. 系统自动匹配 LCSC 料号
3. 人工确认或调整匹配结果
4. 检查库存与交期
5. 生成最终 BOM 与报价

### 1.4 元器件信息 API

**查询能力**
- 元器件基本信息：型号、品牌、封装、描述
- 规格参数：电气参数、物理参数
- 库存状态：实时库存数量
- 价格信息：阶梯价格、批量折扣
- 数据手册：datasheet 下载链接
- 替代料：推荐替代型号

**应用场景**
- BOM 成本自动核算
- 元器件选型对比
- 库存预警与替代推荐
- 供应链风险分析

### 1.5 API 集成实践

**认证方式**
- API Key 认证
- OAuth 2.0 授权
- IP 白名单（可选）

**SDK 与示例代码**
- Python SDK / 示例
- Node.js 示例
- Java 示例
- 详细的 API 文档与调试工具

**最佳实践**
- 使用批量接口减少请求次数
- 合理设置缓存策略
- 错误处理与重试机制
- 版本兼容性处理

---

## 二、嘉立创 EDA API

### 2.1 API 概览（2026年更新）

**版本信息**
- 嘉立创EDA专业版：v3.2.84（客户端 4.1.60）
- API 版本：随专业版同步更新
- 支持平台：Web 版 + 客户端

**API 能力范围**
- 项目管理：创建、打开、保存、导出
- 原理图操作：元器件、网络、标注操作
- PCB 操作：布局、布线、规则检查
- 库管理：元器件库查询与操作
- 输出文件：Gerber、BOM、坐标文件生成
- 协作功能：团队成员、权限管理

### 2.2 自动化应用场景

**批量处理**
- 批量修改器件属性
- 批量生成变体产品（不同配置）
- 批量 DRC 检查与报告生成

**数据集成**
- 与企业 PLM/ERP 系统对接
- BOM 自动同步到采购系统
- 设计数据自动归档

**定制工具**
- 自定义 DFM 检查规则
- 特殊器件自动布局
- 报告自动生成

### 2.3 嘉立创EDA 专业版特色功能

**内置自动化工具**
- BOM 导出：一键导出带 LCSC 料号的 BOM
- 坐标文件导出：标准格式贴片坐标
- Gerber 导出：工厂标准格式
- DFM 检查：内置 DFM 规则检查
- 一键下单：直接下单到 JLCPCB

**协作 API**
- 多人实时协作（v3.1 新增）
- 版本历史管理
- 评论与批注功能
- 权限精细化管理

---

## 三、KiCad 自动化（2026 更新）

### 3.1 KiCad 10 新特性（2026 新增）

**KiCad 10 主要更新**
- 改进的 Python API，更完整的功能覆盖
- 增强的布线引擎与推挤功能
- 更强大的 3D 预览
- BOM 与 CPL 导出指南更新（2026版）
- 更好的库管理与云同步
- 性能优化，支持更大规模设计

**BOM 与 CPL 导出（KiCad 10 指南更新 2026）**

**BOM 导出步骤**
1. 打开原理图编辑器（Eeschema）
2. 工具 → 生成 BOM
3. 选择 BOM 插件（推荐使用 CSV/Excel 格式）
4. 配置输出字段（序号、位号、数量、值、封装、MPN等）
5. 生成 BOM 文件

**CPL（元件位置列表）导出步骤**
1. 打开 PCB 编辑器（Pcbnew）
2. 文件 → 导出 → 元件位置文件
3. 选择单位（mm 或 mil）
4. 选择文件格式（CSV 或 TXT）
5. 配置输出列：Designator, Val, Package, Mid X, Mid Y, Rotation, Layer
6. 导出 CPL 文件

**JLCPCB SMT 要求的文件格式**
- BOM：包含位号、数量、描述、封装、LCSC 料号
- CPL：包含位号、X坐标、Y坐标、旋转角度、层（顶层/底层）
- 注意：嘉立创 SMT 要求 CPL 文件的原点与方向设置正确

### 3.2 KiCad Python API

**API 架构**
- pcbnew：PCB 编辑模块
- eeschema：原理图编辑模块
- kicad_netlist_reader：网表读取
- kicad_utils：通用工具函数

**常用自动化脚本示例**

**批量修改封装**
```python
# 概念示例：批量修改器件封装
import pcbnew

board = pcbnew.LoadBoard("example.kicad_pcb")
for module in board.GetModules():
    ref = module.GetReference()
    if ref.startswith("R") and module.GetFPID().GetLibItemName() == "0402":
        # 更换为 0603 封装
        pass
board.Save("output.kicad_pcb")
```

**自定义 DRC 检查**
```python
# 概念示例：自定义 DRC 规则
import pcbnew

board = pcbnew.LoadBoard("example.kicad_pcb")
# 自定义检查逻辑
# - 检查特定网络的线宽
# - 检查过孔间距
# - 检查测试点数量
```

**BOM 自定义导出**
```python
# 概念示例：自定义 BOM 导出
import kicad_netlist_reader

net = kicad_netlist_reader.netlist("example.net")
components = net.getInterestingComponents()
# 按自定义格式导出 BOM
# 包含 MPN、供应商、价格等字段
```

### 3.3 KiCad 插件生态

**常用插件**
- **InteractiveHtmlBOM**：交互式 HTML BOM，方便手工焊接
- **KiBuzzard**：标签与标识生成器
- **ReplicateLayout**：布局复用插件
- **Teardrops**：泪滴添加工具
- **RF Tools**：射频设计工具

**插件开发**
- Python 插件 API
- Action Plugin 框架
- 自定义对话框与界面

---

## 四、Altium Designer 脚本自动化

### 4.1 脚本能力概览

**支持的脚本语言**
- DelphiScript（Pascal 语法）
- VBScript
- JavaScript
- 推荐：DelphiScript（最完善的 API 支持）

**脚本可访问的功能**
- 原理图 API：SchObject、SchSheet、SchComponent
- PCB API：PCBObject、PCBComponent、Track、Via、Pad
- 项目管理 API：Project、Document
- 输出文件 API：Gerber、ODB++、BOM
- DRC/ERC API：规则检查与报告

### 4.2 典型应用场景

**批量处理**
- 批量更新器件参数
- 批量修改规则
- 批量生成输出文件

**设计检查**
- 自定义 DFM 检查
- 特殊规则验证
- 设计质量自动化评估

**数据导出**
- 自定义格式 BOM 导出
- 自定义坐标文件导出
- 与企业系统对接

### 4.3 Altium SDK

**SDK 功能**
- 服务器端许可管理
- 集中式库管理
- 设计数据管理
- 版本控制集成

**企业集成**
- PLM/ERP 系统对接
- 自定义工作流
- 自动化评审流程

---

## 五、开源工具链

### 5.1 EDA 开源工具

| 工具名称 | 功能 | 语言/平台 | 特点 |
|---------|------|----------|------|
| KiCad | 全流程 PCB 设计 | C++/Python | 最成熟的开源 EDA |
| gEDA | 原理图与仿真 | C/Linux | 传统开源 EDA 套件 |
| ngspice | 电路仿真 | C | SPICE 仿真引擎 |
| OpenROAD | 芯片布局布线 | C++ | 开源 IC 设计工具 |
| OpenEMS | 电磁仿真 | C++/Matlab | 有限差分电磁仿真 |
| FastHenry | 电感提取 | C/Fortran | 三维电感计算 |
| Fritzing | 面包板/PCB设计 | C++/Qt | 入门级、创客向 |

### 5.2 制造与分析工具

| 工具名称 | 功能 | 用途 |
|---------|------|------|
| FlatCAM | PCB 数控加工 | 生成 CNC G-code |
| GerbView | Gerber 查看 | 查看与检查 Gerber |
| PCBMod | PCB 建模 | 3D PCB 模型生成 |
| SimulAVR | AVR 仿真 | 单片机仿真 |
| Verilator | Verilog 仿真 | 数字电路仿真 |

### 5.3 自动化工作流示例

**CI/CD 集成 PCB 设计**
```
代码提交 → 自动 ERC/DRC 检查 → BOM 生成 → 报告输出 → 通知
```

**自动化打样工作流**
```
设计完成 → 自动导出 Gerber → 调用 JLCPCB API 报价 → 确认下单 → 跟踪进度
```

---

## 六、AI 辅助设计集成（2026 新增）

### 6.1 pcbGPT Python DSL

**概述**
- pcbGPT 使用 Python DSL（领域特定语言）作为中间表示
- 自然语言描述 → Python DSL → KiCad 原理图
- 支持工具增强综合（Tool-Augmented Synthesis）
- 结合库搜索与数据手册知识验证

**DSL 设计理念**
- 结构化描述电路连接与参数
- 支持模块层次化定义
- 支持约束标注
- 可被验证和转换

**典型工作流**
```
自然语言需求
    ↓
LLM 解析 + 库搜索
    ↓
生成 Python DSL 描述
    ↓
结构验证 + 语义验证
    ↓
生成 KiCad 原理图 (.kicad_sch)
    ↓
人工审核与优化
```

**集成方式**
- 作为独立工具运行，输出 KiCad 格式
- 可嵌入到设计工作流中
- 支持 API 调用（研究阶段）
- 与 KiCad 无缝对接

### 6.2 GPT-6 Astra - 端到端原理图生成（2026 新增）

**概述**
- 自然语言 → KiCad 原理图的**端到端**生成（无需中间 DSL）
- 由生成式大模型即时理解需求并输出可编辑原理图
- 与 KiCad 工作流原生衔接，快速进入后续编辑/仿真

**集成方式**
- 作为独立生成入口，输出 `.kicad_sch`
- 与 pcbGPT 相比省去 DSL 中间步骤，迭代更快
- 适合快速原型与需求澄清，正式交付仍需人工审核

**集成注意点（评审会话）**
- 端到端生成的器件选型与参数需对照 datasheet 复核
- 生成结果未附规则溯源，需补充约束验证
- 复杂设计建议用 pcbGPT（可审计的 DSL 中间表示）或分层分步生成

### 6.3 Cadence AuraStack AI 平台

**平台架构**
- 基于 Nvidia Blackwell GPU
- CUDA-X 加速
- Agentic AI 架构
- 多工具协调

**集成能力**
- 系统规划工具集成
- 库创建自动化
- 物理实现 AI 辅助
- 多物理场仿真分析
- 制造准备自动化

**企业部署**
- 本地部署 / 云服务
- 与现有 Cadence 工具链集成
- 企业知识库训练
- 私有化数据保护

### 6.4 AI 辅助设计工作流集成

**AI 工具集成架构**

```
设计需求
    ↓
[AI 方案生成] → pcbGPT / GPT-6 Astra / Celus
    ↓
原理图设计
    ↓
[AI 库创建] → 自动符号/封装生成
    ↓
PCB 布局
    ↓
[AI 布局辅助] → 自动布局建议
    ↓
布线
    ↓
[AI 仿真分析] → SI/PI/热多物理场
    ↓
[AI DFM 审查] → 自动可制造性检查
    ↓
制造输出
```

**AI 工具选型建议**
- **原理图辅助**：pcbGPT（开源/研究）、GPT-6 Astra（生成式/商用）、Celus（商业）
- **布局布线辅助**：各 EDA 厂商内置 AI 功能
- **仿真分析**：Cadence AuraStack、Siemens EDA AI
- **DFM 审查**：各制造平台 AI 检查工具
- **可靠性分析**：BQR Synthelyzer 等专用工具

### 6.5 AI 辅助设计的工程实践

**AI 工具使用原则**
1. **验证优先**：所有 AI 生成结果必须人工验证
2. **渐进引入**：从辅助性工作开始，逐步扩大范围
3. **知识沉淀**：将 AI 使用经验转化为团队知识库
4. **安全合规**：注意设计数据的保密性与合规性

**效率提升场景**
- 重复性高、规则明确的任务 → AI 自动化
- 方案探索与概念设计 → AI 快速生成多方案
- 数据检索与整理 → AI 辅助查询
- 复杂决策 → AI 提供建议，人工拍板

---

> 本文档持续更新，最新版本请参考 SKILL.md 中的版本信息。