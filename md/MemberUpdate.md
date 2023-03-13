[toc]

## 会员正向更新
- 标识：MemberUpdate
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.MemberBaseExchangeEntity
### 场景说明
会员正向更新
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
会员更新 | MemberUpdateExt | 会员更新
客户更新 | CustomerUpdateExt | 客户更新

### 场景流程模板配置
- 模板ID：MemberOrCustomerUpdateRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.member.MemberOrCustomerUpdateRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.member.MemberOrCustomerUpdateRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 

**参数为必填项**

---
##### customShopRelationMapping
> 

**参数为必填项**


**定制示例**:
```
自定义外部店铺映射子流程EndpointUri
或实现{@link ShopMappingProvider#byYzShop(ByYzShopQryParam)}的组件名
```
---
##### customShopRelationMappingFallback
> 

**参数为必填项**


**定制示例**:
```
自定义外部店铺获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link ShopMappingProvider#byYzShop(ByYzShopQryParam)}的组件名
```
---
##### customUserMapping
> 

**参数为必填项**


**定制示例**:
```
自定义外部用户映射子流程EndpointUri
或实现{@link UserMappingProvider#byYzUser(ByYzUserQryParam)}的组件名
```
---
##### customUserMappingFallback
> 

**参数为必填项**


**定制示例**:
```
自定义外部用户获取不到时的FallBack策略子流程EndpointUri
或指定allowNull（允许映射为空）
或实现{@link UserMappingProvider#byOutUser(com.youzan.cloud.connector.sdk.api.user.model.ByOutUserQryParam)}的组件名
```
---
##### tripartiteMemberUpdateUri
> 

**参数为必填项**


**定制示例**:
```
三方会员查询子流程末班endpointUri
```
---
##### memberRuleStrategyUri
> 会员规则，更新策略

**默认值**: memberRuleDoubleYz

可选值 | 选项描述
---|---
memberRuleDoubleYz | 双中心,以有赞为主
memberRuleDoubleTripartite | 双中心,以三方为主
memberRuleSingleYz | 单中心,以有赞为主
memberRuleSingleTripartite | 单中心，以三方为主

