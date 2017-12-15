.class public final Landroid/telecom/PhoneCapabilities;
.super Ljava/lang/Object;
.source "PhoneCapabilities.java"


# static fields
.field public static final ADD_CALL:I = 0x10

.field public static final ALL:I = 0xff0ff

.field public static final CALL_TRANSFER:I = 0x40000

.field public static final CONTROL_WAITINGCALL:I = 0x20000

.field public static final DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final GROUP_CALL:I = 0x8000

.field public static final HOLD:I = 0x1

.field public static final MANAGE_CONFERENCE:I = 0x80

.field public static final MERGE_CONFERENCE:I = 0x4

.field public static final MUTE:I = 0x40

.field public static final RESPOND_VIA_TEXT:I = 0x20

.field public static final ROAMING_AREA:I = 0x4000

.field public static final SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final SESSION_MODIFY:I = 0x10000

.field public static final SUPPORTS_VT_LOCAL:I = 0x100

.field public static final SUPPORTS_VT_REMOTE:I = 0x200

.field public static final SUPPORT_HOLD:I = 0x2

.field public static final SWAP_CONFERENCE:I = 0x8

.field public static final VOICE_PRIVACY:I = 0x80000

.field public static final VoLTE:I = 0x400

.field public static final VoWIFI:I = 0x800


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "capabilities"    # I

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_13

    .line 144
    const-string v1, " HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_13
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1c

    .line 147
    const-string v1, " SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1c
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_25

    .line 150
    const-string v1, " MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_25
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2e

    .line 153
    const-string v1, " SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_2e
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_37

    .line 156
    const-string v1, " ADD_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_37
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_40

    .line 159
    const-string v1, " RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_40
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_49

    .line 162
    const-string v1, " MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_49
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_52

    .line 165
    const-string v1, " MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_52
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5b

    .line 168
    const-string v1, " SUPPORTS_VT_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_5b
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_64

    .line 171
    const-string v1, " SUPPORTS_VT_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_64
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_6d

    .line 174
    const-string v1, " VoLTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_6d
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_76

    .line 177
    const-string v1, " VoWIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_76
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_7f

    .line 181
    const-string v1, " ROAMING_AREA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_7f
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8a

    .line 184
    const-string v1, " GROUP_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_8a
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_94

    .line 187
    const-string v1, " SESSION_MODIFY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_94
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_9e

    .line 190
    const-string v1, " CONTROL_WAITINGCALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_9e
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a8

    .line 193
    const-string v1, " CALL_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_a8
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b2

    .line 196
    const-string v1, " VOICE_PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_b2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
