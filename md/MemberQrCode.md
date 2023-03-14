[toc]

## 会员二维码正向查询
- 标识：MemberQrCode
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.MemberQrCodeExchangeEntity
### 场景说明
会员二维码正向查询
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
会员二维码查询 | MemberCodeExt | 会员二维码查询

### 场景流程模板配置
- 模板ID：MemberQrCodeRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.member.MemberQrCodeRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.member.MemberQrCodeRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 

**参数为必填项**


**是否允许自定义实现**: Y
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
##### tripartiteMemberQrCodeUri
> 

**参数为必填项**


**是否允许自定义实现**: Y

**定制示例**:
```
三方会员二维码查询子流程末班endpointUri
```

