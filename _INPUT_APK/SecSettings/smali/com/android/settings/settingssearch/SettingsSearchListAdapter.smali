.class public Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/settingssearch/SettingsSearchItem;",
        ">;"
    }
.end annotation


# static fields
.field private static mSupportHistory:Z


# instance fields
.field private final MENU_TYPE_DIABLE_FLAG:I

.field private final MENU_TYPE_MASK_FLAG:I

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/String;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResourceId:I

.field private mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSupportHistory:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "objects"    # [Lcom/android/settings/settingssearch/SettingsSearchItem;
    .param p4, "keyWord"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 29
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 32
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 34
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_DIABLE_FLAG:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_MASK_FLAG:I

    .line 272
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 289
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 44
    iput p2, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    .line 45
    iput-object p4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSupportHistory:Z

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSupportHistory:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->setHistoryMenu(Ljava/lang/String;)V

    return-void
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 260
    .local v0, "paint":Landroid/text/TextPaint;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v2

    .line 263
    :cond_1
    const/4 v1, 0x0

    .line 264
    .local v1, "prefixForIndian":[C
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    .line 266
    if-eqz v1, :cond_0

    .line 269
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v1, -0x1

    .line 237
    .local v1, "index":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 251
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 252
    const/4 v1, -0x1

    .line 254
    :cond_2
    return v1

    .line 241
    :cond_3
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "word":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 243
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    goto :goto_0

    .line 247
    :cond_4
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setHistoryMenu(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 306
    .local v1, "now":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "search_history"

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 307
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 34
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f09006d

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 66
    .local v9, "focusColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_1

    .line 67
    :cond_0
    const/16 v20, 0x0

    .line 232
    :goto_0
    return-object v20

    .line 70
    :cond_1
    move-object/from16 v20, p2

    .line 72
    .local v20, "row":Landroid/view/View;
    if-nez v20, :cond_3

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 74
    .local v12, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 76
    new-instance v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;)V

    .line 77
    .local v14, "itemHolder":Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    const v29, 0x7f10045a

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 78
    const v29, 0x7f10045b

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    .line 80
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v29, v0

    aget-object v13, v29, p1

    .line 87
    .local v13, "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    if-eqz v13, :cond_12

    .line 88
    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 89
    const v29, 0x7f100458

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 90
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_2
    const v29, 0x7f100459

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 98
    .local v26, "titleLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 100
    const/4 v15, 0x0

    .line 101
    .local v15, "keyWordString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 106
    :goto_3
    const/16 v25, 0x0

    .line 107
    .local v25, "title":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_6

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    iget-wide v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 112
    :goto_4
    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    .local v22, "spanTitle":Landroid/text/Spannable;
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "arrayKey":[Ljava/lang/String;
    const/4 v11, -0x1

    .line 115
    .local v11, "indexof":I
    const/16 v17, 0x0

    .line 116
    .local v17, "length":I
    const/4 v6, 0x0

    .line 117
    .local v6, "addOffset":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    array-length v0, v7

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_9

    .line 118
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v29, v0

    aget-object v30, v7, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 119
    .local v16, "keyword":Ljava/lang/String;
    if-nez v16, :cond_7

    .line 120
    aget-object v29, v7, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 121
    aget-object v29, v7, v10

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v17

    .line 122
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v11, v0, :cond_2

    .line 123
    new-instance v29, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v30, v17, v11

    const/16 v31, 0x12

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v1, v11, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 117
    :cond_2
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 82
    .end local v6    # "addOffset":I
    .end local v7    # "arrayKey":[Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "indexof":I
    .end local v13    # "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    .end local v14    # "itemHolder":Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    .end local v15    # "keyWordString":Ljava/lang/String;
    .end local v16    # "keyword":Ljava/lang/String;
    .end local v17    # "length":I
    .end local v22    # "spanTitle":Landroid/text/Spannable;
    .end local v25    # "title":Ljava/lang/String;
    .end local v26    # "titleLayout":Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    .restart local v14    # "itemHolder":Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    goto/16 :goto_1

    .line 93
    .restart local v13    # "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    :cond_4
    const v29, 0x7f100458

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 94
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 104
    .restart local v15    # "keyWordString":Ljava/lang/String;
    .restart local v26    # "titleLayout":Landroid/widget/LinearLayout;
    :cond_5
    const-string v15, ""

    goto/16 :goto_3

    .line 110
    .restart local v25    # "title":Ljava/lang/String;
    :cond_6
    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_4

    .line 126
    .restart local v6    # "addOffset":I
    .restart local v7    # "arrayKey":[Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "indexof":I
    .restart local v16    # "keyword":Ljava/lang/String;
    .restart local v17    # "length":I
    .restart local v22    # "spanTitle":Landroid/text/Spannable;
    :cond_7
    const/16 v23, 0x0

    .line 127
    .local v23, "startOffset":I
    const/4 v8, 0x0

    .line 129
    .local v8, "endOffset":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, "lowserStr":Ljava/lang/String;
    move-object/from16 v27, v25

    .line 132
    .local v27, "upperStr":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 133
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 134
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    add-int v8, v23, v29

    .line 140
    :goto_7
    if-ltz v23, :cond_2

    .line 141
    new-instance v29, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v30, v23, v6

    add-int v31, v8, v6

    const/16 v32, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 144
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 145
    add-int/2addr v6, v8

    goto :goto_6

    .line 136
    :cond_8
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    add-int v8, v23, v29

    goto :goto_7

    .line 149
    .end local v8    # "endOffset":I
    .end local v16    # "keyword":Ljava/lang/String;
    .end local v18    # "lowserStr":Ljava/lang/String;
    .end local v23    # "startOffset":I
    .end local v27    # "upperStr":Ljava/lang/String;
    :cond_9
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    const/16 v24, 0x0

    .line 153
    .local v24, "summary":Ljava/lang/String;
    const/4 v6, 0x0

    .line 154
    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_c

    .line 155
    iget-wide v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x1

    cmp-long v29, v30, v32

    if-eqz v29, :cond_a

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    iget-wide v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 160
    :cond_a
    :goto_8
    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 162
    .local v21, "spanSummary":Landroid/text/Spannable;
    const/4 v10, 0x0

    :goto_9
    array-length v0, v7

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_f

    .line 163
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v29, v0

    aget-object v30, v7, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 164
    .restart local v16    # "keyword":Ljava/lang/String;
    if-nez v16, :cond_d

    .line 165
    aget-object v29, v7, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 166
    aget-object v29, v7, v10

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v17

    .line 167
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v11, v0, :cond_b

    .line 168
    new-instance v29, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v30, v17, v11

    const/16 v31, 0x12

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v1, v11, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 162
    :cond_b
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 158
    .end local v16    # "keyword":Ljava/lang/String;
    .end local v21    # "spanSummary":Landroid/text/Spannable;
    :cond_c
    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v24, v0

    goto :goto_8

    .line 171
    .restart local v16    # "keyword":Ljava/lang/String;
    .restart local v21    # "spanSummary":Landroid/text/Spannable;
    :cond_d
    const/16 v23, 0x0

    .line 172
    .restart local v23    # "startOffset":I
    const/4 v8, 0x0

    .line 174
    .restart local v8    # "endOffset":I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 175
    .restart local v18    # "lowserStr":Ljava/lang/String;
    move-object/from16 v27, v24

    .line 177
    .restart local v27    # "upperStr":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 178
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 179
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    add-int v8, v23, v29

    .line 185
    :goto_b
    if-ltz v23, :cond_b

    .line 186
    new-instance v29, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v30, v23, v6

    add-int v31, v8, v6

    const/16 v32, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 189
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 190
    add-int/2addr v6, v8

    goto :goto_a

    .line 181
    :cond_e
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 182
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    add-int v8, v23, v29

    goto :goto_b

    .line 194
    .end local v8    # "endOffset":I
    .end local v16    # "keyword":Ljava/lang/String;
    .end local v18    # "lowserStr":Ljava/lang/String;
    .end local v23    # "startOffset":I
    .end local v27    # "upperStr":Ljava/lang/String;
    :cond_f
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 195
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    :cond_10
    const v29, 0x7f10045c

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 200
    .local v19, "menuTypeLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 203
    new-instance v29, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    .line 204
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 206
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 207
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v29, v0

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    const/16 v30, 0x100

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 210
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 228
    :cond_11
    :goto_d
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 230
    .end local v6    # "addOffset":I
    .end local v7    # "arrayKey":[Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "indexof":I
    .end local v15    # "keyWordString":Ljava/lang/String;
    .end local v17    # "length":I
    .end local v19    # "menuTypeLayout":Landroid/widget/LinearLayout;
    .end local v21    # "spanSummary":Landroid/text/Spannable;
    .end local v22    # "spanTitle":Landroid/text/Spannable;
    .end local v24    # "summary":Ljava/lang/String;
    .end local v25    # "title":Ljava/lang/String;
    .end local v26    # "titleLayout":Landroid/widget/LinearLayout;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 207
    .restart local v6    # "addOffset":I
    .restart local v7    # "arrayKey":[Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "indexof":I
    .restart local v15    # "keyWordString":Ljava/lang/String;
    .restart local v17    # "length":I
    .restart local v19    # "menuTypeLayout":Landroid/widget/LinearLayout;
    .restart local v21    # "spanSummary":Landroid/text/Spannable;
    .restart local v22    # "spanTitle":Landroid/text/Spannable;
    .restart local v24    # "summary":Ljava/lang/String;
    .restart local v25    # "title":Ljava/lang/String;
    .restart local v26    # "titleLayout":Landroid/widget/LinearLayout;
    :cond_13
    const/16 v29, 0x0

    goto :goto_c

    .line 212
    :cond_14
    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 213
    new-instance v29, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    .line 214
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Switch;->setVisibility(I)V

    .line 216
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setId(I)V

    .line 217
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v30, v0

    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v29, v0

    if-eqz v29, :cond_15

    const/16 v29, 0x1

    :goto_e
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    const/16 v30, 0x100

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 220
    iget-object v0, v14, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_d

    .line 217
    :cond_15
    const/16 v29, 0x0

    goto :goto_e

    .line 222
    :cond_16
    iget v0, v13, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 224
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    const v29, 0x7f0401d3

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 225
    .local v28, "view":Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d
.end method
