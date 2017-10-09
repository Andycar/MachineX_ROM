.class public Lcom/android/settings/settingssearch/SettingsSearchXmlParser;
.super Ljava/lang/Object;
.source "SettingsSearchXmlParser.java"


# static fields
.field private static final DBG:Z

.field private static mContext:Landroid/content/Context;

.field private static mParentKey:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckingExceptionCount:I

.field private mExceptionCount:I

.field mMenuInfoItem:Ljava/util/ArrayList;

.field public mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

.field xmlParserHeadFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field xmlParserPreferenceFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "SettingSearch/SettingsSearchXmlParser"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mMenuInfoItem:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->xmlParserHeadFile:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->xmlParserPreferenceFile:Ljava/util/ArrayList;

    .line 74
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mExceptionCount:I

    .line 76
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mCheckingExceptionCount:I

    .line 79
    sput-object p1, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mSearchManager:Lcom/android/settings/settingssearch/SettingsSearchManager;

    .line 81
    return-void
.end method

.method private getParentNameForTabView(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 372
    const-string v3, ""

    .line 373
    .local v3, "parentName":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/HeaderListManager;

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    .line 374
    .local v2, "mTabHeaderManager":Lcom/android/settings/HeaderListManager;
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 376
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 377
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-ne p1, v4, :cond_0

    .line 378
    sget-object v4, Lcom/android/settings/HeaderListManager;->TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;

    aget-object v3, v4, v0

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 384
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 385
    sget-object v4, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-ne p1, v4, :cond_3

    .line 386
    sget-object v4, Lcom/android/settings/HeaderListManager;->TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;

    aget-object v3, v4, v0

    .line 384
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 383
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 391
    .end local v1    # "j":I
    :cond_5
    return-object v3
.end method


# virtual methods
.method public getHeaderItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "resid"    # I
    .param p2, "parentsKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v10, 0x0

    .line 85
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v7, Lcom/android/settings/HeaderListManager;

    sget-object v15, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-direct {v7, v15}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    .line 87
    .local v7, "mTabHeaderManager":Lcom/android/settings/HeaderListManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "addItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    :try_start_0
    sget-object v15, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 91
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 95
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 98
    :cond_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "nodeName":Ljava/lang/String;
    const-string v15, "preference-headers"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 100
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_0
    move-exception v5

    .line 192
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v15, "SettingSearch/SettingsSearchXmlParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    if-eqz v10, :cond_2

    .line 195
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 197
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v2

    .line 105
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 107
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 109
    .local v9, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_c

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_c

    .line 110
    :cond_5
    const/4 v15, 0x3

    if-eq v14, v15, :cond_4

    const/4 v15, 0x4

    if-eq v14, v15, :cond_4

    .line 114
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 115
    const-string v15, "header"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 116
    new-instance v12, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v12}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 119
    .local v12, "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    sget-object v15, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget-object v16, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 121
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 124
    .local v6, "id_key_num":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 128
    const/4 v15, 0x0

    iput v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 131
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 132
    .local v13, "tv":Landroid/util/TypedValue;
    if-eqz v13, :cond_7

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 134
    :cond_6
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_a

    .line 135
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 136
    sget-object v15, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    iget v0, v13, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 164
    :cond_7
    :goto_2
    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 169
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 170
    const-string v15, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 171
    iget v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->getParentNameForTabView(I)Ljava/lang/String;

    move-result-object p2

    .line 173
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 174
    sget-object p2, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mParentKey:Ljava/lang/String;

    .line 181
    :cond_8
    :goto_3
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 184
    const-string v15, "com.android.settings"

    iput-object v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 186
    iget v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 187
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 194
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .end local v6    # "id_key_num":I
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v13    # "tv":Landroid/util/TypedValue;
    .end local v14    # "type":I
    :catchall_0
    move-exception v15

    if-eqz v10, :cond_9

    .line 195
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v15

    .line 138
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    .restart local v6    # "id_key_num":I
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v11    # "sa":Landroid/content/res/TypedArray;
    .restart local v12    # "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .restart local v13    # "tv":Landroid/util/TypedValue;
    .restart local v14    # "type":I
    :cond_a
    :try_start_3
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v15, Ljava/lang/String;

    iput-object v15, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_2

    .line 176
    :cond_b
    sput-object p2, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mParentKey:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 194
    .end local v6    # "id_key_num":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_c
    if-eqz v10, :cond_2

    .line 195
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method public getPreferencesScreenItemsFromRes(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "resid"    # I
    .param p2, "parentsKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v10, 0x0

    .line 232
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "addItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    :try_start_0
    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 235
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 239
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 242
    :cond_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, "nodeName":Ljava/lang/String;
    const-string v14, "PreferenceScreen"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 244
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_0
    move-exception v6

    .line 341
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v14, "SettingSearch/SettingsSearchXmlParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception!!!!!!!!!!!!!!!!!!!!!! xml id : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-eqz v10, :cond_2

    .line 345
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 347
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v2

    .line 249
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_3
    const/4 v5, 0x0

    .line 250
    .local v5, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 252
    .local v9, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v9, :cond_13

    .line 253
    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 257
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 258
    const-string v14, "PreferenceCategory"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "com.android.settings.ProgressCategory"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "com.android.settings.UnclickablePreference"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 260
    new-instance v12, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v12}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    .line 262
    .local v12, "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {v14, v4, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 264
    .local v11, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_b

    .line 265
    invoke-virtual {v11, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 266
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 264
    :cond_6
    :goto_3
    :pswitch_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 271
    :pswitch_1
    invoke-virtual {v11, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 344
    .end local v3    # "attr":I
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "curBundle":Landroid/os/Bundle;
    .end local v7    # "i":I
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v13    # "type":I
    :catchall_0
    move-exception v14

    if-eqz v10, :cond_7

    .line 345
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v14

    .line 274
    .restart local v3    # "attr":I
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "curBundle":Landroid/os/Bundle;
    .restart local v7    # "i":I
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v11    # "sa":Landroid/content/res/TypedArray;
    .restart local v12    # "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .restart local v13    # "type":I
    :pswitch_2
    const/4 v14, -0x1

    :try_start_3
    invoke-virtual {v11, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 275
    iget-wide v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_8

    .line 276
    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-wide v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_3

    .line 279
    :cond_8
    invoke-virtual {v11, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    goto :goto_3

    .line 283
    :pswitch_3
    const/4 v14, -0x1

    invoke-virtual {v11, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 284
    iget-wide v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    .line 285
    sget-object v14, Lcom/android/settings/settingssearch/SettingsSearchXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-wide v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 290
    :goto_4
    iget-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    if-nez v14, :cond_6

    .line 291
    const-string v14, ""

    iput-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto :goto_3

    .line 288
    :cond_9
    invoke-virtual {v11, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    goto :goto_4

    .line 296
    :pswitch_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 297
    const/4 v14, 0x0

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_3

    .line 299
    :cond_a
    const/4 v14, 0x0

    invoke-virtual {v11, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const v15, 0x7f0401d3

    if-ne v14, v15, :cond_6

    .line 300
    const/4 v14, 0x3

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto/16 :goto_3

    .line 308
    .end local v3    # "attr":I
    :cond_b
    const-string v14, "CheckBoxPreference"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 309
    const/4 v14, 0x2

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 327
    :cond_c
    :goto_5
    const-string v14, "com.android.settings"

    iput-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 329
    if-nez v5, :cond_d

    .line 330
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 334
    .restart local v5    # "curBundle":Landroid/os/Bundle;
    :cond_d
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 336
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 310
    :cond_e
    const-string v14, "SwitchPreferenceScreen"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "com.android.settings.SettingsSwitchPreference"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 312
    :cond_f
    const/4 v14, 0x1

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_5

    .line 313
    :cond_10
    const-string v14, "com.android.settings.SwitchPreferenceScreen"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 314
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 315
    const/4 v14, 0x0

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_5

    .line 317
    :cond_11
    const/4 v14, 0x1

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 318
    iget-object v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    const-string v15, "toggle_android_beam"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 319
    const/4 v14, 0x0

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    goto :goto_5

    .line 323
    :cond_12
    const/4 v14, 0x0

    iput v14, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 344
    .end local v7    # "i":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "searchItem":Lcom/android/settings/settingssearch/SettingsSearchItem;
    :cond_13
    if-eqz v10, :cond_2

    .line 345
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
