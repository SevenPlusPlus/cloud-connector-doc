HTTP/1.1 200 
Content-Disposition: attachment; filename=scene.md
Content-Type: application/json
Transfer-Encoding: chunked
Date: Thu, 02 Mar 2023 08:54:52 GMT

## Push order to tripartite
- 标识：OrderPush
- 交换实体：com.youzan.cloud.connector.sdk.core.trade.OrderDetailExchangeEntity
### 场景说明
push order to tripartite from youzan
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
Yz paid trade triggered msg | TradePaidMsg | youzan paid order msg

### 场景流程模板配置
- 模板ID：OrderPush
- 模板类：com.youzan.cloud.connector.sdk.template.trade.OrderPushRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.trade.OrderPushRouteTemplate.TemplateParameters

#### 配置参数列表

参数key | 默认值 | 可选值 | 关联场景流程 | 允许定制 | 参数描述
---|---|---|---|---|---
tripartiteCreateOrderUri |  |  |  | Y | 三方厂商对接创建订单实现
yzOrderPushUri |  | OrderPushTemplateYzTemplate-alpha : 有赞订单同步标准流程实现alpha版本 <br>  |  | Y | 有赞订单同步标准流程实现
customPreFilterPredicate | orderPushStandardPreFilterPredicate | orderPushStandardPreFilterPredicate : 有赞订单默认前置过滤规则，1.crm订单不同步；2.礼品卡订单不同步； 3.虚拟订单不同步；4.分销订单不同步 <br>  |  | Y | 有赞订单同步前置过滤处理
customShopRelationMapping | bean:shopMappingProviderImpl?method=byYzShop | bean:shopMappingProviderImpl?method=byYzShop : 根据shop_relation表配置查询有赞店铺映射的外部店铺标识 <br>  |  | Y | 查询订单关联的有赞店铺映射的外部店铺
customShopRelationMappingFallback | none | none : 不存在店铺映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 店铺映射允许为空，未找到映射时流程继续执行 <br>  |  | Y | 查询订单关联的有赞店铺映射的外部店铺失败时的降级处理
customUserMapping | bean:userMappingProviderImpl?method=byYzUser | bean:userMappingProviderImpl?method=byYzUser : 根据会员打通的映射表user_relation,查询会员映射的外部会员标识 <br>  |  | Y | 查询订单关联的有赞会员映射的外部会员标识
customUserMappingFallback | none | none : 不存在会员映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 会员映射允许为空，未找到映射时流程继续执行 <br>  |  | Y | 查询订单关联的有赞会员映射的外部会员失败时的降级处理
customSalesGuideMapping | bean:guideMappingProviderImpl?method=byYzGuide | bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br>  |  | Y | 查询订单关联的有赞销售导购映射的外部导购标识
customSalesGuideMappingFallback | none | none : 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 导购映射允许为空，未找到映射时流程继续执行 <br>  |  | Y | 查询订单关联的有赞销售导购映射的外部导购失败时的降级处理
customServicesGuideMapping | bean:guideMappingProviderImpl?method=byYzGuide | bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br>  |  | Y | 查询订单关联的有赞会员专属导购映射的外部导购标识
customServicesGuideMappingFallback | none | none : 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 导购映射允许为空，未找到映射时流程继续执行 <br>  |  | Y | 查询订单关联的有赞会员专属导购映射的外部导购失败时的降级处理
customPostFilterPredicate | none | none : 不存在订单后置过滤处理组件 <br>  |  | Y | 有赞订单同步后置过滤处理
customItemMapping | bean:fullItemMappingFacadeImpl?method=queryOutFullItemInfo | bean:fullItemMappingFacadeImpl?method=queryOutFullItemInfo : 根据商品打通的映射表item_relation,查询商品映射的外部商品标识 <br>  |  | Y | 查询子订单关联的有赞商品映射的外部商品标识
customItemMappingFallback | none | none : 不存在商品映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 商品映射允许为空，未找到映射时流程继续执行 <br>  |  | Y | 查询子订单关联的有赞商品映射的外部商品不存在时的降级处理
customItemGuideMapping | bean:guideMappingProviderImpl?method=byYzGuide | bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br>  |  | Y | 查询子订单关联的有赞商品导购映射的外部导购标识
customItemGuideMappingFallback | none | none : 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 商品导购映射允许为空，未找到映射时流程继续执行 <br>  |  | Y | 查询子订单关联的有赞商品导购映射的外部导购不存在时的降级处理
customSalesmanMapping | bean:guideMappingProviderImpl?method=byYzGuide | bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br>  |  | Y | 查询订单关联的有赞分销员映射的外部分销员标识
customSalesmanMappingFallback | none | none : 不存在分销员映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 分销员映射允许为空，未找到映射时流程继续执行 <br>  |  | Y | 查询订单关联的有赞分销员映射的外部分销员不存在时的降级处理

