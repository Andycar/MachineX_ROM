.class Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$1;
.super Ljava/lang/Object;
.source "KnoxChooseLockBackupPin.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 115
    iput-object p1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9.,]+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-static {v1}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->access$100(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V

    .line 127
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-static {v1}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->access$000(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$1;->this$0:Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    invoke-static {v1}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->access$000(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 139
    return-void
.end method
