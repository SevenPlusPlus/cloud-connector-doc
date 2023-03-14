[toc]

## 会员正向换绑
- 标识：MemberChangeBind
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.MemberRebindExchange
### 场景说明
会员正向换绑
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
手机号修改消息 | MemberMobileChangeMsg | 手机号修改消息

### 场景流程模板配置
- 模板ID：MemberRebindRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.member.MemberRebindRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.member.MemberRebindRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 

**参数为必填项**


**是否允许自定义实现**: Y

---
##### customPreFilterPredicate
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义子流程EndpointUri：前置过滤逻辑
或实现@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)的组件名
```
---
##### memberUnbindPredicate
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
三方自定义解绑流程
```
---
##### memberChangePredicate
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
三方自定义更换手机号流程
```

