.class Lcom/android/settings/DeviceNameSettings$1;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceNameSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceNameSettings;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 130
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/DeviceNameSettings;->access$102(Lcom/android/settings/DeviceNameSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v8, 0x16

    const/4 v7, 0x0

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$000(Lcom/android/settings/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_2

    .line 102
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$100(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$100(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v8, :cond_4

    .line 104
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceNameSettings;->access$100(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_5

    .line 109
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {v2}, Lcom/android/settings/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    const v4, 0x7f0a0491

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DeviceNameSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/DeviceNameSettings;->access$302(Lcom/android/settings/DeviceNameSettings;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 111
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 118
    :cond_2
    return-void

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$000(Lcom/android/settings/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    :cond_5
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
