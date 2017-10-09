.class Lcom/android/settings/RecommendedAppsList$1;
.super Ljava/lang/Object;
.source "RecommendedAppsList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RecommendedAppsList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RecommendedAppsList;


# direct methods
.method constructor <init>(Lcom/android/settings/RecommendedAppsList;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

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

    .line 256
    const/4 v2, 0x0

    .line 258
    .local v2, "mCheckedApp":I
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v3}, Lcom/android/settings/RecommendedAppsList;->access$000(Lcom/android/settings/RecommendedAppsList;)I

    move-result v2

    .line 260
    const v3, 0x7f1003cd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 261
    .local v0, "appCheck":Landroid/widget/CheckBox;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v3}, Lcom/android/settings/RecommendedAppsList;->access$100(Lcom/android/settings/RecommendedAppsList;)Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v3}, Lcom/android/settings/RecommendedAppsList;->access$100(Lcom/android/settings/RecommendedAppsList;)Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

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

    .line 263
    .local v1, "mAppinfo":Ljava/lang/String;
    const-string v3, "RecommendedAppList"

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

    .line 265
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    if-le v2, v6, :cond_0

    .line 267
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v3}, Lcom/android/settings/RecommendedAppsList;->access$200(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_0
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v3}, Lcom/android/settings/RecommendedAppsList;->access$400(Lcom/android/settings/RecommendedAppsList;)V

    .line 283
    return-void

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v3}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    const v5, 0x7f0a1d4e

    invoke-virtual {v4, v5}, Lcom/android/settings/RecommendedAppsList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 273
    :cond_1
    sget v3, Lcom/android/settings/RecommendedAppsList;->MAX_RECOMMENDED_APPS:I

    if-ge v2, v3, :cond_2

    .line 274
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v3}, Lcom/android/settings/RecommendedAppsList;->access$200(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v3}, Lcom/android/settings/RecommendedAppsList;->access$300(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v3}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsList$1;->this$0:Lcom/android/settings/RecommendedAppsList;

    const v5, 0x7f0a1d4d

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/settings/RecommendedAppsList;->MAX_RECOMMENDED_APPS:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/RecommendedAppsList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
