.class public Lcom/samsung/android/smartclip/SmartClipMetaUtils;
.super Ljava/lang/Object;
.source "SmartClipMetaUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/samsung/android/smartclip/SmartClipMetaUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMetaTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v0, 0x0

    .line 74
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 80
    :cond_9
    :goto_9
    return v0

    .line 77
    :cond_a
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->addSmartClipTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v0

    goto :goto_9
.end method

.method public static clearAllMetaTag(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 105
    if-nez p0, :cond_4

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->clearAllSmartClipTag()Z

    move-result v0

    goto :goto_3
.end method

.method public static extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 190
    if-nez p0, :cond_4

    .line 191
    const/4 v0, 0x0

    .line 194
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v0

    goto :goto_3
.end method

.method public static getChromeViewClassNameFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 274
    .local v2, "chromeViewName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 275
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_27

    .line 276
    sget-object v3, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChromeViewClassNameFromManifest : Could not get appInfo! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v3, 0x0

    .line 289
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_26
    return-object v3

    .line 280
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_27
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 281
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_4b

    .line 282
    const-string v3, "org.chromium.content.browser.SMART_CLIP_PROVIDER"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_4b

    .line 284
    sget-object v3, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target chrome view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_4b} :catch_4d

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4b
    :goto_4b
    move-object v3, v2

    .line 289
    goto :goto_26

    .line 287
    :catch_4d
    move-exception v3

    goto :goto_4b
.end method

.method public static getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 245
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 246
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 247
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 248
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 249
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 250
    return-object v1
.end method

.method public static getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 227
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 229
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 230
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 231
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 232
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 234
    return-object v1
.end method

.method public static isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 255
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 267
    :cond_5
    :goto_5
    return v1

    .line 259
    :cond_6
    const/4 v0, 0x0

    .line 261
    .local v0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_5

    .line 263
    :catch_19
    move-exception v2

    goto :goto_5
.end method

.method public static isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .registers 6
    .param p0, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 113
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 125
    :cond_a
    :goto_a
    return v1

    .line 117
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "metaValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_2e

    .line 120
    if-eqz v0, :cond_a

    const-string v3, "about:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v2, :cond_a

    const-string v3, "email://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v2, :cond_a

    :cond_2e
    move v1, v2

    .line 125
    goto :goto_a
.end method

.method public static removeMetaTag(Landroid/view/View;Ljava/lang/String;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 93
    :cond_4
    const/4 v0, 0x0

    .line 95
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->removeSmartClipTag(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public static setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    .prologue
    .line 172
    if-nez p0, :cond_4

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_3
    return v0

    .line 175
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setSmartClipDataExtractionListener(Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z

    .line 176
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static setIntentMetaTag(Landroid/view/View;Landroid/content/Intent;)Z
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    if-nez p0, :cond_6

    move v3, v4

    .line 161
    :goto_5
    return v3

    .line 134
    :cond_6
    move-object v2, p0

    .line 136
    .local v2, "rootView":Landroid/view/View;
    :goto_7
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_16

    move-object v3, p0

    .line 137
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 138
    .local v1, "parent":Landroid/view/View;
    if-nez v1, :cond_39

    .line 149
    .end local v1    # "parent":Landroid/view/View;
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->isValidIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-ne v3, v5, :cond_3d

    .line 150
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->marshall(Landroid/content/Intent;)[B

    move-result-object v0

    .line 151
    .local v0, "intentData":[B
    if-eqz v0, :cond_3b

    .line 152
    const-string v3, "app_launch_info"

    invoke-static {v2, v3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->removeMetaTag(Landroid/view/View;Ljava/lang/String;)Z

    .line 153
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string v4, "app_launch_info"

    const-string v6, ""

    invoke-direct {v3, v4, v6, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-static {v2, v3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->addMetaTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move v3, v5

    .line 161
    goto :goto_5

    .line 141
    .end local v0    # "intentData":[B
    .restart local v1    # "parent":Landroid/view/View;
    :cond_39
    move-object v2, v1

    .line 143
    goto :goto_7

    .end local v1    # "parent":Landroid/view/View;
    .restart local v0    # "intentData":[B
    :cond_3b
    move v3, v4

    .line 155
    goto :goto_5

    .end local v0    # "intentData":[B
    :cond_3d
    move v3, v4

    .line 158
    goto :goto_5
.end method

.method public static setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v3, 0x0

    .line 205
    if-nez p1, :cond_4

    .line 215
    :cond_3
    :goto_3
    return v3

    :cond_4
    move-object v1, p1

    .line 208
    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 209
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v2

    .line 210
    .local v2, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    .line 212
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropper;
    :goto_11
    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropper;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    move-result v3

    goto :goto_3

    .line 210
    .end local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropper;
    :cond_18
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static setSmartClipTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 58
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 59
    :cond_8
    const/4 v1, 0x0

    .line 63
    :goto_9
    return v1

    .line 61
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/View;->removeSmartClipTag(Ljava/lang/String;)Z

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->addSmartClipTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v1

    goto :goto_9
.end method
