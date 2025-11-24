# cv-template

申请大学履历表 typst 模版

其实除了澳门申请内地保送以外这个模版还有什么用？

[模版范例](cv.pdf)

## 模版

- 履历表基本架构 `/template/cv.template.typ`
- 简历 `/template/resume.template.typ`
- 活动简介 `/template/gallery.typ`

## 亮点

### 证书管理和整理

```
root
│
└───certs
│   │   (证书照片 e.g. cert.jpg)
│   
└───notes
│   │   (证书备注 e.g. cert.typ)
|
└───lists
    │   (证书清单 e.g. certs.yaml)
```

#### 列表格

证书照片命名好放在 `/certs/` 里面，格式为 `.jpg` ，然后在 `/lists/certs.yaml` 列出所有的证书以及对应年份与奖项

在正文里面用 `/template/cert-listing.typ` 的 `cert-listing(yaml("file_name"))` 列出证书名称表格

在附录里面用 `/template/appendix-listing.typ` 的 `appendix-listing(yaml("file_name"))` 每一班列出证书

*注：用 `cert-listing` 的前提是有 `appendix-listing` ，否则 `cert-listing` 无法加载证书对应的附录页码*

#### 表格强调某些证书

`/lists/certs.yaml` 中对应证书 `id` 后边加上 `*` 即可

#### 证书备注

首先要在 `/notes/` 添加证书备注， 档案为 `.typ` ， `/lists/certs.yaml` 中对应证书 `id` 后边加上 `#`

## 样式自定

- 自定字体（注意有些字体本身不支持**粗体**，这就需要`cuti:0.3.0` 中的 `show-fakebold`）
- 自定背景
- 自定颜色 `/template/styles.typ`
