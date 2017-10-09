.class public abstract Ljava/util/prefs/AbstractPreferences;
.super Ljava/util/prefs/Preferences;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;,
        Ljava/util/prefs/AbstractPreferences$NodeAddEvent;,
        Ljava/util/prefs/AbstractPreferences$EventDispatcher;
    }
.end annotation


# static fields
.field private static final dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

.field private static final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cachedNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/prefs/AbstractPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private isRemoved:Z

.field protected final lock:Ljava/lang/Object;

.field protected newNode:Z

.field private nodeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private nodeName:Ljava/lang/String;

.field private parentPref:Ljava/util/prefs/AbstractPreferences;

.field private preferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljava/util/prefs/AbstractPreferences;

.field userNode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    const-string v1, "Preference Event Dispatcher"

    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    .line 60
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 61
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/util/prefs/AbstractPreferences$1;

    invoke-direct {v1}, Ljava/util/prefs/AbstractPreferences$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    .line 146
    if-nez p1, :cond_1f

    move v0, v1

    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_21

    :goto_e
    xor-int/2addr v0, v1

    if-nez v0, :cond_19

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_23

    .line 147
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1f
    move v0, v2

    .line 146
    goto :goto_8

    :cond_21
    move v1, v2

    goto :goto_e

    .line 149
    :cond_23
    if-nez p1, :cond_51

    move-object v0, p0

    :goto_26
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    .line 152
    iput-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    .line 154
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    iget-boolean v0, v0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    .line 158
    return-void

    .line 149
    :cond_51
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    goto :goto_26
.end method

.method static synthetic access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Ljava/util/prefs/AbstractPreferences;

    .prologue
    .line 43
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Ljava/util/prefs/AbstractPreferences;

    .prologue
    .line 43
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    return-object v0
.end method

.method private checkState()V
    .registers 3

    .prologue
    .line 636
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This node has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_e
    return-void
.end method

.method private getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 8
    .param p1, "createNew"    # Z
    .param p2, "currentNode"    # Ljava/util/prefs/AbstractPreferences;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_27

    .line 582
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' too long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_27
    if-eqz p1, :cond_42

    .line 586
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 587
    .local v0, "temp":Ljava/util/prefs/AbstractPreferences;
    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-boolean v1, v0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    if-eqz v1, :cond_41

    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_41

    .line 589
    invoke-direct {p2, v0}, Ljava/util/prefs/AbstractPreferences;->notifyChildAdded(Ljava/util/prefs/Preferences;)V

    .line 594
    :cond_41
    :goto_41
    return-object v0

    .line 592
    .end local v0    # "temp":Ljava/util/prefs/AbstractPreferences;
    :cond_42
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .restart local v0    # "temp":Ljava/util/prefs/AbstractPreferences;
    goto :goto_41
.end method

.method private nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "createNew"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 561
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, "names":[Ljava/lang/String;
    move-object v1, p0

    .line 564
    .local v1, "currentNode":Ljava/util/prefs/AbstractPreferences;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v3, :cond_23

    aget-object v4, v0, v2

    .line 565
    .local v4, "name":Ljava/lang/String;
    iget-object v8, v1, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 566
    :try_start_11
    iget-object v7, v1, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/prefs/AbstractPreferences;

    .line 567
    .local v6, "temp":Ljava/util/prefs/AbstractPreferences;
    if-nez v6, :cond_1f

    .line 568
    invoke-direct {p0, p2, v1, v4}, Ljava/util/prefs/AbstractPreferences;->getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v6

    .line 570
    :cond_1f
    monitor-exit v8

    .line 571
    move-object v1, v6

    .line 572
    if-nez v1, :cond_27

    .line 576
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "temp":Ljava/util/prefs/AbstractPreferences;
    :cond_23
    return-object v1

    .line 570
    .restart local v4    # "name":Ljava/lang/String;
    :catchall_24
    move-exception v7

    monitor-exit v8
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw v7

    .line 564
    .restart local v6    # "temp":Ljava/util/prefs/AbstractPreferences;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private notifyChildAdded(Ljava/util/prefs/Preferences;)V
    .registers 5
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    .prologue
    .line 795
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    .line 796
    .local v0, "nce":Ljava/util/prefs/NodeChangeEvent;
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v2

    .line 797
    :try_start_8
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 799
    monitor-exit v2

    .line 800
    return-void

    .line 799
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private notifyChildRemoved(Ljava/util/prefs/Preferences;)V
    .registers 5
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    .prologue
    .line 803
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    .line 804
    .local v0, "nce":Ljava/util/prefs/NodeChangeEvent;
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v2

    .line 805
    :try_start_8
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 807
    monitor-exit v2

    .line 808
    return-void

    .line 807
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 811
    new-instance v0, Ljava/util/prefs/PreferenceChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .local v0, "pce":Ljava/util/prefs/PreferenceChangeEvent;
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v2

    .line 813
    :try_start_8
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 815
    monitor-exit v2

    .line 816
    return-void

    .line 815
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private removeNodeImpl()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v9, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 709
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 710
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "childrenNames":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_d
    if-ge v5, v6, :cond_25

    aget-object v3, v0, v5

    .line 712
    .local v3, "childrenName":Ljava/lang/String;
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_22

    .line 713
    invoke-virtual {p0, v3}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v1

    .line 714
    .local v1, "child":Ljava/util/prefs/AbstractPreferences;
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .end local v1    # "child":Ljava/util/prefs/AbstractPreferences;
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 718
    .end local v3    # "childrenName":Ljava/lang/String;
    :cond_25
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .line 719
    .local v7, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/prefs/AbstractPreferences;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v8, v8, [Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/prefs/AbstractPreferences;

    .line 720
    .local v2, "children":[Ljava/util/prefs/AbstractPreferences;
    move-object v0, v2

    .local v0, "arr$":[Ljava/util/prefs/AbstractPreferences;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v6, :cond_44

    aget-object v1, v0, v5

    .line 721
    .restart local v1    # "child":Ljava/util/prefs/AbstractPreferences;
    invoke-direct {v1}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V

    .line 720
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 723
    .end local v1    # "child":Ljava/util/prefs/AbstractPreferences;
    :cond_44
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    .line 724
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    .line 725
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v8, v8, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    iget-object v10, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    monitor-exit v9
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_64

    .line 727
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v8, v8, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_63

    .line 728
    iget-object v8, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v8, p0}, Ljava/util/prefs/AbstractPreferences;->notifyChildRemoved(Ljava/util/prefs/Preferences;)V

    .line 730
    :cond_63
    return-void

    .line 726
    .end local v0    # "arr$":[Ljava/util/prefs/AbstractPreferences;
    .end local v2    # "children":[Ljava/util/prefs/AbstractPreferences;
    .end local v4    # "childrenNames":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/prefs/AbstractPreferences;>;"
    :catchall_64
    move-exception v8

    :try_start_65
    monitor-exit v9
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v8
.end method

.method private validateName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 551
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot end with \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_17
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot contain consecutive \'/\' characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_27
    return-void
.end method


# virtual methods
.method public absolutePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    if-nez v0, :cond_7

    .line 343
    const-string v0, "/"

    .line 347
    :goto_6
    return-object v0

    .line 344
    :cond_7
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne v0, v1, :cond_23

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 347
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 4
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    .prologue
    .line 734
    if-nez p1, :cond_a

    .line 735
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ncl == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_a
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 738
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 739
    :try_start_10
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    monitor-exit v1

    .line 741
    return-void

    .line 740
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 4
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    .prologue
    .line 745
    if-nez p1, :cond_a

    .line 746
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pcl == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_a
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 749
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 750
    :try_start_10
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    monitor-exit v1

    .line 752
    return-void

    .line 751
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected final cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/prefs/AbstractPreferences;

    return-object v0
.end method

.method protected abstract childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
.end method

.method public childrenNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 353
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 354
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 355
    .local v2, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v3, v1

    if-ge v0, v3, :cond_21

    .line 357
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 359
    :cond_21
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    monitor-exit v4

    return-object v3

    .line 360
    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method protected abstract childrenNamesSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public clear()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 366
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v3, :cond_13

    aget-object v2, v0, v1

    .line 367
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 369
    .end local v2    # "key":Ljava/lang/String;
    :cond_13
    monitor-exit v5

    .line 370
    return-void

    .line 369
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_15
    move-exception v4

    monitor-exit v5
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v4
.end method

.method public exportNode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "ostream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_a

    .line 375
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ostream == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_a
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 378
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    .line 379
    return-void
.end method

.method public exportSubtree(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "ostream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 383
    if-nez p1, :cond_a

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ostream == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_a
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 387
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    .line 388
    return-void
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 393
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V

    .line 394
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    .line 395
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 397
    .local v0, "cc":[Ljava/util/prefs/AbstractPreferences;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 398
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/util/prefs/AbstractPreferences;->flush()V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 394
    .end local v0    # "cc":[Ljava/util/prefs/AbstractPreferences;
    .end local v1    # "i":I
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2

    .line 400
    .restart local v0    # "cc":[Ljava/util/prefs/AbstractPreferences;
    .restart local v1    # "i":I
    :cond_1a
    return-void
.end method

.method protected abstract flushSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # Ljava/lang/String;

    .prologue
    .line 404
    if-nez p1, :cond_a

    .line 405
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_a
    const/4 v0, 0x0

    .line 408
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 409
    :try_start_e
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_19

    .line 411
    :try_start_11
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_1e
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    move-result-object v0

    .line 415
    :goto_15
    :try_start_15
    monitor-exit v2

    .line 416
    if-nez v0, :cond_1c

    .end local p2    # "deflt":Ljava/lang/String;
    :goto_18
    return-object p2

    .line 415
    .restart local p2    # "deflt":Ljava/lang/String;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    move-object p2, v0

    .line 416
    goto :goto_18

    .line 412
    :catch_1e
    move-exception v1

    goto :goto_15
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # Z

    .prologue
    .line 421
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 430
    .end local p2    # "deflt":Z
    :cond_7
    :goto_7
    return p2

    .line 425
    .restart local p2    # "deflt":Z
    :cond_8
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 426
    const/4 p2, 0x1

    goto :goto_7

    .line 427
    :cond_12
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 428
    const/4 p2, 0x0

    goto :goto_7
.end method

.method public getByteArray(Ljava/lang/String;[B)[B
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # [B

    .prologue
    .line 436
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "svalue":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 450
    .end local p2    # "deflt":[B
    :cond_7
    :goto_7
    return-object p2

    .line 440
    .restart local p2    # "deflt":[B
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    .line 441
    sget-object p2, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_7

    .line 444
    :cond_11
    :try_start_11
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 445
    .local v0, "bavalue":[B
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_7

    .line 448
    invoke-static {v0}, Llibcore/io/Base64;->decode([B)[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_21

    move-result-object p2

    goto :goto_7

    .line 449
    .end local v0    # "bavalue":[B
    :catch_21
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_7
.end method

.method protected getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v7, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 192
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 193
    const/4 v5, 0x0

    .line 194
    .local v5, "result":Ljava/util/prefs/AbstractPreferences;
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "childrenNames":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v4, :cond_1c

    aget-object v1, v0, v3

    .line 196
    .local v1, "childrenName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 197
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v5

    .line 201
    .end local v1    # "childrenName":Ljava/lang/String;
    :cond_1c
    monitor-exit v7

    return-object v5

    .line 195
    .restart local v1    # "childrenName":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 202
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "childrenName":Ljava/lang/String;
    .end local v2    # "childrenNames":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "result":Ljava/util/prefs/AbstractPreferences;
    :catchall_21
    move-exception v6

    monitor-exit v7
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v6
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # D

    .prologue
    .line 456
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 463
    .end local p2    # "deflt":D
    :goto_7
    return-wide p2

    .line 461
    .restart local p2    # "deflt":D
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p2

    goto :goto_7

    .line 462
    :catch_d
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # F

    .prologue
    .line 469
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 476
    .end local p2    # "deflt":F
    :goto_7
    return p2

    .line 474
    .restart local p2    # "deflt":F
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p2

    goto :goto_7

    .line 475
    :catch_d
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # I

    .prologue
    .line 482
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 489
    .end local p2    # "deflt":I
    :goto_7
    return p2

    .line 487
    .restart local p2    # "deflt":I
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p2

    goto :goto_7

    .line 488
    :catch_d
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # J

    .prologue
    .line 495
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 502
    .end local p2    # "deflt":J
    :goto_7
    return-wide p2

    .line 500
    .restart local p2    # "deflt":J
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p2

    goto :goto_7

    .line 501
    :catch_d
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method protected abstract getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected isRemoved()Z
    .registers 3

    .prologue
    .line 214
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_3
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    monitor-exit v1

    return v0

    .line 216
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isUserNode()Z
    .registers 3

    .prologue
    .line 508
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keys()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 515
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keysSpi()[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 516
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected abstract keysSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, "startNode":Ljava/util/prefs/AbstractPreferences;
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 528
    :try_start_4
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 529
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 531
    monitor-exit v3

    .line 546
    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :goto_11
    return-object p0

    .line 532
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :cond_12
    const-string v2, "/"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 533
    iget-object p0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    monitor-exit v3

    goto :goto_11

    .line 541
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v2

    .line 535
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :cond_21
    :try_start_21
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 536
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 537
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 541
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_1e

    .line 543
    const/4 v2, 0x1

    :try_start_32
    invoke-direct {v1, p1, v2}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_35
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_32 .. :try_end_35} :catch_39

    move-result-object p0

    goto :goto_11

    .line 539
    :cond_37
    move-object v1, p0

    goto :goto_30

    .line 544
    :catch_39
    move-exception v0

    .line 546
    .local v0, "e":Ljava/util/prefs/BackingStoreException;
    const/4 p0, 0x0

    goto :goto_11
.end method

.method public nodeExists(Ljava/lang/String;)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 599
    if-nez p1, :cond_c

    .line 600
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "name == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 602
    :cond_c
    const/4 v2, 0x0

    .line 603
    .local v2, "startNode":Ljava/util/prefs/AbstractPreferences;
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 604
    :try_start_10
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 606
    monitor-exit v5

    .line 625
    :goto_1d
    return v4

    .line 608
    :cond_1e
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This node has been removed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 620
    :catchall_26
    move-exception v3

    monitor-exit v5
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw v3

    .line 610
    :cond_29
    :try_start_29
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3a

    const-string v6, "/"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 612
    :cond_3a
    monitor-exit v5

    move v4, v3

    goto :goto_1d

    .line 614
    :cond_3d
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 615
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 616
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 620
    :goto_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_26

    .line 622
    const/4 v5, 0x0

    :try_start_4e
    invoke-direct {v2, p1, v5}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_51} :catch_5a

    move-result-object v1

    .line 623
    .local v1, "result":Ljava/util/prefs/Preferences;
    if-eqz v1, :cond_58

    :goto_54
    move v4, v3

    goto :goto_1d

    .line 618
    .end local v1    # "result":Ljava/util/prefs/Preferences;
    :cond_56
    move-object v2, p0

    goto :goto_4c

    .restart local v1    # "result":Ljava/util/prefs/Preferences;
    :cond_58
    move v3, v4

    .line 623
    goto :goto_54

    .line 624
    .end local v1    # "result":Ljava/util/prefs/Preferences;
    :catch_5a
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1d
.end method

.method public parent()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 632
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 643
    if-nez p1, :cond_a

    .line 644
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_a
    if-nez p2, :cond_14

    .line 646
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_24

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2a

    .line 649
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 651
    :cond_2a
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_2d
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 653
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_38

    .line 655
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void

    .line 654
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 660
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 665
    invoke-static {p2}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 670
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 675
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 680
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 685
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method protected abstract putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 692
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V

    .line 693
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void

    .line 693
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeNode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne v0, p0, :cond_c

    .line 700
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove root node"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_c
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v1, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_11
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V

    .line 704
    monitor-exit v1

    .line 705
    return-void

    .line 704
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 5
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 757
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    monitor-enter v2

    .line 759
    :try_start_6
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 760
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 763
    .end local v0    # "pos":I
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1

    .line 762
    .restart local v0    # "pos":I
    :cond_18
    :try_start_18
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 763
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    .line 764
    return-void
.end method

.method protected abstract removeNodeSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 5
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 769
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    monitor-enter v2

    .line 771
    :try_start_6
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 772
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 775
    .end local v0    # "pos":I
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1

    .line 774
    .restart local v0    # "pos":I
    :cond_18
    :try_start_18
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 775
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    .line 776
    return-void
.end method

.method protected abstract removeSpi(Ljava/lang/String;)V
.end method

.method public sync()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 781
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 782
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V

    .line 783
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 784
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/prefs/AbstractPreferences;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_1d

    aget-object v1, v0, v2

    .line 785
    .local v1, "child":Ljava/util/prefs/AbstractPreferences;
    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->sync()V

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 783
    .end local v0    # "arr$":[Ljava/util/prefs/AbstractPreferences;
    .end local v1    # "child":Ljava/util/prefs/AbstractPreferences;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_1a
    move-exception v4

    :try_start_1b
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v4

    .line 787
    .restart local v0    # "arr$":[Ljava/util/prefs/AbstractPreferences;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1d
    return-void
.end method

.method protected abstract syncSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "User"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Preference Node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    const-string v0, "System"

    goto :goto_d
.end method
