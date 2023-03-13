[toc]

## 会员逆向更新
- 标识：MemberReverseUpdate
- 交换实体：com.youzan.cloud.connector.sdk.core.scrm.MemberComplexExchangeEntity
### 场景说明
会员逆向更新
### 场景流程入口

名称 | 标识 | 描述详情
---|---|---
逆向会员更新 | MemberReverseUpdateRest | 逆向会员更新
逆向会员更新回流 | MemberReverseUpdateBackflow | 逆向会员更新回流

### 场景流程模板配置
- 模板ID：MemberReverseUpdateRouteTemplate
- 模板类：com.youzan.cloud.connector.sdk.template.scrm.member.reverse.MemberReverseUpdateRouteTemplate
- 模板参数类：com.youzan.cloud.connector.sdk.template.scrm.member.reverse.MemberReverseUpdateRouteTemplate$TemplateParameters

#### 配置参数列表

---
##### yzStandardUri
> 逆向会员更新模版

**参数为必填项**

---
##### isUpdateLevel
> 是否修改等级

**默认值**: false

可选值 | 选项描述
---|---
false | 否
true | 是
---
##### isUpdateCustomerSource
> 是否修改会员归属

**默认值**: false

可选值 | 选项描述
---|---
false | 否
true | 是
---
##### isUpdateGuideRelation
> 是否修改导购关系

**默认值**: false

可选值 | 选项描述
---|---
false | 否
true | 是
---
##### memberLevelReverseUpdateUri
> 会员等级修改url

**参数为必填项**

---
##### customerSourceReverseUpdateUri
> 会员归属逆向修改url

**参数为必填项**


