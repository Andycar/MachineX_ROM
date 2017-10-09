.class final Lcom/android/server/tv/TvInputManagerService$ServiceState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceState"
.end annotation


# instance fields
.field private bound:Z

.field private callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

.field private final component:Landroid/content/ComponentName;

.field private final connection:Landroid/content/ServiceConnection;

.field private final inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isHardware:Z

.field private reconnecting:Z

.field private service:Landroid/media/tv/ITvInputService;

.field private final sessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 6
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 1670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->inputList:Ljava/util/List;

    .line 1678
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    .line 1679
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;

    .line 1680
    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    # invokes: Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$6100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 1681
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 1665
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->inputList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Landroid/media/tv/ITvInputService;

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Z

    .prologue
    .line 1665
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Z

    .prologue
    .line 1665
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    return-object v0
.end method
