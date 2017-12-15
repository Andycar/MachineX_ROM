.class public Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextWakeUpVoiceAttribute.java"


# static fields
.field static MODE_REFERENCE_DATA:I = 0x0

.field static MODE_REGISTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextWakeUpVoiceAttribute"


# instance fields
.field private mGramData:[B

.field private mMode:I

.field private mNetData:[B

.field private mVoiceMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REFERENCE_DATA:I

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 37
    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 39
    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 45
    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 46
    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    .line 47
    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 37
    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 39
    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 63
    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 64
    iput p1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 65
    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    .line 66
    return-void
.end method

.method public constructor <init>([B[B)V
    .registers 5
    .param p1, "netData"    # [B
    .param p2, "gramData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 37
    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 39
    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 82
    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REFERENCE_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    .line 83
    iput-object p1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    .line 84
    iput-object p2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    .line 85
    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    .line 86
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    iget v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    if-ne v1, v2, :cond_21

    .line 114
    const-string/jumbo v1, "voice_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    :goto_1b
    const/16 v1, 0x10

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 120
    return-void

    .line 116
    :cond_21
    const-string/jumbo v1, "net_data"

    iget-object v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 117
    const-string v1, "gram_data"

    iget-object v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1b
.end method


# virtual methods
.method checkAttribute()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    iget v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    sget v3, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    if-ne v2, v3, :cond_14

    .line 92
    iget v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    if-eq v2, v1, :cond_12

    iget v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    .line 106
    :goto_11
    return v0

    :cond_12
    move v0, v1

    .line 96
    goto :goto_11

    .line 98
    :cond_14
    iget-object v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    if-nez v2, :cond_20

    .line 99
    const-string v1, "SContextWakeUpVoiceAttribute"

    const-string v2, "The net data is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 102
    :cond_20
    iget-object v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    if-nez v2, :cond_2c

    .line 103
    const-string v1, "SContextWakeUpVoiceAttribute"

    const-string v2, "The gram data is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_2c
    move v0, v1

    .line 106
    goto :goto_11
.end method
