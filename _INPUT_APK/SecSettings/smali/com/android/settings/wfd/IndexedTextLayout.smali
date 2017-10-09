.class public Lcom/android/settings/wfd/IndexedTextLayout;
.super Landroid/widget/LinearLayout;
.source "IndexedTextLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTablet:Z

.field private mTextIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mIsTablet:Z

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/IndexedTextLayout;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 30
    iput-object p1, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    .line 31
    iput v0, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mTextIndex:I

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/IndexedTextLayout;->setOrientation(I)V

    .line 33
    return-void
.end method

.method private setLayoutTextStyle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 11
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3e8

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 58
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v2, "ll":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "indexTextView":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "contentTextView":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->setTextStyle(Landroid/widget/TextView;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/IndexedTextLayout;->setTextStyle(Landroid/widget/TextView;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v9, v5}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput-boolean v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 70
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setId(I)V

    .line 72
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .restart local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mTextIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/IndexedTextLayout;->addView(Landroid/view/View;)V

    .line 94
    iget v4, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mTextIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mTextIndex:I

    .line 96
    return-object v0

    .line 80
    .end local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .restart local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput-boolean v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 83
    const/16 v4, 0x9

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setId(I)V

    .line 85
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .restart local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mTextIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTextStyle(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "indexTextView"    # Landroid/widget/TextView;

    .prologue
    .line 111
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/wfd/IndexedTextLayout;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public addContent(I)V
    .locals 3
    .param p1, "strId"    # I

    .prologue
    .line 49
    const-string v1, "IndexedTextLayout"

    const-string v2, "add Content in IndexedTextLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wfd/IndexedTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/IndexedTextLayout;->setLayoutTextStyle(Ljava/lang/String;)Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/wfd/IndexedTextLayout;->invalidate()V

    .line 55
    return-void
.end method
