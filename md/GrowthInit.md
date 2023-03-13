[toc]

## 成长值正向初始化
- 标识：GrowthInit
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.GrowthOperateExchangeEntity
### 场景说明
成长值正向初始化
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
成长值初始化 | GrowthInitInvoke | 成长值初始化

### 场景流程模板配置
- 模板ID：GrowthInitRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.growth.GrowthInitRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.growth.GrowthInitRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 有赞标准模板：成长值正向初始化

**参数为必填项**

---
##### customPreFilterPredicate
> 自定义前置过滤

**参数为必填项**


**定制示例**:
```
自定义前置过滤逻子流程EndpointUri 或 实现@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)的组件名
```
---
##### tripartiteGetGrowthUri
> 外部三方根据标准交换实体"查询用户成长值"的子流程模板EndpointUri或模板ID

**参数为必填项**

---
##### tripartiteIncreaseGrowthUri
> 外部三方根据标准交换实体"增加用户成长值"的子流程模板EndpointUri或模板ID

**参数为必填项**

---
##### tripartiteDecreaseGrowthUri
> 外部三方根据标准交换实体"减少用户成长值"的子流程模板EndpointUri或模板ID

**参数为必填项**

---
##### initGrowthRuleStrategyUri
> 初始化成长值时，成长值处理规则

**默认值**: initGrowthRuleSum

可选值 | 选项描述
---|---
initGrowthRuleSum | 三方和有赞成长值累加
initGrowthRuleTripartite | 使用三方成长值
initGrowthRuleYz | 使用有赞成长值
initGrowthRuleHigh | 取高的成长值
initGrowthRuleCustom | 自定义成长值计算
---
##### customGrowthCalculate
> 自定义成长值计算计算（当initPointRuleStrategyUri选择StrategyValueEnum.INIT_GROWTH_RULE_CUSTOM.getSubRouteId()时实现）

**参数为必填项**


**定制示例**:
```
自定义成长值计算计算子流程模板EndpointUri或模板ID
```
---
##### growthRuleStrategyUri
> 成长值规则：单双中心，以哪方为主

**默认值**: growthRuleDoubleYz

可选值 | 选项描述
---|---
growthRuleDoubleYz | 双中心,以有赞为主
growthRuleDoubleTripartite | 双中心,以三方为主
growthRuleSingleYz | 单中心,以有赞为主
growthRuleSingleTripartite | 单中心，以三方为主
---
##### customUserMapping
> 自定义根据yzOpenId查询用户关联关系

**参数为必填项**


**定制示例**:
```
自定义根据yzOpenId查询用户关联关系EndpointUri 或 实现@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)的组件名
```
---
##### customUserMappingFallback
> 是否允许不存在用户映射

**默认值**: allowNull

可选值 | 选项描述
---|---
allowNull | 允许不存在用户映射
none | 不允许不存在用户映射

