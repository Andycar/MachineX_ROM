.class Lcom/android/settings/fmm/SimChangeAlert$2;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040088

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/fmm/SimChangeAlert;->access$002(Lcom/android/settings/fmm/SimChangeAlert;Landroid/view/View;)Landroid/view/View;

    .line 212
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    iget-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v1}, Lcom/android/settings/fmm/SimChangeAlert;->access$000(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f10016e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/android/settings/fmm/SimChangeAlert;->access$102(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 213
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0fab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v2}, Lcom/android/settings/fmm/SimChangeAlert;->access$000(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fmm/SimChangeAlert$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/SimChangeAlert$2$1;-><init>(Lcom/android/settings/fmm/SimChangeAlert$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 240
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 242
    return-void
.end method
