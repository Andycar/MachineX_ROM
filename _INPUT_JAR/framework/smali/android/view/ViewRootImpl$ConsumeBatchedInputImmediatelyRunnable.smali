.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputImmediatelyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .prologue
    .line 6684
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 6687
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)V

    .line 6688
    return-void
.end method
