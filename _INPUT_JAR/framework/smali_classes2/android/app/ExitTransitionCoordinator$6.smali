.class Landroid/app/ExitTransitionCoordinator$6;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/app/Activity$TranslucentConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslucentConversionComplete(Z)V
    .registers 3
    .param p1, "drawComplete"    # Z

    .prologue
    .line 244
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    # getter for: Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$500(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 245
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    # invokes: Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$700(Landroid/app/ExitTransitionCoordinator;)V

    .line 247
    :cond_d
    return-void
.end method
