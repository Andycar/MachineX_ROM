.class Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 723
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 748
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    .line 727
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 728
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_CONTEXTUAL_PAGE"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.lockscreenshortcut.ExpandAppList"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    :goto_1
    const-string v5, ""

    .line 731
    .local v5, "shortcut_app_list":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v3

    .line 732
    .local v3, "numOfSavedShortcut":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-static {v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-static {v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, "shortcut_app":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 729
    .end local v1    # "i":I
    .end local v3    # "numOfSavedShortcut":I
    .end local v4    # "shortcut_app":Ljava/lang/String;
    .end local v5    # "shortcut_app_list":Ljava/lang/String;
    :cond_1
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.lockscreenshortcut.AppList"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 737
    .restart local v1    # "i":I
    .restart local v3    # "numOfSavedShortcut":I
    .restart local v5    # "shortcut_app_list":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 738
    .local v0, "clicked_view_index":I
    const/4 v0, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 739
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 742
    :cond_3
    const-string v6, "clicked_view_index"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    const-string v6, "shortcut_app_list"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v6, "num_of_shortcut"

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-static {v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 745
    const-string v6, "max_num_of_shortcut"

    sget v7, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-virtual {v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "personal_mode_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$302(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I

    .line 747
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    const/16 v7, 0x65

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 738
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
