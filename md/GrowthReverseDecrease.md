[toc]

## 成长值逆向减少
- 标识：GrowthReverseDecrease
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.GrowthOperateExchangeEntity
### 场景说明
成长值逆向减少
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
成长值减少回流 | GrowthReverseDecreaseBackflow | 成长值减少回流
成长值减少接口调用 | GrowthReverseDecreaseRest | 成长值减少接口调用

### 场景流程模板配置
- 模板ID：GrowthReverseDecreaseRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.growth.reverse.GrowthReverseDecreaseRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.growth.reverse.GrowthReverseDecreaseRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteFetchOrderUri
> 拉取三方成长值（实现拉取成长值变动记录并转换有赞标准交换实体的子流程）

**参数为必填项**


**定制示例**:
```
拉取三方成长值记录子流程模板EndpointUri或模板ID
```
---
##### yzStandardUri
> 有赞标准模板：成长值逆向减少

**参数为必填项**

---
##### customPreFilterPredicate
> 自定义前置过滤

**参数为必填项**


**定制示例**:
```
自定义前置过滤逻子流程EndpointUri 或 实现@link(com.youzan.cloud.connector.sdk.api.common.ExchangeFilterPredicate)的组件名
```

