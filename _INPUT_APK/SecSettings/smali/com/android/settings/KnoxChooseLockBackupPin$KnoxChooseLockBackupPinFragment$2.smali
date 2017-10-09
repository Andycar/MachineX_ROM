.class Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$2;
.super Ljava/lang/Object;
.source "KnoxChooseLockBackupPin.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 143
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$2;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 147
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$2;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-virtual {v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$2;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-static {v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->access$200(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V

    .line 152
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
