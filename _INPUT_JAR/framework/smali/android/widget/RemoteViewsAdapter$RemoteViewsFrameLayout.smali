.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFrameLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 343
    return-void
.end method


# virtual methods
.method public onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 6
    .param p1, "view"    # Landroid/widget/RemoteViews;
    .param p2, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 353
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V

    .line 354
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p0, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 358
    :goto_e
    return-void

    .line 355
    :catch_f
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteViewsAdapter"

    const-string v2, "Failed to apply RemoteViews."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
