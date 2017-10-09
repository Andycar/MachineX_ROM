.class Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "AccountMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;

    invoke-static {v0}, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->access$000(Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;

    invoke-static {v1}, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->access$100(Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 237
    return-void
.end method
