[toc]

## 商品更新上行
- 标识：outItemUpdate
- 交换实体：com.youzan.cloud.connector.sdk.core.item.ItemDetailExchangeEntity
### 场景说明
商品更新上行
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
外部订单更新消息 | OutItemUpdateMsg | 外部订单更新消息

### 场景流程模板配置
- 模板ID：OuterItemUpdateRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.item.OuterItemUpdateRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.item.OuterItemUpdateRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteGetItemUri
> 

**参数为必填项**

---
##### customPreFilterPredicate
> 

**参数为必填项**


**定制示例**:
```
自定义过滤条件
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
##### customItemRelationMapping
> 

**参数为必填项**


**定制示例**:
```
自定义商品映射子流程EndpointUri
或实现{@link com.youzan.cloud.connector.sdk.api.item.ItemMappingProvider#byOutItem(ByOutItemQryParam)} 的组件名
```
---
##### customSkuRelationMapping
> 

**参数为必填项**


**定制示例**:
```
自定义商品映射子流程EndpointUri
或实现{@link com.youzan.cloud.connector.sdk.api.item.SkuMappingProvider#batchGetByOutSku(BatchGetByOutSkuQryParam)} 的组件名
```
---
##### customSkuUpdateComponent
> 

**参数为必填项**


**定制示例**:
```
sku更新到有赞子流程EndpointUri
全量更新,bean:itemSkuModifyComponentCompleteImpl?method=updateSku
只处理新增sku,bean:itemSkuModifyComponentIncrementImpl?method=updateSku

如果有自己需求，或实现{@link ItemSkuModifyComponent#updateSku(ItemDetailExchangeEntity)} 的组件名
```
---
##### customItemImageMapping
> 

**参数为必填项**


**定制示例**:
```
补充图片imageId子流程EndpointUri
或实现{@link com.youzan.cloud.connector.sdk.api.item.ItemImageComponent#getOrUploadItemImageList(ItemImageIdUploadParam)}的组件名
```

