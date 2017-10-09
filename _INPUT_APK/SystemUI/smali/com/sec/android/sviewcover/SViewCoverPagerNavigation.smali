.class public Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;
.super Landroid/widget/LinearLayout;
.source "SViewCoverPagerNavigation.java"

# interfaces
.implements Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$1;,
        Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIndicatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Lcom/sec/android/sviewcover/SViewCoverPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "SViewCoverPagerNavigation"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    .line 38
    return-void
.end method

.method private getNavigationImage(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;)I
    .locals 2
    .param p1, "page"    # Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    .prologue
    .line 50
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$1;->$SwitchMap$com$sec$android$sviewcover$SViewCoverPagerNavigation$PageType:[I

    invoke-virtual {p1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_normal:I

    :goto_0
    return v0

    .line 52
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->page_indicator_camera:I

    goto :goto_0

    .line 54
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->page_indicator_camera_dim:I

    goto :goto_0

    .line 56
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_focus:I

    goto :goto_0

    .line 58
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_normal:I

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPagesList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-nez v3, :cond_1

    .line 110
    const/4 v2, 0x0

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    .line 112
    .local v1, "pageCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 114
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v3, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 116
    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->current_camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_2
    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->camera:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 121
    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_4
    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method

.method private initWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->removeAllViews()V

    .line 97
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_navigation_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 99
    .local v2, "iconPadding":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 100
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "currentHomeImageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    invoke-virtual {v0, v2, v5, v2, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->addView(Landroid/view/View;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "currentHomeImageView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->invalidate()V

    .line 106
    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 93
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 88
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 90
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageSwitched(Landroid/view/View;I)V
    .locals 0
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 140
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 0
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 135
    return-void
.end method

.method public setPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V
    .locals 2
    .param p1, "pager"    # Lcom/sec/android/sviewcover/SViewCoverPager;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    const-string v1, "setPager(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    .line 46
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->getPagesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    .local v0, "newPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 70
    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 71
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 78
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    goto :goto_0
.end method
