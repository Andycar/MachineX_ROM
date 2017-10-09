.class Lcom/android/settings/settingssearch/SettingsSearchActivity$7;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$7;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 407
    const/16 v3, 0x42

    if-eq p2, v3, :cond_0

    const/16 v3, 0x17

    if-ne p2, v3, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 408
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$7;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1100(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 409
    .local v1, "position":I
    const/4 v2, 0x0

    .line 410
    .local v2, "rowId":I
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1200()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$7;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$700(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 411
    :cond_1
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    if-gez v1, :cond_3

    .line 430
    .end local v1    # "position":I
    .end local v2    # "rowId":I
    :cond_2
    :goto_0
    return v5

    .line 413
    .restart local v1    # "position":I
    .restart local v2    # "rowId":I
    :cond_3
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, ""

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "end_of_same_path_menu"

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    :cond_4
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    iget v2, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 424
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "rowId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1400()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    if-lez v1, :cond_2

    .line 422
    :cond_6
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$1400()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v3

    iget v2, v3, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    goto :goto_1
.end method
