.class Lcom/android/server/pm/SELinuxMMAC$Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Policy"
.end annotation


# instance fields
.field allowCategory:Ljava/lang/String;

.field category:I

.field isContainerApp:Z

.field private final pkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seinfo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    .line 221
    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->isContainerApp:Z

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/SELinuxMMAC$Policy;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/SELinuxMMAC$Policy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/SELinuxMMAC$Policy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method checkPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "seinfoValue":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 248
    .end local v0    # "seinfoValue":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "seinfoValue":Ljava/lang/String;
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    goto :goto_a
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method putPkg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method putSeinfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    .line 228
    return-void
.end method
