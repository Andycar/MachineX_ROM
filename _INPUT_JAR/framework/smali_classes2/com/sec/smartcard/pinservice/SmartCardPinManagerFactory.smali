.class public Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;
.super Ljava/lang/Object;
.source "SmartCardPinManagerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartCardPinManagerFactory"

.field private static mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

.field private static mScPinMgrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/smartcard/pinservice/SmartCardPinManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;
    .registers 3

    .prologue
    .line 58
    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    if-nez v0, :cond_12

    .line 59
    const-string v0, "SmartCardPinManagerFactory"

    const-string v1, "Creating a new factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    invoke-direct {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;-><init>()V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    .line 62
    :cond_12
    const-string v0, "SmartCardPinManagerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    return-object v0
.end method


# virtual methods
.method public deinitializeCAC(Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const-string v2, "SmartCardPinManagerFactory"

    const-string v3, "deinitializeCAC entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p1, :cond_65

    .line 119
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deinitializeCAC: userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 121
    .local v0, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 122
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deinitializeCAC: Already contains key for userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    check-cast v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 126
    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    :cond_5b
    if-eqz v1, :cond_65

    .line 127
    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->unbindSmartCardPinService()V

    .line 128
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_65
    return-void
.end method

.method public getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const-string v2, "SmartCardPinManagerFactory"

    const-string v3, "getSmartcardPinMgr entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz p2, :cond_c

    if-nez p1, :cond_e

    .line 71
    :cond_c
    const/4 v2, 0x0

    .line 86
    :goto_d
    return-object v2

    .line 73
    :cond_e
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 75
    .local v0, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 76
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Already contains key for userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    check-cast v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 80
    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    :cond_69
    if-nez v1, :cond_98

    .line 81
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Pin mgr for userHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not in map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;-><init>(Landroid/os/UserHandle;Landroid/content/Context;I)V

    .line 83
    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_98
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Returning smartcard pin mgr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 86
    goto/16 :goto_d
.end method

.method public getSmartcardPinMgr_Sync(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const-string v2, "SmartCardPinManagerFactory"

    const-string v3, "getSmartcardPinMgr_Sync entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz p2, :cond_c

    if-nez p1, :cond_e

    .line 94
    :cond_c
    const/4 v2, 0x0

    .line 111
    :goto_d
    return-object v2

    .line 96
    :cond_e
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 98
    .local v0, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 99
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Already contains key for userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    check-cast v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 103
    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    :cond_69
    if-nez v1, :cond_9b

    .line 104
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Pin mgr for userHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not in map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const/4 v2, 0x1

    invoke-direct {v1, p2, p1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;-><init>(Landroid/os/UserHandle;Landroid/content/Context;I)V

    .line 106
    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    invoke-virtual {v1, p2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService_Sync(Landroid/os/UserHandle;)V

    .line 108
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_9b
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Returning smartcard pin mgr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 111
    goto/16 :goto_d
.end method
