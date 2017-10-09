.class public Lcom/android/settings/nearby/DeleteButtonListener;
.super Ljava/lang/Object;
.source "DeleteButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bAcceptList:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/nearby/ListItemListener;

.field private mParent:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/nearby/ListItemListener;
    .param p2, "parent"    # Landroid/app/Dialog;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "acceptList"    # Z

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    .line 17
    iput-object v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mParent:Landroid/app/Dialog;

    .line 19
    iput-object v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mContext:Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->bAcceptList:Z

    .line 25
    iput-object p2, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mParent:Landroid/app/Dialog;

    .line 26
    iput-object p1, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    .line 27
    iput-object p3, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mContext:Landroid/content/Context;

    .line 28
    iput-boolean p4, p0, Lcom/android/settings/nearby/DeleteButtonListener;->bAcceptList:Z

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    const-string v5, "DeleteButtonListener"

    const-string v6, "onClick"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE BUTTON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    invoke-virtual {v8}, Lcom/android/settings/nearby/ListItemListener;->getCheckedItems()Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v5, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    invoke-virtual {v5}, Lcom/android/settings/nearby/ListItemListener;->getCheckedItems()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 36
    .local v2, "list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    .line 37
    .local v3, "size":I
    new-array v4, v3, [I

    .line 39
    .local v4, "value":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 40
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 41
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "ACCEPTLIST"

    iget-boolean v6, p0, Lcom/android/settings/nearby/DeleteButtonListener;->bAcceptList:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    const-string v5, "INDEX"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 48
    iget-object v5, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    iget-object v5, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mParent:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 51
    return-void
.end method
