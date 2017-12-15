.class public Landroid/os/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field registrants:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v3, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_8
    if-ge v0, v2, :cond_18

    .line 77
    iget-object v3, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 78
    .local v1, "r":Landroid/os/Registrant;
    invoke-virtual {v1, p1, p2}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1a

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 80
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_18
    monitor-exit p0

    return-void

    .line 76
    .end local v2    # "s":I
    :catchall_1a
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized add(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Landroid/os/Registrant;)V
    .registers 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 46
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 47
    monitor-exit p0

    return-void

    .line 45
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 39
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public notifyRegistrants()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public notifyRegistrants(Landroid/os/AsyncResult;)V
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 104
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public declared-synchronized remove(Landroid/os/Handler;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2
    iget-object v4, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "s":I
    :goto_8
    if-ge v0, v3, :cond_20

    .line 111
    iget-object v4, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 114
    .local v1, "r":Landroid/os/Registrant;
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 119
    .local v2, "rh":Landroid/os/Handler;
    if-eqz v2, :cond_1a

    if-ne v2, p1, :cond_1d

    .line 120
    :cond_1a
    invoke-virtual {v1}, Landroid/os/Registrant;->clear()V

    .line 110
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 124
    .end local v1    # "r":Landroid/os/Registrant;
    .end local v2    # "rh":Landroid/os/Handler;
    :cond_20
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_25

    .line 125
    monitor-exit p0

    return-void

    .line 110
    .end local v3    # "s":I
    :catchall_25
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeCleared()V
    .registers 4

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1f

    .line 53
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 55
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, v1, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1c

    .line 56
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    .line 52
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 59
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_1f
    monitor-exit p0

    return-void

    .line 52
    .end local v0    # "i":I
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
