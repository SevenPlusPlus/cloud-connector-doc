[toc]

## 积分逆向冻结
- 标识：PointReverseFreeze
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.PointOperateExchangeEntity
### 场景说明
积分逆向冻结
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
订阅消息：积分冻结 | PointReverseFreezeMsg | 订阅消息：积分冻结
积分冻结回流 | PointReverseFreezeBackflow | 积分冻结回流
积分冻结接口调用 | PointReverseFreezeRest | 积分冻结接口调用

### 场景流程模板配置
- 模板ID：PointReverseFreezeRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.point.reverse.PointReverseFreezeRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.point.reverse.PointReverseFreezeRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteFetchOrderUri
> 拉取三方积分（实现拉取积分变动记录并转换有赞标准交换实体的子流程）

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
拉取三方积分记录子流程模板EndpointUri或模板ID
```
---
##### yzStandardUri
> 有赞标准模板：积分逆向冻结

**参数为必填项**


**是否允许自定义实现**: Y

---
##### customPreFilterPredicate
> 自定义前置过滤

**参数为必填项**


**是否允许自定义实现**: Y


**定制示例**:
```
自定义前置过滤逻子流程EndpointUri 或 实现@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)的组件名
```

