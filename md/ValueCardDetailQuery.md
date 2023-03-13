[toc]

## 储值卡详情查询
- 标识：ValueCardDetailQuery
- 交换实体：com.youzan.cloud.connector.sdk.core.valuecard.ValueCardExchangeEntity
### 场景说明
储值卡详情查询
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
储值卡详情查询 | ValueCardDetailQueryExt | 储值卡详情查询

### 场景流程模板配置
- 模板ID：ValueCardDetailQueryTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.valuecard.ValueCardDetailQueryTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.valuecard.ValueCardDetailQueryTemplate$TemplateParameters

#### 配置参数列表

---
##### tripartiteDetailQueryTemplateUri
> 调用三方查询储值卡详情

**参数为必填项**


**定制示例**:
```
三方自行实现查询储值卡详情流程
```
---
##### yzValueCardDetailQueryTemplateUri
> 有赞查询储值卡详情模版流程

**参数为必填项**

---
##### customUserMapping
> 自定义外部用户映射子流程EndpointUri

**参数为必填项**


**定制示例**:
```
用户查询组件 UserMappingProvider
```
---
##### customUserMappingFallback
> 自定义外部用户获取不到时的FallBack策略子流程EndpointUri

**参数为必填项**

---
##### canRecharge
> 是否可以充值

**默认值**: true

可选值 | 选项描述
---|---
true | 使用有赞储值卡规则
false | 不使用有赞储值卡规则

