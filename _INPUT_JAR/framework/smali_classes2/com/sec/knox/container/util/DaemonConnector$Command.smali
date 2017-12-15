.class public Lcom/sec/knox/container/util/DaemonConnector$Command;
.super Ljava/lang/Object;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCmd:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    .line 455
    iput-object p1, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;

    .line 456
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v3, :cond_18

    aget-object v0, v1, v2

    .line 457
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 459
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_18
    return-void
.end method

.method static synthetic access$000(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sec/knox/container/util/DaemonConnector$Command;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/sec/knox/container/util/DaemonConnector$Command;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    return-object p0
.end method
