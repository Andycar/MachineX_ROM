.class Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;
.super Ljava/lang/Object;
.source "SettingsSearchListPathAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "cmpButton"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .prologue
    const/4 v4, 0x1

    .line 329
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    .line 330
    .local v2, "position":I
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    invoke-virtual {v5, v2}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v5

    iget v3, v5, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 332
    .local v3, "rowId":I
    new-instance v1, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    invoke-static {v5}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->access$100(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    .line 333
    .local v1, "mSearchManger":Lcom/android/settings/settingssearch/SettingsSearchManager;
    invoke-virtual {v1, v3}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    .line 334
    .local v0, "item":Lcom/android/settings/settingssearch/SettingsSearchItem;
    if-ne p2, v4, :cond_1

    :goto_0
    iput v4, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 335
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->access$100(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    .line 336
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;->access$300(Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void

    .line 334
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
