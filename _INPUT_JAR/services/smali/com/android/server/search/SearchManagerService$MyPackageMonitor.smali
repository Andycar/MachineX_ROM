.class Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private updateSearchables()V
    .registers 7

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 155
    .local v0, "changingUserId":I
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 158
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v0, v3, :cond_53

    .line 159
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v5, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    # invokes: Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;
    invoke-static {v3, v5}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/search/Searchables;->buildSearchableList()V

    .line 163
    :cond_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_56

    .line 165
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$200(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 169
    return-void

    .line 157
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 163
    :catchall_56
    move-exception v3

    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v3
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 151
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 146
    return-void
.end method
