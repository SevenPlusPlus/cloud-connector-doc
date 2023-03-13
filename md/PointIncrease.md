[toc]

## 积分正向增加
- 标识：PointIncrease
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.PointOperateExchangeEntity
### 场景说明
积分正向增加
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
积分增加 | PointIncreaseExt | 积分增加

### 场景流程模板配置
- 模板ID：PointIncreaseRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.point.PointIncreaseRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.point.PointIncreaseRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 有赞标准模板：积分正向增加

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
##### tripartiteIncreasePointUri
> 外部三方根据标准交换实体"增加积分"的子流程模板EndpointUri或模板ID

**参数为必填项**

---
##### pointRuleStrategyUri
> 积分规则：单双中心，以哪方为主

**默认值**: pointRuleDoubleTripartite

可选值 | 选项描述
---|---
pointRuleDoubleTripartite | 双中心,以三方为主
pointRuleDoubleYz | 双中心,以有赞为主
pointRuleSingleYz | 单中心,以有赞为主
pointRuleSingleTripartite | 单中心，以三方为主
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

**默认值**: none

可选值 | 选项描述
---|---
none | 不允许不存在用户映射
allowNull | 允许不存在用户映射

