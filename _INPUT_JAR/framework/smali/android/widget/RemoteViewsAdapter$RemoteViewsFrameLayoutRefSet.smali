.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayoutRefSet"
.end annotation


# instance fields
.field private mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewToLinkedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .registers 3

    .prologue
    .line 370
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    .line 374
    return-void
.end method


# virtual methods
.method public add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "layout"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .prologue
    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 384
    .local v0, "pos":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 385
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 390
    .local v1, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :goto_14
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 394
    return-void

    .line 387
    .end local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :cond_1d
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 388
    .restart local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 436
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 437
    return-void
.end method

.method public notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;

    .prologue
    .line 401
    if-nez p2, :cond_3

    .line 417
    :cond_2
    :goto_2
    return-void

    .line 403
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 404
    .local v1, "pos":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 407
    .local v3, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 408
    .local v2, "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter;->access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 409
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 410
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 413
    .end local v2    # "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_3e
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 415
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .registers 3
    .param p1, "rvfl"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .prologue
    .line 423
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 424
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_18
    return-void
.end method
