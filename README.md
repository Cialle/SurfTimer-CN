# 适用于 CS:GO 的 SurfTimer

这是为 CS:GO 制作的开源计时器插件。

[SurfTimer Discord](https://discord.surftimer.dev)

SurfTimer 测试服务器:
 - 北美: `connect na-test-server.surftimer.dev`
 - 欧洲: `connect eu-test-server.surftimer.dev:27045`

## 项目目标

由于绝大多数 CS:GO 冲浪社区使用此插件，我们项目的主要目标一直是修复存在的主要错误和问题。由于我们现在认为绝大多数问题都已修复，我们现在开始考虑添加一些新功能！

我们鼓励每个使用此插件的人分享与错误相关的修复。如果这样做，我们可以共同努力实现一个无错误、功能丰富的计时器插件。

更少的错误 = 更好的体验 = 更多冲浪玩家！

## 问题规则

**我们只会帮助与计时器相关的错误，任何与主机相关的问题将立即关闭。**

**如果未遵循下面列出的任何规则，您必须预期问题将立即关闭。**

- 先决条件:
	- 确保您的计时器版本与[最新发布](https://github.com/surftimer/Surftimer-Official/releases/latest)保持一致
	- [SourceMod](https://www.sourcemod.net/downloads.php?branch=stable) 和 [Metamod](https://www.sourcemm.net/downloads.php/?branch=stable) 已更新 (仅支持最新稳定版)
	- 原始计时器没有任何额外更改
- 遵循模板
	- 这意味着您不会删除任何预先输入的问题！
- 提供清晰和尽可能精确的信息
	- 如果适用，请包括相关的日志/配置（发布到[pastebin](https://pastebin.com/)）
- 不要编辑问题
	- 每次都在下面写新评论！

## 安装

* 下载并安装 [Metamod 1.11](https://www.sourcemm.net/downloads.php/?branch=stable)
* 下载并安装 [SourceMod 1.10](https://www.sourcemod.net/downloads.php?branch=stable)（最新稳定版）或 [SourceMod 1.11](https://www.sourcemod.net/downloads.php?branch=master&all=1)（某些推荐插件所需）
* 下载最新的 [发布版本](https://github.com/surftimer/SurfTimer/releases/latest) 并将所有文件上传到您的 csgo 服务器目录
* **注意: MySQL 用户必须使用/具有 `mysql_native_password` 认证/方法。**
* 设置 MySQL 数据库（支持 MySQL 5.7、MySQL 8+、MariaDB）并[为 surftimer 初始化模式](https://github.com/surftimer/SurfTimer/blob/master/scripts/mysql-files/fresh_install.sql)
* 在 csgo/addons/sourcemod/configs/databases.cfg 中添加名为 surftimer 的 MySQL 数据库
* 确保加载了 [End-Touch-Fix](https://github.com/rumourA/End-Touch-Fix)，这是为确保时间始终准确而必需的（注意: 这已包含在官方 SurfTimer 发布版本中，并在自行编译 SurfTimer 时自动加载，除非你自己编译 SurfTimer）
* 确保您已添加下面的所有要求

## 安装常见错误
<details>
  <summary>[SurfTimer] 无法创建数据库表！错误: 在查询期间与 MySQL 服务器的连接丢失</summary>

在您的数据库上运行以下[查询](https://github.com/surftimer/SurfTimer/blob/master/scripts/mysql-files/fresh_install.sql)

</details>

<details>
  <summary>[SurfTimer.smx] [SurfTimer] SQL 错误 (sql_selectMapRecordCallback): 在字段列表中找不到 'cp1.velStartXY'
  [SurfTimer.smx] [SurfTimer] SQL 错误 (SQL_selectFastestBonusCallback): 在字段列表中找不到 't1.velStartXY'</summary>

在您的数据库上运行以下查询:

	ALTER TABLE ck_bonus ADD velStartXY smallint(6) DEFAULT 0 NOT NULL;
	ALTER TABLE ck_bonus ADD velStartXYZ smallint(6) DEFAULT 0 NOT NULL;
	ALTER TABLE ck_bonus ADD velStartZ smallint(6) DEFAULT 0 NOT NULL;

	ALTER TABLE ck_playertimes ADD velStartXY smallint(6) DEFAULT 0 NOT NULL;
	ALTER TABLE ck_playertimes ADD

 velStartXYZ smallint(6) DEFAULT 0 NOT NULL;
	ALTER TABLE ck_playertimes ADD velStartZ smallint(6) DEFAULT 0 NOT NULL;

	ALTER TABLE ck_wrcps ADD velStartXY smallint(6) DEFAULT 0 NOT NULL;
	ALTER TABLE ck_wrcps ADD velStartXYZ smallint(6) DEFAULT 0 NOT NULL;
	ALTER TABLE ck_wrcps ADD velStartZ smallint(6) DEFAULT 0 NOT NULL;

</details>

## 要求

**SourceMod 扩展**
* (\*) [DHooks](https://github.com/peace-maker/DHooks2)
* *(推荐)* [Cleaner](https://github.com/Accelerator74/Cleaner) - 抑制服务器控制台警告

(\*) *已包含在 SourceMod 1.11.6820 及更高版本中*

**SourceMod 库**

ℹ️ 如果您要自己编译 SurfTimer，则只需要 SourceMod 库

* [SMLib](https://github.com/bcserv/smlib/tree/transitional_syntax)
* [AutoExecConfig](https://github.com/Impact123/AutoExecConfig)

**SourceMod 插件**
* *(推荐)* [SurfTimer Mapchooser](https://github.com/surftimer/SurfTimer-Mapchooser) - 允许客户端使用 !nominate、!rtv 等
* *(推荐)* [Movement Unlocker](https://forums.alliedmods.net/showthread.php?t=255298) - 启用地面滑动，即预转向
* *(推荐)* [MomSurfFix](https://github.com/GAMMACASE/MomSurfFix) - 修复坡道故障
* *(推荐)* [RNGFix](https://github.com/jason-e/rngfix) - 修复一堆引擎物理“错误”
* *(推荐)* [HeadBugFix](https://github.com/GAMMACASE/HeadBugFix) - 修复头部边界框在开始蹲下时弹出的问题
* *(推荐)* [PushFixDE](https://github.com/GAMMACASE/PushFixDE) - 修复推动触发器中的客户端预测错误
* *(推荐)* [crouchboostfix](https://github.com/t5mat/crouchboostfix) - 防止蹲下加速
* *(推荐)* [Normalized-Run-Speed](https://github.com/sneak-it/Normalized-Run-Speed) - 将玩家的奔跑速度标准化为所有武器
* *(可选)* [Surftimer-Discord](https://github.com/Sarrus1/SurfTimer-discord) - Discord 世界纪录通知

**其他**
* *(推荐)* [Stripper:Source](http://www.bailopan.net/stripper/) - 允许在地图加载前添加/修改/删除实体（包括配置文件）
* *(可选)* [Surftimer-Web-Stats](https://github.com/KristianP26/Surftimer-Web-Stats) - 网络统计
* *(可选)* [Surftimer-Discord-Bot](https://github.com/Sarrus1/SurfTimer-Discord-Bot) - Discord 机器人
* *(可选)* [CSGO-Surf-Load-Screens](https://github.com/Sayt123/CSGO-Surf-Load-Screens) - 用于冲浪地图的地图加载图像

## 升级

### 从 SurfTimer（fluffys） 升级

*   从[此处](https://github.com/surftimer/SurfTimer/releases/latest)下载最新版本
*   将文件复制到 CS:GO 目录 <br> - 更新脚本可以在[此处](https://github.com/z4lab/z4lab-surftimer/blob/master/scripts/upgrade_scripts/upgrade-fluffy.sh)找到
*   编辑配置文件（mysql 数据库等，以执行）
*   在 surftimer 数据库中运行 `mysql-files/upgrade-fluffy.sql`

### 从 ckSurf（nikooo777） 升级

*   从[此处](https://github.com/surftimer/SurfTimer/releases/latest)下载最新版本
*   将文件复制到 CS:GO 目录
*   删除所有您不再需要的旧 ckSurf 数据
*   在 ckSurf 数据库中运行 `mysql-files/upgrade-niko.sql`
*   编辑配置文件（mysql 数据库等，以执行）

## 积分系统
<details>
  <summary>解释</summary>

积分系统已从原始 ckSurf 进行了重大改进；现在它是一个百分比分层系统。现在积分分发有两种方式：（1）地图完成和（2）地图排名。地图完成积分将授予所有完成特定地图的玩家，并取决于层级。
* 层级 1：25
* 层级 2：50
* 层级 3：100
* 层级 4：200
* 层级 5：400
* 层级 6：600
* 层级 7：800
* 层级 8：1000

地图排名点数取决于个体在地图上的排名。首先通过计算地图的世界纪录（WR）点数来进行计算。每层的 WR 点数计算如下：
* 层次 1: WR = MAX(250, (58.5 + (1.75 * 完成数量) / 6))
* 层次 2: WR = MAX(500, (82.15 + (2.8 * 完成数量) / 5))
* 层次 3: WR = MAX(750, (117 + (3.5 * 完成数量) / 4))
* 层次 4: WR = MAX(1000, (164.25 + (5.74 * 完成数量) / 4))
* 层次 5: WR = MAX(1250, (234 + (7 * 完成数量) / 4))
* 层次 6: WR = MAX(1500, (328 + (14 * 完成数量) / 4))
* 层次 7: WR = MAX(1750, (420 + (21 * 完成数量) / 4))
* 层次 8: WR = MAX(2000, (560 + (30 * 完成数量) / 4))

一旦计算出 WR 点数，前 10 名的点数将通过将 WR 点数与因子相乘来计算。这些因子是：
* 排名 2 = WR * 0.8
* 排名 3 = WR * 0.75
* 排名 4 = WR * 0.7
* 排名 5 = WR * 0.65
* 排名 6 = WR * 0.6
* 排名 7 = WR * 0.55
* 排名 8 = WR * 0.5
* 排名 9 = WR * 0.45
* 排名 10 = WR * 0.4

不在前 10 名但排名在地图上 50% 以上的玩家将被分到 5 个组中，每个较高的组将按比例分配更多的点数。这些组及其点数分配如下：
* 组 1（前 3.125%）= WR * 0.25
* 组 2（前 6.25%）=（组 1）/ 1.5
* 组 3（前 12.5%）=（组 2）/ 1.5
* 组 4（前 25%）=（组 3）/ 1.5
* 组 5（前 50%）=（组 4）/ 1.5

以 surf_aircontrol_nbv 为例：（您可以使用 sm_mi 查看此菜单）
<img src="http://puu.sh/ykaR8/7520a6b0d6.jpg" width="372" height="469" />

###### 感谢 NDiamond 对该点数系统的理论构思，我只是实现了他的想法

</details>

## Credits & Contributors

在此版本中使用的扩展：
* [DHooks](https://forums.alliedmods.net/showthread.php?t=180114)（Dr!fter）
* [Trails Chroma](https://github.com/Nickelony/Trails-Chroma)（Nickelony）

原始插件被称为 ckSurf，由 Jonitaikaponi 开发。一年左右后，fluffys 发布了他更新的 [分支称为 SurfTimer。](https://github.com/fluffyst/Surftimer) 从那时起，该插件得到了许多不同贡献者的重要开发。

* [ckSurf 贡献者](https://github.com/nikooo777/ckSurf/graphs/contributors)
* [SurfTimer 贡献者](https://github.com/surftimer/SurfTimer/graphs/contributors)