.class Lcom/android/settings/PreloadAppUpdateList$2;
.super Ljava/lang/Object;
.source "PreloadAppUpdateList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreloadAppUpdateList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreloadAppUpdateList;


# direct methods
.method constructor <init>(Lcom/android/settings/PreloadAppUpdateList;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    const v2, 0x7f1003cd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 155
    .local v0, "appCheck":Landroid/widget/CheckBox;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$000(Lcom/android/settings/PreloadAppUpdateList;)Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$000(Lcom/android/settings/PreloadAppUpdateList;)Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "mAppinfo":Ljava/lang/String;
    const-string v2, "PreloadAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnItemClickListener mAppinfo :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$100(Lcom/android/settings/PreloadAppUpdateList;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-virtual {v3}, Lcom/android/settings/PreloadAppUpdateList;->CheckedAll()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/PreloadAppUpdateList;->access$202(Lcom/android/settings/PreloadAppUpdateList;I)I

    .line 163
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$200(Lcom/android/settings/PreloadAppUpdateList;)I

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$300(Lcom/android/settings/PreloadAppUpdateList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$200(Lcom/android/settings/PreloadAppUpdateList;)I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$300(Lcom/android/settings/PreloadAppUpdateList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2, v5}, Lcom/android/settings/PreloadAppUpdateList;->access$202(Lcom/android/settings/PreloadAppUpdateList;I)I

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$100(Lcom/android/settings/PreloadAppUpdateList;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-virtual {v3}, Lcom/android/settings/PreloadAppUpdateList;->CheckedAll()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/PreloadAppUpdateList;->access$202(Lcom/android/settings/PreloadAppUpdateList;I)I

    .line 173
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$200(Lcom/android/settings/PreloadAppUpdateList;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 174
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$300(Lcom/android/settings/PreloadAppUpdateList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2}, Lcom/android/settings/PreloadAppUpdateList;->access$200(Lcom/android/settings/PreloadAppUpdateList;)I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList$2;->this$0:Lcom/android/settings/PreloadAppUpdateList;

    invoke-static {v2, v5}, Lcom/android/settings/PreloadAppUpdateList;->access$202(Lcom/android/settings/PreloadAppUpdateList;I)I

    goto :goto_0
.end method
