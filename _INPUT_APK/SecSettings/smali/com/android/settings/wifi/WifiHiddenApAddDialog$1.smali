.class Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;
.super Ljava/lang/Object;
.source "WifiHiddenApAddDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiHiddenApAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$400(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)V

    .line 102
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 93
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$002(Lcom/android/settings/wifi/WifiHiddenApAddDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20

    .line 74
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v5, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$000(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$000(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v5, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$000(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$300(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$300(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0491

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$202(Lcom/android/settings/wifi/WifiHiddenApAddDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 90
    :cond_1
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$100(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApAddDialog$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->access$200(Lcom/android/settings/wifi/WifiHiddenApAddDialog;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
