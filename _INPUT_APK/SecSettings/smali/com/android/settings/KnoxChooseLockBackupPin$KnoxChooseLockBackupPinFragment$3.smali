.class Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$3;
.super Ljava/lang/Object;
.source "KnoxChooseLockBackupPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$3;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$3;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-virtual {v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$3;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-static {v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->access$200(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V

    .line 163
    return-void
.end method
