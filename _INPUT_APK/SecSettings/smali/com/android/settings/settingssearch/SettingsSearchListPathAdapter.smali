.class public Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSearchListPathAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;
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
.field private static mInflater:Landroid/view/LayoutInflater;

.field private static mSupportHistory:Z


# instance fields
.field private final MENU_TYPE_DIABLE_FLAG:I

.field private final MENU_TYPE_MASK_FLAG:I

.field private final SEARCH_MENU_TYPE_NORMAL:I

.field private final SEARCH_MENU_TYPE_PATH:I

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/String;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSupportHistory:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objects"    # [Lcom/android/settings/settingssearch/SettingsSearchItem;
    .param p3, "keyWord"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 32
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 36
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mKeyWord:Ljava/lang/String;

    .line 38
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->MENU_TYPE_DIABLE_FLAG:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->MENU_TYPE_MASK_FLAG:I

    .line 42
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->SEARCH_MENU_TYPE_PATH:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->SEARCH_MENU_TYPE_NORMAL:I

    .line 325
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 342
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$2;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 56
    iput-object p3, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mKeyWord:Ljava/lang/String;

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSupportHistory:Z

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSupportHistory:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->setHistoryMenu(Ljava/lang/String;)V

    return-void
.end method

.method private getMenuPathType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "type":I
    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "end_of_same_path_menu"

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 313
    .local v0, "paint":Landroid/text/TextPaint;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object v2

    .line 316
    :cond_1
    const/4 v1, 0x0

    .line 317
    .local v1, "prefixForIndian":[C
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 322
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v1, -0x1

    .line 290
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

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 304
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 305
    const/4 v1, -0x1

    .line 307
    :cond_2
    return v1

    .line 294
    :cond_3
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "word":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 296
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    add-int/lit8 v1, v1, 0x1

    .line 298
    goto :goto_0

    .line 300
    :cond_4
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setHistoryMenu(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 359
    .local v1, "now":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    const-string v4, "search_history"

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 361
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 362
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 36
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 88
    :cond_0
    const/16 v30, 0x0

    .line 285
    :cond_1
    :goto_0
    return-object v30

    .line 91
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f09006d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 94
    .local v10, "focusColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v31, v0

    aget-object v15, v31, p1

    .line 95
    .local v15, "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getMenuPathType(I)I

    move-result v21

    .line 96
    .local v21, "menuType":I
    const/16 v30, 0x0

    .line 98
    .local v30, "view":Landroid/view/View;
    if-nez p2, :cond_5

    .line 99
    new-instance v16, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;

    const/16 v31, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;)V

    .line 100
    .local v16, "itemHolder":Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;
    if-nez v21, :cond_4

    .line 101
    sget-object v31, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v32, 0x7f0401e9

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    .line 102
    const v31, 0x7f10045f

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 104
    const v31, 0x7f10045d

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->ivMenuDivider:Landroid/widget/ImageView;

    .line 111
    :goto_1
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_2
    if-eqz v15, :cond_18

    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 118
    sget-object v31, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v32, 0x7f0401e8

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    .line 119
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    const v31, 0x7f10045a

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 122
    const v31, 0x7f10045b

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    .line 124
    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    .line 125
    const v31, 0x7f100458

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 126
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_3
    const v31, 0x7f100459

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 135
    .local v28, "titleLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 137
    const/16 v17, 0x0

    .line 138
    .local v17, "keyWordString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 143
    :goto_4
    const/16 v27, 0x0

    .line 144
    .local v27, "title":Ljava/lang/String;
    iget-object v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    iget-wide v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 149
    :goto_5
    new-instance v24, Landroid/text/SpannableString;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    .local v24, "spanTitle":Landroid/text/Spannable;
    const-string v31, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "arrayKey":[Ljava/lang/String;
    const/4 v13, -0x1

    .line 152
    .local v13, "indexof":I
    const/16 v19, 0x0

    .line 153
    .local v19, "length":I
    const/4 v6, 0x0

    .line 154
    .local v6, "addOffset":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    array-length v0, v7

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_b

    .line 155
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v31, v0

    aget-object v32, v7, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, "keyword":Ljava/lang/String;
    if-nez v18, :cond_9

    .line 158
    aget-object v31, v7, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 159
    aget-object v31, v7, v11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v19

    .line 160
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v13, v0, :cond_3

    .line 161
    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v32, v19, v13

    const/16 v33, 0x12

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :cond_3
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 106
    .end local v6    # "addOffset":I
    .end local v7    # "arrayKey":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "indexof":I
    .end local v17    # "keyWordString":Ljava/lang/String;
    .end local v18    # "keyword":Ljava/lang/String;
    .end local v19    # "length":I
    .end local v24    # "spanTitle":Landroid/text/Spannable;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "titleLayout":Landroid/widget/LinearLayout;
    :cond_4
    sget-object v31, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v32, 0x7f0401e8

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    .line 107
    const v31, 0x7f10045a

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 108
    const v31, 0x7f10045b

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    .line 109
    const v31, 0x7f100458

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 113
    .end local v16    # "itemHolder":Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;
    :cond_5
    move-object/from16 v30, p2

    .line 114
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;

    .restart local v16    # "itemHolder":Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;
    goto/16 :goto_2

    .line 130
    :cond_6
    const v31, 0x7f100458

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 131
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 141
    .restart local v17    # "keyWordString":Ljava/lang/String;
    .restart local v28    # "titleLayout":Landroid/widget/LinearLayout;
    :cond_7
    const-string v17, ""

    goto/16 :goto_4

    .line 147
    .restart local v27    # "title":Ljava/lang/String;
    :cond_8
    iget-object v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    goto/16 :goto_5

    .line 164
    .restart local v6    # "addOffset":I
    .restart local v7    # "arrayKey":[Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v13    # "indexof":I
    .restart local v18    # "keyword":Ljava/lang/String;
    .restart local v19    # "length":I
    .restart local v24    # "spanTitle":Landroid/text/Spannable;
    :cond_9
    const/16 v25, 0x0

    .line 165
    .local v25, "startOffset":I
    const/4 v9, 0x0

    .line 167
    .local v9, "endOffset":I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 168
    .local v20, "lowserStr":Ljava/lang/String;
    move-object/from16 v29, v27

    .line 170
    .local v29, "upperStr":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 171
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 172
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v31

    add-int v9, v25, v31

    .line 178
    :goto_8
    if-ltz v25, :cond_3

    .line 179
    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v32, v25, v6

    add-int v33, v9, v6

    const/16 v34, 0x21

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 182
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 183
    add-int/2addr v6, v9

    goto/16 :goto_7

    .line 174
    :cond_a
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 175
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v31

    add-int v9, v25, v31

    goto :goto_8

    .line 187
    .end local v9    # "endOffset":I
    .end local v18    # "keyword":Ljava/lang/String;
    .end local v20    # "lowserStr":Ljava/lang/String;
    .end local v25    # "startOffset":I
    .end local v29    # "upperStr":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    const/16 v26, 0x0

    .line 191
    .local v26, "summary":Ljava/lang/String;
    const/4 v6, 0x0

    .line 192
    iget-object v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_e

    .line 193
    iget-wide v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v32, v0

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-eqz v31, :cond_c

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    iget-wide v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 198
    :cond_c
    :goto_9
    new-instance v23, Landroid/text/SpannableString;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 200
    .local v23, "spanSummary":Landroid/text/Spannable;
    const/4 v11, 0x0

    :goto_a
    array-length v0, v7

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_11

    .line 201
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v31, v0

    aget-object v32, v7, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v26

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 203
    .restart local v18    # "keyword":Ljava/lang/String;
    if-nez v18, :cond_f

    .line 204
    aget-object v31, v7, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 205
    aget-object v31, v7, v11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v19

    .line 206
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v13, v0, :cond_d

    .line 207
    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v32, v19, v13

    const/16 v33, 0x12

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 200
    :cond_d
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 196
    .end local v18    # "keyword":Ljava/lang/String;
    .end local v23    # "spanSummary":Landroid/text/Spannable;
    :cond_e
    iget-object v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v26, v0

    goto :goto_9

    .line 210
    .restart local v18    # "keyword":Ljava/lang/String;
    .restart local v23    # "spanSummary":Landroid/text/Spannable;
    :cond_f
    const/16 v25, 0x0

    .line 211
    .restart local v25    # "startOffset":I
    const/4 v9, 0x0

    .line 213
    .restart local v9    # "endOffset":I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 214
    .restart local v20    # "lowserStr":Ljava/lang/String;
    move-object/from16 v29, v26

    .line 216
    .restart local v29    # "upperStr":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 217
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 218
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v31

    add-int v9, v25, v31

    .line 224
    :goto_c
    if-ltz v25, :cond_d

    .line 225
    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v32, v25, v6

    add-int v33, v9, v6

    const/16 v34, 0x21

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 229
    add-int/2addr v6, v9

    goto :goto_b

    .line 220
    :cond_10
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 221
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v31

    add-int v9, v25, v31

    goto :goto_c

    .line 233
    .end local v9    # "endOffset":I
    .end local v18    # "keyword":Ljava/lang/String;
    .end local v20    # "lowserStr":Ljava/lang/String;
    .end local v25    # "startOffset":I
    .end local v29    # "upperStr":Ljava/lang/String;
    :cond_11
    const-string v31, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    .line 234
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    :cond_12
    const v31, 0x7f10045c

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 239
    .local v22, "menuTypeLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x3

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    .line 242
    new-instance v31, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    .line 243
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 245
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 246
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v32, v0

    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v31, v0

    if-eqz v31, :cond_14

    const/16 v31, 0x1

    :goto_d
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v31, v0

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x100

    move/from16 v31, v0

    const/16 v32, 0x100

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 249
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 269
    :cond_13
    :goto_e
    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 246
    :cond_14
    const/16 v31, 0x0

    goto :goto_d

    .line 251
    :cond_15
    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x3

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 252
    new-instance v31, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    .line 253
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Switch;->setVisibility(I)V

    .line 255
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setId(I)V

    .line 256
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v32, v0

    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v31, v0

    if-eqz v31, :cond_16

    const/16 v31, 0x1

    :goto_f
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 257
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 258
    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v31, v0

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x100

    move/from16 v31, v0

    const/16 v32, 0x100

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 259
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_e

    .line 256
    :cond_16
    const/16 v31, 0x0

    goto :goto_f

    .line 261
    :cond_17
    iget v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x3

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "layout_inflater"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 264
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v31, 0x7f0401d3

    const/16 v32, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 265
    .local v12, "iconView":Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 271
    .end local v6    # "addOffset":I
    .end local v7    # "arrayKey":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "iconView":Landroid/view/View;
    .end local v13    # "indexof":I
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v17    # "keyWordString":Ljava/lang/String;
    .end local v19    # "length":I
    .end local v22    # "menuTypeLayout":Landroid/widget/LinearLayout;
    .end local v23    # "spanSummary":Landroid/text/Spannable;
    .end local v24    # "spanTitle":Landroid/text/Spannable;
    .end local v26    # "summary":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "titleLayout":Landroid/widget/LinearLayout;
    :cond_18
    if-eqz v15, :cond_1

    if-nez v21, :cond_1

    .line 272
    sget-object v31, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v32, 0x7f0401e9

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p3

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    .line 273
    const v31, 0x7f10045f

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 274
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v31, v0

    iget-object v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0a0025

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 278
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 279
    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 280
    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 281
    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setFocusable(Z)V

    .line 282
    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
