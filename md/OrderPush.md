## 正向订单推送
- 标识：OrderPush
- 交换实体：com.youzan.cloud.connector.sdk.core.trade.OrderDetailExchangeEntity
### 场景说明
监听有赞订单的创建或状态变更发起同步给三方系统
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
监听有赞支付完成订单触发 | TradePaidMsg | youzan paid order msg

### 场景流程模板配置
- 模板ID：OrderPush
- 模板类：com.youzan.cloud.connector.sdk.template.trade.OrderPushRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.trade.OrderPushRouteTemplate.TemplateParameters

#### 配置参数列表

---
##### tripartiteCreateOrderUri
> 三方厂商对接创建订单实现

**参数为必填项**

---
##### yzOrderPushUri
> 有赞订单同步标准流程实现

**参数为必填项**


可选值 | 选项描述
---|---
OrderPushTemplateYzTemplate-alpha | 有赞订单同步标准流程实现alpha版本
---
##### customPreFilterPredicate
> 有赞订单同步前置过滤处理

**默认值**: orderPushStandardPreFilterPredicate

可选值 | 选项描述
---|---
orderPushStandardPreFilterPredicate | 有赞订单默认前置过滤规则，1.crm订单不同步；2.礼品卡订单不同步； 3.虚拟订单不同步；4.分销订单不同步

**定制示例**:
```
自定义组件实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}
```
---
##### customShopRelationMapping
> 查询订单关联的有赞店铺映射的外部店铺

**默认值**: bean:shopMappingProviderImpl?method=byYzShop

可选值 | 选项描述
---|---
bean:shopMappingProviderImpl?method=byYzShop | 根据shop_relation表配置查询有赞店铺映射的外部店铺标识

**定制示例**:
```
自定义组件实现{@link ShopMappingProvider#byYzShop(com.youzan.cloud.connector.sdk.api.shop.model.ByYzShopQryParam)}
```
---
##### customShopRelationMappingFallback
> 查询订单关联的有赞店铺映射的外部店铺失败时的降级处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在店铺映射降级逻辑，未找到映射时抛出异常阻断流程执行
allowNull | 店铺映射允许为空，未找到映射时流程继续执行

**定制示例**:
```
自定义组件实现{@link ShopMappingProvider#byYzShop(com.youzan.cloud.connector.sdk.api.shop.model.ByYzShopQryParam)}
```
---
##### customUserMapping
> 查询订单关联的有赞会员映射的外部会员标识

**默认值**: bean:userMappingProviderImpl?method=byYzUser

可选值 | 选项描述
---|---
bean:userMappingProviderImpl?method=byYzUser | 根据会员打通的映射表user_relation,查询会员映射的外部会员标识

**定制示例**:
```
自定义组件实现{@link com.youzan.cloud.connector.sdk.api.user.UserMappingProvider#byYzUser(com.youzan.cloud.connector.sdk.api.user.model.ByYzUserQryParam)}
```
---
##### customUserMappingFallback
> 查询订单关联的有赞会员映射的外部会员失败时的降级处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在会员映射降级逻辑，未找到映射时抛出异常阻断流程执行
allowNull | 会员映射允许为空，未找到映射时流程继续执行

**定制示例**:
```
自定义组件实现{@link com.youzan.cloud.connector.sdk.api.user.UserMappingProvider#byYzUser(com.youzan.cloud.connector.sdk.api.user.model.ByYzUserQryParam)}
```
---
##### customSalesGuideMapping
> 查询订单关联的有赞销售导购映射的外部导购标识

**默认值**: bean:guideMappingProviderImpl?method=byYzGuide

可选值 | 选项描述
---|---
bean:guideMappingProviderImpl?method=byYzGuide | 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```
---
##### customSalesGuideMappingFallback
> 查询订单关联的有赞销售导购映射的外部导购失败时的降级处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行
allowNull | 导购映射允许为空，未找到映射时流程继续执行

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```
---
##### customServicesGuideMapping
> 查询订单关联的有赞会员专属导购映射的外部导购标识

**默认值**: bean:guideMappingProviderImpl?method=byYzGuide

可选值 | 选项描述
---|---
bean:guideMappingProviderImpl?method=byYzGuide | 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```
---
##### customServicesGuideMappingFallback
> 查询订单关联的有赞会员专属导购映射的外部导购失败时的降级处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行
allowNull | 导购映射允许为空，未找到映射时流程继续执行

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```
---
##### customPostFilterPredicate
> 有赞订单同步后置过滤处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在订单后置过滤处理组件

**定制示例**:
```
自定义组件实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}
```
---
##### customItemMapping
> 查询子订单关联的有赞商品映射的外部商品标识

**默认值**: bean:fullItemMappingFacadeImpl?method=queryOutFullItemInfo

可选值 | 选项描述
---|---
bean:fullItemMappingFacadeImpl?method=queryOutFullItemInfo | 根据商品打通的映射表item_relation,查询商品映射的外部商品标识

**定制示例**:
```
自定义组件实现{@link FullItemMappingFacade#queryOutFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryOutFullItemParam)}
```
---
##### customItemMappingFallback
> 查询子订单关联的有赞商品映射的外部商品不存在时的降级处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在商品映射降级逻辑，未找到映射时抛出异常阻断流程执行
allowNull | 商品映射允许为空，未找到映射时流程继续执行

**定制示例**:
```
自定义组件实现{@link FullItemMappingFacade#queryOutFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryOutFullItemParam)}
```
---
##### customItemGuideMapping
> 查询子订单关联的有赞商品导购映射的外部导购标识

**默认值**: bean:guideMappingProviderImpl?method=byYzGuide

可选值 | 选项描述
---|---
bean:guideMappingProviderImpl?method=byYzGuide | 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```
---
##### customItemGuideMappingFallback
> 查询子订单关联的有赞商品导购映射的外部导购不存在时的降级处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行
allowNull | 商品导购映射允许为空，未找到映射时流程继续执行

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```
---
##### customSalesmanMapping
> 查询订单关联的有赞分销员映射的外部分销员标识

**默认值**: bean:guideMappingProviderImpl?method=byYzGuide

可选值 | 选项描述
---|---
bean:guideMappingProviderImpl?method=byYzGuide | 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```
---
##### customSalesmanMappingFallback
> 查询订单关联的有赞分销员映射的外部分销员不存在时的降级处理

**默认值**: none

可选值 | 选项描述
---|---
none | 不存在分销员映射降级逻辑，未找到映射时抛出异常阻断流程执行
allowNull | 分销员映射允许为空，未找到映射时流程继续执行

**定制示例**:
```
自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}
```

