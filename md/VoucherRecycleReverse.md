[toc]

## 外部券回收至有赞
- 标识：VoucherRecycleReverse
- 交换实体：com.youzan.cloud.connector.sdk.core.voucher.CouponOperateExchangeEntity
### 场景说明
外部券回收至有赞
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
券回收回流 | VoucherRecycleBackFlow | 券回收回流

### 场景流程模板配置
- 模板ID：VoucherRecycleReverseTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.voucher.recycle.VoucherRecycleReverseTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.voucher.recycle.VoucherRecycleReverseTemplate$TemplateParameters

#### 配置参数列表

---
##### yzVoucherRecycleReverseUri
> 有赞券回收逆向标准流程模板EndpointUri或模板ID

**参数为必填项**


**是否允许自定义实现**: Y

