.class public Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
.super Ljava/lang/Object;
.source "WifiCredService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiCredService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiHs20Timer"
.end annotation


# instance fields
.field private cred_id:I

.field private hs20_timer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiCredService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiCredService;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    .line 307
    iput p2, p0, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->cred_id:I

    .line 308
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    .prologue
    .line 300
    iget v0, p0, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->cred_id:I

    return v0
.end method
