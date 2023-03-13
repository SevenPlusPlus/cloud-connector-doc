[toc]

## 成长值正向查询
- 标识：GrowthGet
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.GrowthExchangeEntity
### 场景说明
成长值正向查询
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
成长值查询 | GrowthGetExt | 成长值查询

### 场景流程模板配置
- 模板ID：GrowthGetRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.growth.GrowthGetRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.growth.GrowthGetRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 有赞标准模板：成长值正向查询

**参数为必填项**

---
##### tripartiteGetGrowthUri
> 外部三方根据标准交换实体"产线用户成长值"的子流程模板EndpointUri或模板ID

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

