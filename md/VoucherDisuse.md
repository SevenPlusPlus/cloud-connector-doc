[toc]

## 券禁用
- 标识：VoucherDisuse
- 交换实体：com.youzan.cloud.connector.sdk.core.voucher.CouponOperateExchangeEntity
### 场景说明
券禁用
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
凭证作废扩展点 | VoucherDisuseExt | 凭证作废扩展点

### 场景流程模板配置
- 模板ID：VoucherDisuseRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.voucher.disuse.VoucherDisuseRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.voucher.disuse.VoucherDisuseRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzVoucherDisuseUri
> 有赞禁用 模板endPoint 模板Id

**参数为必填项**

---
##### tripartiteVoucherDisuseUri
> 外部三方 禁用券 子流程模板ID

**参数为必填项**


**定制示例**:
```
实现三方系统券核销操作，依赖数据从交换实体中获取
```
---
##### subVoucherQueryUri
> 券详情查询流程uri

**参数为必填项**

---
##### customUserMapping
> 自定义外部用户映射子流程EndpointUri

**参数为必填项**

---
##### customUserMappingFallback
> 自定义外部用户获取不到时的FallBack策略子流程EndpointUri

**参数为必填项**

---
##### customCouponRelationMapping
> 自定义优惠券映射子流程EndpointUri

**参数为必填项**

---
##### customActivityRelationMapping
> 自定义优惠券活动映射子流程EndpointUri

**参数为必填项**

---
##### customShopRelationMapping
> 自定义外部店铺映射子流程EndpointUri

**参数为必填项**

---
##### customShopRelationMappingFallback
> 自定义外部店铺获取不到时的FallBack策略子流程EndpointUri

**参数为必填项**

---
##### isMigrate
> 是否为迁移店铺，会跳过对coupon_operate_record的校验

**参数为必填项**


