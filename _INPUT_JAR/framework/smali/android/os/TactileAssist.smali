.class public Landroid/os/TactileAssist;
.super Ljava/lang/Object;
.source "TactileAssist.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TactileAssist"


# instance fields
.field private final mService:Landroid/os/ITactileAssistService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "tactileassist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ITactileAssistService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITactileAssistService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    .line 37
    return-void
.end method


# virtual methods
.method public getActuators()[I
    .registers 4

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->getActuators()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 45
    :goto_6
    return-object v1

    .line 42
    :catch_7
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to get Actuators"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDensity(II)Z
    .registers 9
    .param p1, "actuator"    # I
    .param p2, "density"    # I

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 109
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_22

    .line 110
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_21
    return v2

    .line 114
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1, p2}, Landroid/os/ITactileAssistService;->setDensity(II)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v2

    goto :goto_21

    .line 115
    :catch_29
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist density"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setEnable(Z)Z
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 50
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_22

    .line 51
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_21
    return v2

    .line 55
    :cond_22
    :try_start_22
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accessibility test : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1}, Landroid/os/ITactileAssistService;->setEnable(Z)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3f} :catch_41

    move-result v2

    goto :goto_21

    .line 57
    :catch_41
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to enable TactileAssist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setInternalEnable(Z)Z
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 65
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_22

    .line 66
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_21
    return v2

    .line 70
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1}, Landroid/os/ITactileAssistService;->setInternalEnable(Z)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v2

    goto :goto_21

    .line 71
    :catch_29
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to internal enable TactileAssist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setLevel(I)Z
    .registers 8
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 79
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_22

    .line 80
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_21
    return v2

    .line 84
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1}, Landroid/os/ITactileAssistService;->setLevel(I)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v2

    goto :goto_21

    .line 85
    :catch_29
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist Level"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setSharpness(II)Z
    .registers 9
    .param p1, "actuator"    # I
    .param p2, "sharpness"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 123
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_22

    .line 124
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_21
    return v2

    .line 128
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1, p2}, Landroid/os/ITactileAssistService;->setSharpness(II)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v2

    goto :goto_21

    .line 129
    :catch_29
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist sharpness"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setStrength(II)Z
    .registers 9
    .param p1, "actuator"    # I
    .param p2, "strength"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 94
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_22

    .line 95
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_21
    return v2

    .line 99
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1, p2}, Landroid/os/ITactileAssistService;->setStrength(II)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v2

    goto :goto_21

    .line 100
    :catch_29
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist strength"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public storeAppList()Z
    .registers 4

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->storeAppList()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 142
    :goto_6
    return v1

    .line 139
    :catch_7
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to store app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    goto :goto_6
.end method
