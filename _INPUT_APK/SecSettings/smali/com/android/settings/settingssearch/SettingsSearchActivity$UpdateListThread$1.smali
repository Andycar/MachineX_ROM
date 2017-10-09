.class Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$202(Lcom/android/settings/settingssearch/SettingsSearchManager;)Lcom/android/settings/settingssearch/SettingsSearchManager;

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, ""

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    :cond_1
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$600()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    const-string v0, ""

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$702(Lcom/android/settings/settingssearch/SettingsSearchActivity;Z)Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$800(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$702(Lcom/android/settings/settingssearch/SettingsSearchActivity;Z)Z

    .line 159
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 161
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 165
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread$1;->this$1:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$300(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method
