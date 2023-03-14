[toc]

## 推送订单
- 标识：OrderPush
- 交换实体：com.youzan.cloud.connector.sdk.core.trade.OrderDetailExchangeEntity
### 场景说明
推送订单
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
订单支付完成消息触发 | TradePaidMsg | 订单支付完成消息触发
买家付款(即商家待发货)消息触发 | TradeBuyerPayMsg | 买家付款(即商家待发货)消息触发
卖家部分发货消息触发 | TradePartlySellerShipMsg | 卖家部分发货消息触发
卖家发货完成消息触发 | TradeSellerShipMsg | 卖家发货完成消息触发
订单完成消息触发 | TradeSuccessMsg | 订单完成消息触发

### 场景流程模板配置
- 模板ID：OrderPushRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.trade.OrderPushRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.trade.OrderPushRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteCreateOrderUri
> 调用三方保存订单

**参数为必填项**


**是否允许自定义实现**: Y

---
##### yzOrderPushUri
> 有赞订单推送子流程EndpointURI或子流程模板参数

**参数为必填项**


**是否允许自定义实现**: Y

---
##### customPreFilterPredicate
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义前置过滤逻辑子流程EndpointUri
或实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}的组件名
```
---
##### customShopRelationMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义外部店铺映射子流程EndpointUri
或实现{@link ShopMappingProvider#byYzShop(com.youzan.cloud.connector.sdk.api.shop.model.ByYzShopQryParam)}的组件名
```
---
##### customShopRelationMappingFallback
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义外部店铺获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link ShopMappingProvider#byYzShop(com.youzan.cloud.connector.sdk.api.shop.model.ByYzShopQryParam)}的组件名
```
---
##### customUserMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义外部用户映射子流程EndpointUri
或实现{@link com.youzan.cloud.connector.sdk.api.user.UserMappingProvider#byYzUser(com.youzan.cloud.connector.sdk.api.user.model.ByYzUserQryParam)}的组件名
```
---
##### customUserMappingFallback
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义外部用户获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link UserMappingProvider#byOutUser(com.youzan.cloud.connector.sdk.api.user.model.ByOutUserQryParam)}的组件名
```
---
##### customSalesGuideMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义销售导购映射子流程EndpointUri
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的组件名
```
---
##### customSalesGuideMappingFallback
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义销售导购获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的降级逻辑的组件名
```
---
##### customServicesGuideMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义专属导购映射子流程EndpointUri
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的组件名
```
---
##### customServicesGuideMappingFallback
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义专属导购获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的降级逻辑的组件名
```
---
##### customPostFilterPredicate
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义后置过滤逻辑子流程EndpointUri
或实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}的组件名
```
---
##### customItemMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义订单商品映射子流程EndpointUri
或实现{@link FullItemMappingFacade#queryOutFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryOutFullItemParam)}的组件名
```
---
##### customItemMappingFallback
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义订单商品映射关系获取不到时的Fallback策略子流程EndpointUri
或者指定allowNull（允许映射为空）
或实现{@link FullItemMappingFacade#queryOutFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryOutFullItemParam)}的降级逻辑的组件名
```
---
##### customItemGuideMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义销售导购映射子流程EndpointUri
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的组件名
```
---
##### customItemGuideMappingFallback
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义销售导购获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的降级逻辑的组件名
```
---
##### customSalesmanMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义分销员映射子流程EndpointUri
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的组件名
```
---
##### customSalesmanMappingFallback
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义分销员获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}的降级逻辑的组件名
```
---
##### customEnrichOrderRefundAmount
> 

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义退款金额扩展子流程EndpointUri
或实现{@link ExchangeEntityEnrichTransform <OrderDetailExchangeEntity>}的组件名
```

