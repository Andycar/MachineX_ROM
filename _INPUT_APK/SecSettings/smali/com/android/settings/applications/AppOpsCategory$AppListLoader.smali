.class public Lcom/android/settings/applications/AppOpsCategory$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

.field mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

.field final mState:Lcom/android/settings/applications/AppOpsState;

.field final mTemplate:Lcom/android/settings/applications/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/settings/applications/AppOpsState;
    .param p3, "template"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

    .line 127
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/AppOpsState;

    .line 128
    iput-object p3, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 129
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 148
    :cond_0
    move-object v0, p1

    .line 149
    .local v0, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 160
    :cond_1
    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 163
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/AppOpsState;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 212
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onStopLoading()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 227
    iput-object v2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    iput-object v2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 235
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 173
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    if-nez v1, :cond_1

    .line 181
    new-instance v1, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/AppOpsCategory$AppListLoader;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 188
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->forceLoad()V

    .line 193
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->cancelLoad()Z

    .line 201
    return-void
.end method
