HTTP/1.1 200 
Content-Disposition: attachment; filename=scene.md
Content-Type: application/json
Transfer-Encoding: chunked
Date: Thu, 02 Mar 2023 08:33:16 GMT

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

<table xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
    <colgroup>
        <col style="white-space: normal; width: 10%" />
        <col style="white-space: normal; width: 20%" />
        <col style="white-space: normal; width: 20%" />
        <col style="white-space: normal; width: 10%" />
        <col style="white-space: normal; width: 10%" />
        <col style="white-space: normal; width: 15%" />
        <col style="white-space: normal; width: 15%" />
    </colgroup>
    <thead>
    <tr>
        <th>参数key</th>
        <th>默认值</th>
        <th>可选值</th>
        <th>关联场景流程</th>
        <th>允许定制</th>
        <th>定制示例</th>
        <th>参数描述</th>
    </tr>
    </thead>
    <tbody>
            <tr>
                <td>tripartiteCreateOrderUri</td>
                <td></td>
                <td></td>
                <td></td>
                <td>Y</td>
                <td></td>
                <td>三方厂商对接创建订单实现</td>
            </tr>
            <tr>
                <td>yzOrderPushUri</td>
                <td></td>
                <td>OrderPushTemplateYzTemplate-alpha : 有赞订单同步标准流程实现alpha版本 <br> </td>
                <td></td>
                <td>Y</td>
                <td></td>
                <td>有赞订单同步标准流程实现</td>
            </tr>
            <tr>
                <td>customPreFilterPredicate</td>
                <td>orderPushStandardPreFilterPredicate</td>
                <td>orderPushStandardPreFilterPredicate : 有赞订单默认前置过滤规则，1.crm订单不同步；2.礼品卡订单不同步； 3.虚拟订单不同步；4.分销订单不同步 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}</td>
                <td>有赞订单同步前置过滤处理</td>
            </tr>
            <tr>
                <td>customShopRelationMapping</td>
                <td>bean:shopMappingProviderImpl?method=byYzShop</td>
                <td>bean:shopMappingProviderImpl?method=byYzShop : 根据shop_relation表配置查询有赞店铺映射的外部店铺标识 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link ShopMappingProvider#byYzShop(com.youzan.cloud.connector.sdk.api.shop.model.ByYzShopQryParam)}</td>
                <td>查询订单关联的有赞店铺映射的外部店铺</td>
            </tr>
            <tr>
                <td>customShopRelationMappingFallback</td>
                <td>none</td>
                <td>none : 不存在店铺映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 店铺映射允许为空，未找到映射时流程继续执行 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link ShopMappingProvider#byYzShop(com.youzan.cloud.connector.sdk.api.shop.model.ByYzShopQryParam)}</td>
                <td>查询订单关联的有赞店铺映射的外部店铺失败时的降级处理</td>
            </tr>
            <tr>
                <td>customUserMapping</td>
                <td>bean:userMappingProviderImpl?method=byYzUser</td>
                <td>bean:userMappingProviderImpl?method=byYzUser : 根据会员打通的映射表user_relation,查询会员映射的外部会员标识 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link com.youzan.cloud.connector.sdk.api.user.UserMappingProvider#byYzUser(com.youzan.cloud.connector.sdk.api.user.model.ByYzUserQryParam)}</td>
                <td>查询订单关联的有赞会员映射的外部会员标识</td>
            </tr>
            <tr>
                <td>customUserMappingFallback</td>
                <td>none</td>
                <td>none : 不存在会员映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 会员映射允许为空，未找到映射时流程继续执行 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link com.youzan.cloud.connector.sdk.api.user.UserMappingProvider#byYzUser(com.youzan.cloud.connector.sdk.api.user.model.ByYzUserQryParam)}</td>
                <td>查询订单关联的有赞会员映射的外部会员失败时的降级处理</td>
            </tr>
            <tr>
                <td>customSalesGuideMapping</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询订单关联的有赞销售导购映射的外部导购标识</td>
            </tr>
            <tr>
                <td>customSalesGuideMappingFallback</td>
                <td>none</td>
                <td>none : 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 导购映射允许为空，未找到映射时流程继续执行 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询订单关联的有赞销售导购映射的外部导购失败时的降级处理</td>
            </tr>
            <tr>
                <td>customServicesGuideMapping</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询订单关联的有赞会员专属导购映射的外部导购标识</td>
            </tr>
            <tr>
                <td>customServicesGuideMappingFallback</td>
                <td>none</td>
                <td>none : 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 导购映射允许为空，未找到映射时流程继续执行 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询订单关联的有赞会员专属导购映射的外部导购失败时的降级处理</td>
            </tr>
            <tr>
                <td>customPostFilterPredicate</td>
                <td>none</td>
                <td>none : 不存在订单后置过滤处理组件 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)}</td>
                <td>有赞订单同步后置过滤处理</td>
            </tr>
            <tr>
                <td>customItemMapping</td>
                <td>bean:fullItemMappingFacadeImpl?method=queryOutFullItemInfo</td>
                <td>bean:fullItemMappingFacadeImpl?method=queryOutFullItemInfo : 根据商品打通的映射表item_relation,查询商品映射的外部商品标识 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link FullItemMappingFacade#queryOutFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryOutFullItemParam)}</td>
                <td>查询子订单关联的有赞商品映射的外部商品标识</td>
            </tr>
            <tr>
                <td>customItemMappingFallback</td>
                <td>none</td>
                <td>none : 不存在商品映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 商品映射允许为空，未找到映射时流程继续执行 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link FullItemMappingFacade#queryOutFullItemInfo(com.youzan.cloud.connector.sdk.api.item.model.QueryOutFullItemParam)}</td>
                <td>查询子订单关联的有赞商品映射的外部商品不存在时的降级处理</td>
            </tr>
            <tr>
                <td>customItemGuideMapping</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询子订单关联的有赞商品导购映射的外部导购标识</td>
            </tr>
            <tr>
                <td>customItemGuideMappingFallback</td>
                <td>none</td>
                <td>none : 不存在导购映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 商品导购映射允许为空，未找到映射时流程继续执行 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询子订单关联的有赞商品导购映射的外部导购不存在时的降级处理</td>
            </tr>
            <tr>
                <td>customSalesmanMapping</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide</td>
                <td>bean:guideMappingProviderImpl?method=byYzGuide : 根据导购打通的映射表shopping_guide_relation,查询导购映射的外部导购标识 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询订单关联的有赞分销员映射的外部分销员标识</td>
            </tr>
            <tr>
                <td>customSalesmanMappingFallback</td>
                <td>none</td>
                <td>none : 不存在分销员映射降级逻辑，未找到映射时抛出异常阻断流程执行 <br> allowNull : 分销员映射允许为空，未找到映射时流程继续执行 <br> </td>
                <td></td>
                <td>Y</td>
                <td>自定义组件实现{@link GuideMappingProvider#byYzGuide(com.youzan.cloud.connector.sdk.api.guide.model.ByYzGuideQryParam)}</td>
                <td>查询订单关联的有赞分销员映射的外部分销员不存在时的降级处理</td>
            </tr>
    </tbody>
</table>

