.class Lcom/samsung/wfd/WFDSourceService$1;
.super Lcom/samsung/wfd/IWfdSourceService$Stub;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WFDSourceService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WFDSourceService;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$1;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-direct {p0}, Lcom/samsung/wfd/IWfdSourceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public WFDGetSubtitleStatus()Z
    .registers 3

    .prologue
    .line 152
    const-string v0, "WFDSourceService"

    const-string v1, "WFDGetSubtitleStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->WFDGetSubtitleStatus()Z

    move-result v0

    return v0
.end method

.method public WFDGetSuspendStatus()Z
    .registers 3

    .prologue
    .line 157
    const-string v0, "WFDSourceService"

    const-string v1, "WFDGetSuspendStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->WFDGetSuspendStatus()Z

    move-result v0

    return v0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "subtitle"    # Ljava/lang/String;
    .param p2, "nFontSize"    # I

    .prologue
    .line 143
    invoke-static {p1, p2}, Lcom/samsung/wfd/WFDNative;->WFDPostSubtitle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public WFDPostSuspend(Ljava/lang/String;)Z
    .registers 5
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFDPostSuspend : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->WFDPostSuspend(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .registers 5
    .param p1, "bStatus"    # Z

    .prologue
    .line 147
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFDSetSubtitleStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->WFDSetSubtitleStatus(Z)Z

    move-result v0

    return v0
.end method

.method public WFDSetSuspendStatus(Z)Z
    .registers 5
    .param p1, "bStatus"    # Z

    .prologue
    .line 162
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFDSetSuspendStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->WFDSetSuspendStatus(Z)Z

    move-result v0

    return v0
.end method

.method public isDongleRenameAvailable()Z
    .registers 3

    .prologue
    .line 177
    const-string v0, "WFDSourceService"

    const-string v1, "isDongleRenameAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public renameSink(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameSink : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->renameSink(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setDisplayRotation(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 182
    const-string v0, "WFDSourceService"

    const-string/jumbo v1, "setDisplayRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setDisplayRotation(I)Z

    move-result v0

    return v0
.end method
