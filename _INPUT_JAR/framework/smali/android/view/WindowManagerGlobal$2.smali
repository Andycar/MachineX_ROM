.class Landroid/view/WindowManagerGlobal$2;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 227
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    # getter for: Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 228
    :try_start_7
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    # getter for: Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_27

    .line 229
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    # getter for: Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 228
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 231
    :cond_27
    monitor-exit v2

    .line 232
    return-void

    .line 231
    .end local v0    # "i":I
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
