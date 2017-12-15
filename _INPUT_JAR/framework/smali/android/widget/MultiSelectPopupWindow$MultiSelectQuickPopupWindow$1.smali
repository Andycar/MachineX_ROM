.class Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

.field final synthetic val$menuItemDiff:I


# direct methods
.method constructor <init>(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;I)V
    .registers 3

    .prologue
    .line 369
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;->this$1:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    iput p2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;->val$menuItemDiff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 372
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;->val$menuItemDiff:I

    mul-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 374
    .local v0, "t":I
    const-wide/16 v2, 0xc8

    :try_start_17
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 376
    :goto_1a
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    .line 377
    if-gtz v0, :cond_3d

    .line 378
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;->this$1:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 387
    :goto_3c
    return-void

    .line 381
    :cond_3d
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;->this$1:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 383
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4c} :catch_4d

    goto :goto_1a

    .line 385
    :catch_4d
    move-exception v1

    goto :goto_3c
.end method
