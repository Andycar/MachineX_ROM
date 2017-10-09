.class Lcom/android/systemui/recents/AlternateRecentsComponent$4;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;->makeRecentHelpPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

.field final synthetic val$helpVersionCode:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;I)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iput p2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->val$helpVersionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 899
    :try_start_0
    iget v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->val$helpVersionCode:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v7, :cond_2

    .line 922
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-static {v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->access$000(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 924
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v2, v2, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recent_menukey_dialog_do_not_show"

    invoke-static {v2, v3, v7, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 928
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    .line 930
    return-void

    .line 905
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->val$helpVersionCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 906
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "keys"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 909
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v2, v2, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 918
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Recents_AlternateRecentsComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error launching activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 912
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->val$helpVersionCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 913
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "helphub:appid"

    const-string v3, "keys"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$4;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v2, v2, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
