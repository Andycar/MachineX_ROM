.class public Landroid/app/BarBeamFactory;
.super Ljava/lang/Object;
.source "BarBeamFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarBeamFactory"


# instance fields
.field private mbarbeamcmd:Landroid/app/BarBeamCommand;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 39
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_c
    .catch Landroid/app/BarBeamException; {:try_start_6 .. :try_end_c} :catch_d

    .line 45
    return-void

    .line 40
    :catch_d
    move-exception v0

    .line 42
    .local v0, "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 43
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/app/Hop;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "HopSequencearray"    # [Landroid/app/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 52
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_c
    .catch Landroid/app/BarBeamException; {:try_start_6 .. :try_end_c} :catch_16

    .line 57
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_15

    .line 59
    :try_start_10
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p2}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_15
    .catch Landroid/app/BarBeamException; {:try_start_10 .. :try_end_15} :catch_22

    .line 64
    :cond_15
    return-void

    .line 53
    :catch_16
    move-exception v0

    .line 54
    .local v0, "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 55
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Landroid/app/BarBeamException;
    :catch_22
    move-exception v0

    .line 61
    .restart local v0    # "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 62
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public StartBarBeamFactory([B)Z
    .registers 8
    .param p1, "barcode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "ret":Z
    :try_start_1
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3, p1}, Landroid/app/BarBeamCommand;->setBarcode([B)V

    .line 114
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3}, Landroid/app/BarBeamCommand;->startBeaming()V

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1b

    .line 117
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v3, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_24

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 118
    const/4 v2, 0x1

    .line 131
    :cond_1b
    return v2

    .line 122
    :cond_1c
    const-wide/16 v4, 0x64

    :try_start_1e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_24

    .line 115
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 126
    .end local v1    # "i":I
    :catch_24
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "BarBeamFactory"

    const-string v4, "Failed loading MobeamLED implementation: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    new-instance v3, Landroid/app/BarBeamException;

    const-string v4, "BarBeamException in setHopSequence :"

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 123
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :catch_34
    move-exception v3

    goto :goto_21
.end method

.method public StopBarBeamFactory()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, "ret":Z
    :try_start_1
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3}, Landroid/app/BarBeamCommand;->stopBeaming()V

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v3, 0x5

    if-ge v1, v3, :cond_15

    .line 145
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v3, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_1e

    move-result v3

    if-nez v3, :cond_16

    .line 146
    const/4 v2, 0x1

    .line 158
    :cond_15
    return v2

    .line 150
    :cond_16
    const-wide/16 v4, 0x64

    :try_start_18
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1e

    .line 143
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 154
    .end local v1    # "i":I
    :catch_1e
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "BarBeamFactory"

    const-string v4, "BarBeamException in getCurrentStatus: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    new-instance v3, Landroid/app/BarBeamException;

    const-string v4, "BarBeamException in getCurrentStatus :"

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 151
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :catch_2e
    move-exception v3

    goto :goto_1b
.end method

.method protected getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_a

    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "Context is null"

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_a
    :try_start_a
    const-string v2, "barbeam"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamCommand;

    .line 79
    .local v1, "m":Landroid/app/BarBeamCommand;
    invoke-interface {v1}, Landroid/app/BarBeamCommand;->isImplementationCompatible()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_19

    move-result v2

    if-eqz v2, :cond_21

    return-object v1

    .line 80
    .end local v1    # "m":Landroid/app/BarBeamCommand;
    :catch_19
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "BarBeamFactory"

    const-string v3, "Failed loading MobeamLED implementation: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_21
    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "No implementaion found."

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .registers 5
    .param p1, "HopSequence"    # [Landroid/app/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_9

    .line 96
    :try_start_4
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p1}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_9
    .catch Landroid/app/BarBeamException; {:try_start_4 .. :try_end_9} :catch_a

    .line 102
    :cond_9
    return-void

    .line 97
    :catch_a
    move-exception v0

    .line 99
    .local v0, "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 100
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
