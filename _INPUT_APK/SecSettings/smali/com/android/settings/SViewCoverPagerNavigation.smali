.class public Lcom/android/settings/SViewCoverPagerNavigation;
.super Landroid/widget/LinearLayout;
.source "SViewCoverPagerNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewCoverPagerNavigation$1;,
        Lcom/android/settings/SViewCoverPagerNavigation$PageType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentPage:I

.field private mDensity:F

.field private mIndicatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "SViewCoverPagerNavigation"

    sput-object v0, Lcom/android/settings/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SViewCoverPagerNavigation;->updateLayout()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SViewCoverPagerNavigation;->updateLayout()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mCurrentPage:I

    .line 41
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    .line 62
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 63
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mDensity:F

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SViewCoverPagerNavigation;->updateLayout()V

    .line 68
    return-void
.end method

.method private getNavigationImage(Lcom/android/settings/SViewCoverPagerNavigation$PageType;)I
    .locals 3
    .param p1, "page"    # Lcom/android/settings/SViewCoverPagerNavigation$PageType;

    .prologue
    const v0, 0x7f020087

    .line 71
    sget-object v1, Lcom/android/settings/SViewCoverPagerNavigation$1;->$SwitchMap$com$android$settings$SViewCoverPagerNavigation$PageType:[I

    invoke-virtual {p1}, Lcom/android/settings/SViewCoverPagerNavigation$PageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return v0

    .line 73
    :pswitch_1
    const v0, 0x7f020086

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 83
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-ge v3, v4, :cond_0

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-eq v3, v4, :cond_2

    .line 85
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPagerNavigation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, "v":Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mDensity:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 87
    .local v1, "padding":I
    invoke-virtual {v2, v1, v8, v1, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/settings/SViewCoverPagerNavigation;->addView(Landroid/view/View;)V

    .line 89
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v1    # "padding":I
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-le v3, v4, :cond_2

    .line 92
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-eq v3, v4, :cond_2

    .line 93
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    .restart local v2    # "v":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/settings/SViewCoverPagerNavigation;->removeView(Landroid/view/View;)V

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 101
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 102
    .restart local v2    # "v":Landroid/widget/ImageView;
    sget-object v3, Lcom/android/settings/SViewCoverPagerNavigation$PageType;->normal:Lcom/android/settings/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v3}, Lcom/android/settings/SViewCoverPagerNavigation;->getNavigationImage(Lcom/android/settings/SViewCoverPagerNavigation$PageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 105
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/android/settings/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/android/settings/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v4}, Lcom/android/settings/SViewCoverPagerNavigation;->getNavigationImage(Lcom/android/settings/SViewCoverPagerNavigation$PageType;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    return-void
.end method
