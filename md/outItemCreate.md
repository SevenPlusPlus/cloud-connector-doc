[toc]

## 商品创建上行
- 标识：outItemCreate
- 交换实体：com.youzan.cloud.connector.sdk.core.item.ItemDetailExchangeEntity
### 场景说明
商品创建上行
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
外部商品创建消息 | OutItemCreateMsg | 外部商品创建消息

### 场景流程模板配置
- 模板ID：OuterItemCreateRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.item.OuterItemCreateRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.item.OuterItemCreateRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteGetItemUri
> 获取三方商品详情

**参数为必填项**


**是否允许自定义实现**: Y
---
##### customPreFilterPredicate
> 

**参数为必填项**


**是否允许自定义实现**: Y

**定制示例**:
```
自定义过滤条件
```
---
##### customShopRelationMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y

**定制示例**:
```
自定义外部店铺映射子流程EndpointUri
或实现{@link ShopMappingProvider#byOutShop(com.youzan.cloud.connector.sdk.api.shop.model.ByOutShopQryParam)}的组件名
```
---
##### customItemImageMapping
> 

**参数为必填项**


**是否允许自定义实现**: Y

**定制示例**:
```
补充图片imageId子流程EndpointUri
或实现{@link com.youzan.cloud.connector.sdk.api.item.ItemImageComponent#getOrUploadItemImageList(ItemImageIdUploadParam)}的组件名
```

