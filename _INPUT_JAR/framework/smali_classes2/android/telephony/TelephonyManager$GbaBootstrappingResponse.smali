.class public Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GbaBootstrappingResponse"
.end annotation


# instance fields
.field public auts:[B

.field public res:[B

.field final synthetic this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V
    .registers 4
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 5330
    iput-object p1, p0, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5331
    const-string/jumbo v0, "res"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;->res:[B

    .line 5332
    const-string v0, "auts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;->auts:[B

    .line 5333
    return-void
.end method
