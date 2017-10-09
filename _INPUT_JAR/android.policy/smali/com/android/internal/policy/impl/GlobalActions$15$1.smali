.class Lcom/android/internal/policy/impl/GlobalActions$15$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$15;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$15;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$15;)V
    .registers 2

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$15$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1671
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1686
    :goto_6
    return-void

    .line 1677
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$15;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$15$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$15$1$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$15$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method
