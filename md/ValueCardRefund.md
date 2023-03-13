[toc]

## 储值卡退款
- 标识：ValueCardRefund
- 交换实体：com.youzan.cloud.connector.sdk.core.valuecard.ValueCardRefundExchangeEntity
### 场景说明
储值卡退款
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
储值卡退款 | ValueCardRefundExt | 储值卡退款

### 场景流程模板配置
- 模板ID：ValueCardRefundTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.valuecard.ValueCardRefundTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.valuecard.ValueCardRefundTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteValueCardRefundTemplateUri
> 调用三方储值卡退款

**参数为必填项**


**定制示例**:
```
三方自行实现储值卡退款流程
```
---
##### yzValueCardRefundTemplateUri
> 有赞储值卡退款流程

**参数为必填项**

---
##### yzValueCardRefundQueryTemplateUri
> 有赞储值卡退款查询流程

**参数为必填项**

---
##### customShopRelationMapping
> 自定义外部店铺映射子流程EndpointUri

**参数为必填项**


**定制示例**:
```
用户查询组件 UserMappingProvider
```
---
##### customPayFeeRelationMapping
> 自定义储值支付信息映射子流程EndpointUri

**参数为必填项**


**定制示例**:
```
店铺查询组件 ShopMappingProvider
```
---
##### customShopRelationMappingFallback
> 自定义外部店铺获取不到时的FallBack策略子流程EndpointUri

**参数为必填项**

---
##### customPayFeeRelationMappingFallback
> 自定义储值支付信息获取不到时的FallBack策略子流程EndpointUri

**参数为必填项**

---
##### customEnrichCalcRefundAmount
> 自定义订单扩展扩展子流程EndpointUri

**参数为必填项**

---
##### isConnectorCalc
> 是否在有赞侧计算退款金额

**默认值**: true

可选值 | 选项描述
---|---
true | 在有赞计算支付金额
false | 不在有赞计算支付金额

