.class Lcom/android/settings/easymode/EasyModeApp$2;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeApp;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 989
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 990
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$100(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    const-string v6, "easy_mode_switch"

    invoke-virtual {v3, v6}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v2

    .line 992
    .local v2, "mPrevModeState":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v1, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 994
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK onClick mPrevModeState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mModeState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v7}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK onClick isDefaultEasyLauncher : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v7}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_select_all"

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 997
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 998
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0a0a24

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 999
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 996
    goto :goto_0

    .line 1001
    :cond_1
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1002
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 2"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1004
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->setStandardFont()V

    .line 1006
    :cond_2
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 1007
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->access$802(Lcom/android/settings/easymode/EasyModeApp;I)I

    .line 1008
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_flag_for_talkback"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1009
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$100(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startStandardMode()V

    .line 1010
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    .line 1011
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto :goto_1

    .line 1012
    :cond_3
    if-ne v2, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_5

    .line 1013
    const-string v3, "EasyModeApp"

    const-string v6, "KKK onClick case 3"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$1100(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 1015
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 1016
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1017
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->setLargeFont()V

    .line 1019
    :cond_4
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->access$802(Lcom/android/settings/easymode/EasyModeApp;I)I

    .line 1020
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$1200(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "easy_mode_flag_for_talkback"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1021
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$100(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startEasyMode()V

    .line 1022
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    .line 1023
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1

    .line 1024
    :cond_5
    if-ne v2, v4, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_7

    .line 1026
    :cond_6
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 4"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 1028
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    .line 1029
    :cond_7
    if-nez v2, :cond_9

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_9

    .line 1030
    const-string v3, "EasyModeApp"

    const-string v5, "KKK onClick case 5"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$1100(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 1032
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1033
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1

    .line 1035
    :cond_8
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 1036
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    .line 1039
    :cond_9
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 6"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1
.end method
