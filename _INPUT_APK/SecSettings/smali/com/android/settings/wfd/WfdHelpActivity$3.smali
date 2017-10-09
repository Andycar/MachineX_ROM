.class Lcom/android/settings/wfd/WfdHelpActivity$3;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdHelpActivity;

.field final synthetic val$not_show_again:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdHelpActivity;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wfd_help_do_not_show_again"

    const-string v3, "wfdhelpkey"

    iget-object v4, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/wfd/WfdHelpActivity;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdHelpActivity;->access$100(Lcom/android/settings/wfd/WfdHelpActivity;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 170
    return-void
.end method
