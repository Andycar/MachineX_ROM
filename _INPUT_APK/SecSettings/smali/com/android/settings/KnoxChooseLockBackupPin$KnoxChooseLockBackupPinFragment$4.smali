.class Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$4;
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
    .line 167
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$4;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$4;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-virtual {v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$4;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-virtual {v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 173
    return-void
.end method
