.class Lcom/android/settings/ReadingModeSettings$1;
.super Ljava/lang/Object;
.source "ReadingModeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ReadingModeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ReadingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ReadingModeSettings;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 238
    const/4 v2, 0x0

    .line 240
    .local v2, "mCheckedApp":I
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$000(Lcom/android/settings/ReadingModeSettings;)I

    move-result v2

    .line 242
    const v3, 0x7f1003cd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 243
    .local v0, "appCheck":Landroid/widget/CheckBox;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$100(Lcom/android/settings/ReadingModeSettings;)Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings/ReadingModeSettings$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$100(Lcom/android/settings/ReadingModeSettings;)Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings/ReadingModeSettings$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "mAppinfo":Ljava/lang/String;
    const-string v3, "ReadingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnItemClickListener mAppinfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$200(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    sget v3, Lcom/android/settings/ReadingModeSettings;->MAX_READINGMODE:I

    if-ge v2, v3, :cond_1

    .line 252
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$200(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$300(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-virtual {v3}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    const v5, 0x7f0a1ac1

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/settings/ReadingModeSettings;->MAX_READINGMODE:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/ReadingModeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
