.class public Landroid/app/AppImportanceMonitor;
.super Ljava/lang/Object;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppImportanceMonitor$AppEntry;
    }
.end annotation


# static fields
.field static final MSG_UPDATE:I = 0x1


# instance fields
.field final mApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AppImportanceMonitor$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mProcessObserver:Landroid/app/IProcessObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    .line 48
    new-instance v4, Landroid/app/AppImportanceMonitor$1;

    invoke-direct {v4, p0}, Landroid/app/AppImportanceMonitor$1;-><init>(Landroid/app/AppImportanceMonitor;)V

    iput-object v4, p0, Landroid/app/AppImportanceMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 76
    iput-object p1, p0, Landroid/app/AppImportanceMonitor;->mContext:Landroid/content/Context;

    .line 77
    new-instance v4, Landroid/app/AppImportanceMonitor$2;

    invoke-direct {v4, p0, p2}, Landroid/app/AppImportanceMonitor$2;-><init>(Landroid/app/AppImportanceMonitor;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/app/AppImportanceMonitor;->mHandler:Landroid/os/Handler;

    .line 89
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 91
    .local v0, "am":Landroid/app/ActivityManager;
    :try_start_22
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/AppImportanceMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_4c

    .line 94
    :goto_2b
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_4b

    .line 96
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 97
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 98
    .local v1, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 101
    .end local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i":I
    :cond_4b
    return-void

    .line 92
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_4c
    move-exception v4

    goto :goto_2b
.end method


# virtual methods
.method public getImportance(I)I
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 104
    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppImportanceMonitor$AppEntry;

    .line 105
    .local v0, "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    if-nez v0, :cond_d

    .line 106
    const/16 v1, 0x3e8

    .line 108
    :goto_c
    return v1

    :cond_d
    iget v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    goto :goto_c
.end method

.method public onImportanceChanged(III)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "importance"    # I
    .param p3, "oldImportance"    # I

    .prologue
    .line 115
    return-void
.end method

.method updateImportanceLocked(IIIZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "importance"    # I
    .param p4, "repChange"    # Z

    .prologue
    .line 118
    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppImportanceMonitor$AppEntry;

    .line 119
    .local v0, "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    if-nez v0, :cond_14

    .line 120
    new-instance v0, Landroid/app/AppImportanceMonitor$AppEntry;

    .end local v0    # "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    invoke-direct {v0, p1}, Landroid/app/AppImportanceMonitor$AppEntry;-><init>(I)V

    .line 121
    .restart local v0    # "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    :cond_14
    const/16 v1, 0x3e8

    if-lt p3, v1, :cond_21

    .line 124
    iget-object v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 128
    :goto_1d
    invoke-virtual {p0, v0, p4}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(Landroid/app/AppImportanceMonitor$AppEntry;Z)V

    .line 129
    return-void

    .line 126
    :cond_21
    iget-object v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1d
.end method

.method updateImportanceLocked(Landroid/app/AppImportanceMonitor$AppEntry;Z)V
    .registers 10
    .param p1, "ent"    # Landroid/app/AppImportanceMonitor$AppEntry;
    .param p2, "repChange"    # Z

    .prologue
    .line 132
    const/16 v0, 0x3e8

    .line 133
    .local v0, "appImp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1d

    .line 134
    iget-object v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 135
    .local v3, "procImp":I
    if-ge v3, v0, :cond_1a

    .line 136
    move v0, v3

    .line 133
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 139
    .end local v3    # "procImp":I
    :cond_1d
    iget v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    if-eq v0, v4, :cond_42

    .line 140
    iget v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    shl-int/lit8 v4, v4, 0x10

    or-int v2, v0, v4

    .line 141
    .local v2, "impCode":I
    iput v0, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    .line 142
    const/16 v4, 0x3e8

    if-lt v0, v4, :cond_34

    .line 143
    iget-object v4, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/AppImportanceMonitor$AppEntry;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 145
    :cond_34
    if-eqz p2, :cond_42

    .line 146
    iget-object v4, p0, Landroid/app/AppImportanceMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/AppImportanceMonitor$AppEntry;->uid:I

    invoke-virtual {v4, v5, v6, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 149
    .end local v2    # "impCode":I
    :cond_42
    return-void
.end method
