[toc]

## CRM外部订单创建
- 标识：CrmOrderPush
- 交换实体：com.youzan.cloud.connector.sdk.core.trade.OutOrderDetailEntity
### 场景说明
CRM外部订单创建
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
订阅外部订单消息 | CrmOrderPushMsg | 订阅外部订单消息
创建外部订单API | OutOrderCreate | 创建外部订单API

### 场景流程模板配置
- 模板ID：CrmOuterOrderCreateRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.trade.CrmOuterOrderCreateRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.trade.CrmOuterOrderCreateRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteFetchOrderUri
> 三方订单获取子流程EndpointURI或子流程模板参数

**参数为必填项**

---
##### yzCreateOuterOrderUri
> 有赞创建外部CRM订单子流程EndpointURI或子流程模板参数

**参数为必填项**

---
##### customPreFilterPredicate
> 

**参数为必填项**


**定制示例**:
```
自定义前置过滤逻辑子流程EndpointUri
或实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}的组件名
```
---
##### customEnrichOrderInfo
> 

**参数为必填项**


**定制示例**:
```
自定义订单基础信息扩展子流程EndpointUri
或实现{@link ExchangeEntityEnrichTransform<OutOrderDetailEntity, OrderInfo>}的组件名
```
---
##### customEnrichOrderExtra
> 

**参数为必填项**


**定制示例**:
```
自定义订单扩展扩展子流程EndpointUri
或实现{@link ExchangeEntityEnrichTransform<OutOrderDetailEntity, OutOrderDetailEntity.OrderExtra>}的组件名
```
---
##### customHistoryOrderPredicate
> 

**参数为必填项**


**定制示例**:
```
自定义判断订单是否历史单子流程EndpointUri
或实现{@link ExchangeEntityEnrichPredicate<OutOrderDetailEntity>}的组件名
```
---
##### customShopRelationMapping
> 

**参数为必填项**


**定制示例**:
```
自定义外部店铺映射子流程EndpointUri
或实现{@link ShopMappingProvider#byOutShop(com.youzan.cloud.connector.sdk.api.shop.model.ByOutShopQryParam)}的组件名
```
---
##### customUserMapping
> 

**参数为必填项**


**定制示例**:
```
自定义外部用户映射子流程EndpointUri
或实现{@link UserMappingProvider#byOutUser(com.youzan.cloud.connector.sdk.api.user.model.ByOutUserQryParam)}的组件名
```
---
##### customUserMappingFallback
> 

**参数为必填项**


**定制示例**:
```
自定义销售导购获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link UserMappingProvider#byOutUser(com.youzan.cloud.connector.sdk.api.user.model.ByOutUserQryParam)}的组件名
```
---
##### customSalesGuideMapping
> 

**参数为必填项**


**定制示例**:
```
自定义销售导购映射子流程EndpointUri
或实现{@link GuideMappingProvider#byOutGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByOutGuideQryParam)}的组件名
```
---
##### customSalesGuideMappingFallback
> 

**参数为必填项**


**定制示例**:
```
自定义销售导购获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link GuideMappingProvider#byOutGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByOutGuideQryParam)}的降级逻辑的组件名
```
---
##### customServicesGuideMapping
> 

**参数为必填项**


**定制示例**:
```
自定义专属导购映射子流程EndpointUri
或实现{@link GuideMappingProvider#byOutGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByOutGuideQryParam)}的组件名
```
---
##### customServicesGuideMappingFallback
> 

**参数为必填项**


**定制示例**:
```
自定义专属导购获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link GuideMappingProvider#byOutGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByOutGuideQryParam)}的降级逻辑的组件名
```
---
##### customEnrichOrderPayInfo
> 

**参数为必填项**


**定制示例**:
```
自定义订单扩展扩展子流程EndpointUri
或实现{@link ExchangeEntityEnrichTransform<OutOrderDetailEntity, PayInfo>}的组件名
```
---
##### customEnrichOrderPromotion
> 

**参数为必填项**


**定制示例**:
```
自定义订单扩展扩展子流程EndpointUri
或实现{@link ExchangeEntityEnrichTransform<OutOrderDetailEntity,  OutOrderDetailEntity.Promotion>}的组件名
```
---
##### customPostFilterPredicate
> 

**参数为必填项**


**定制示例**:
```
自定义后置过滤逻辑子流程EndpointUri
或实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}的组件名
```
---
##### customItemMapping
> 

**参数为必填项**


**定制示例**:
```
自定义订单商品映射子流程EndpointUri
或实现{@link FullItemMappingFacade#queryYzFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryYzFullItemParam)}的组件名
```
---
##### customItemMappingFallback
> 

**参数为必填项**


**定制示例**:
```
自定义订单商品映射关系获取不到时的Fallback策略子流程EndpointUri
或者指定allowNull（允许映射为空）
或实现{@link FullItemMappingFacade#queryYzFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryYzFullItemParam)}的降级逻辑的组件名
```
---
##### customItemGuideMapping
> 

**参数为必填项**


**定制示例**:
```
自定义销售导购映射子流程EndpointUri
或实现{@link GuideMappingProvider#byOutGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByOutGuideQryParam)}的组件名
```
---
##### customItemGuideMappingFallback
> 

**参数为必填项**


**定制示例**:
```
自定义销售导购获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link GuideMappingProvider#byOutGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByOutGuideQryParam)}的降级逻辑的组件名
```

