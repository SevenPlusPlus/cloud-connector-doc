[toc]

## 积分逆向查询日志
- 标识：PointReverseQueryLog
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.PointOperateExchangeEntity
### 场景说明
积分逆向查询日志
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
积分查询接口调用 | PointReverseQueryRest | 积分查询接口调用

### 场景流程模板配置
- 模板ID：PointReverseQueryLogTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.point.reverse.PointReverseQueryLogTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.point.reverse.PointReverseQueryLogTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 有赞标准模板：积分日志逆向查询

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

