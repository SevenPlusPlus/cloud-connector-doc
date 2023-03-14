[toc]

## 开卡导购客户关系变更
- 标识：GuideRelationForAccountOpeningChange
- 交换实体：com.youzan.cloud.connector.sdk.core.guide.GuideRelationChangeExchangeEntity
### 场景说明
开卡导购客户关系变更
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
开卡导购变更 | GuideRelationForAccountOpeningChangeInvoke | 开卡导购变更

### 场景流程模板配置
- 模板ID：GuideRelationForAccountOpeningChangeRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.guide.GuideRelationForAccountOpeningChangeRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.guide.GuideRelationForAccountOpeningChangeRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 导购客户关系变更 有赞标准模板

**参数为必填项**


**是否允许自定义实现**: Y

---
##### tripartiteGuideRelationForAccountOpeningChangeUri
> 外部三方根据标准交换实体 导购专属关系变更 的子流程模板EndpointUri或模板ID

**参数为必填项**


**是否允许自定义实现**: Y

---
##### customPreFilterPredicate
> 自定义子流程EndpointUri：前置过滤逻辑

**参数为必填项**


**是否允许自定义实现**: Y


