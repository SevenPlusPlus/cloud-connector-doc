[toc]

## CRM外部维权单创建
- 标识：CrmOrderRefund
- 交换实体：com.youzan.cloud.connector.sdk.core.trade.OutOrderRefundEntity
### 场景说明
CRM外部维权单创建
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
订阅暂存消息：外部售后单 | CrmOrderRefundMsg | 订阅暂存消息：外部售后单

### 场景流程模板配置
- 模板ID：CrmOuterOrderRefundRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.trade.CrmOuterOrderRefundRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.trade.CrmOuterOrderRefundRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteFetchOrderUri
> 三方订单获取子流程EndpointURI或子流程模板参数

**参数为必填项**

---
##### yzStandardRefundOuterOrderUri
> 退款有赞标准模板

**参数为必填项**

---
##### customPreFilterPredicate
> 

**参数为必填项**


**定制示例**:
```
自定义子流程EndpointUri：前置过滤逻辑
或实现@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)的组件名
```
---
##### customEnrichRefundPrice
> 

**参数为必填项**


**定制示例**:
```
自定义子流程EndpointUri：设置退款金额
或实现{@link ExchangeEntityEnrichTransform <OutOrderRefundEntity, String>}的组件名
```

