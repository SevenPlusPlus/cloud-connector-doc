[toc]

## 外部券核销至有赞
- 标识：VoucherVerifyReverse
- 交换实体：com.youzan.cloud.connector.sdk.core.voucher.CouponOperateExchangeEntity
### 场景说明
外部券核销至有赞
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
券核销回流 | VoucherVerifyBackFlow | 券核销回流

### 场景流程模板配置
- 模板ID：VoucherVerifyReverseTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.voucher.verify.VoucherVerifyReverseTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.voucher.verify.VoucherVerifyReverseTemplate$TemplateParameters

#### 配置参数列表

---
##### yzVoucherVerifyReverseUri
> 有赞券核销逆向标准流程模板EndpointUri或模板ID

**参数为必填项**


**是否允许自定义实现**: Y


