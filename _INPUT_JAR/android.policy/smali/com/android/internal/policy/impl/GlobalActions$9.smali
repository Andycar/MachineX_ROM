.class Lcom/android/internal/policy/impl/GlobalActions$9;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1365
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$300()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1366
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2902(Z)Z

    .line 1367
    const-string v0, "GlobalActions"

    const-string v1, "onCancel(), set mIsMiniDialogMode as false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_11
    return-void
.end method
