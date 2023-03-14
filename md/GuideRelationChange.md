[toc]

## 导购客户关系变更
- 标识：GuideRelationChange
- 交换实体：com.youzan.cloud.connector.sdk.core.guide.GuideRelationChangeExchangeEntity
### 场景说明
导购客户关系变更
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
导购客户关系变更消息 | GuideRelationChangeMsg | 导购客户关系变更消息

### 场景流程模板配置
- 模板ID：GuideRelationChangeRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.guide.GuideRelationChangeRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.guide.GuideRelationChangeRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 导购客户关系变更 有赞标准模板

**默认值**: GuideRelationChangeYzTemplate-alpha

已支持的参数值 | 值含义说明
---|---
GuideRelationChangeYzTemplate-alpha | 导购客户关系变更有赞标准模板

**是否允许自定义实现**: Y
---
##### tripartiteGuideRelationChangeUri
> 外部三方根据标准交换实体 导购专属关系变更 的子流程模板EndpointUri或模板ID

**参数为必填项**


**是否允许自定义实现**: Y
---
##### customPreFilterPredicate
> 自定义子流程EndpointUri：前置过滤逻辑

**默认值**: none

已支持的参数值 | 值含义说明
---|---
none | 无业务处理逻辑

**是否允许自定义实现**: Y

