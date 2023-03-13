[toc]

## 积分逆向查询
- 标识：PointReverseQuery
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.PointExchangeEntity
### 场景说明
积分逆向查询
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
积分查询日志接口调用 | PointReverseQueryLogRest | 积分查询日志接口调用

### 场景流程模板配置
- 模板ID：PointReverseQueryTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.point.reverse.PointReverseQueryTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.point.reverse.PointReverseQueryTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 有赞标准模板：积分逆向查询

**参数为必填项**

---
##### customPreFilterPredicate
> 自定义前置过滤

**参数为必填项**


**定制示例**:
```
自定义前置过滤逻子流程EndpointUri 或 实现@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)的组件名
```

