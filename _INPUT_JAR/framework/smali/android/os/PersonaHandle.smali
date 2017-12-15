.class public final Landroid/os/PersonaHandle;
.super Ljava/lang/Object;
.source "PersonaHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL:Landroid/os/PersonaHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PersonaHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Landroid/os/PersonaHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/PersonaHandle;

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Landroid/os/PersonaHandle;

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->ALL:Landroid/os/PersonaHandle;

    .line 38
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->CURRENT:Landroid/os/PersonaHandle;

    .line 48
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->CURRENT_OR_SELF:Landroid/os/PersonaHandle;

    .line 57
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->OWNER:Landroid/os/PersonaHandle;

    .line 244
    new-instance v0, Landroid/os/PersonaHandle$1;

    invoke-direct {v0}, Landroid/os/PersonaHandle$1;-><init>()V

    sput-object v0, Landroid/os/PersonaHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "h"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Landroid/os/PersonaHandle;->mHandle:I

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    .line 268
    return-void
.end method

.method public static final getAppId(I)I
    .registers 2
    .param p0, "uid"    # I

    .prologue
    .line 142
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static final getCallingPersonaId()I
    .registers 1

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    return v0
.end method

.method public static final getPersonaId(I)I
    .registers 2
    .param p0, "uid"    # I

    .prologue
    .line 114
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static final getSharedAppGid(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 150
    const v0, 0xc350

    const v1, 0x186a0

    rem-int v1, p0, v1

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, -0x2710

    return v0
.end method

.method public static final getUid(II)I
    .registers 4
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .prologue
    const v1, 0x186a0

    .line 131
    mul-int v0, p0, v1

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static isApp(I)Z
    .registers 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    if-lez p0, :cond_10

    .line 101
    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    .line 102
    .local v0, "appId":I
    const/16 v2, 0x2710

    if-lt v0, v2, :cond_10

    const/16 v2, 0x4e1f

    if-gt v0, v2, :cond_10

    const/4 v1, 0x1

    .line 104
    .end local v0    # "appId":I
    :cond_10
    return v1
.end method

.method public static final isIsolated(I)Z
    .registers 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    if-lez p0, :cond_12

    .line 91
    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    .line 92
    .local v0, "appId":I
    const v2, 0x182b8

    if-lt v0, v2, :cond_12

    const v2, 0x1869f

    if-gt v0, v2, :cond_12

    const/4 v1, 0x1

    .line 94
    .end local v0    # "appId":I
    :cond_12
    return v1
.end method

.method public static final isSame(II)Z
    .registers 4
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 73
    invoke-static {p0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final isSameApp(II)Z
    .registers 4
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 85
    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final myPersonaId()I
    .registers 1

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    return v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/PersonaHandle;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .local v0, "h":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_e

    new-instance v1, Landroid/os/PersonaHandle;

    invoke-direct {v1, v0}, Landroid/os/PersonaHandle;-><init>(I)V

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static writeToParcel(Landroid/os/PersonaHandle;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "h"    # Landroid/os/PersonaHandle;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 219
    if-eqz p0, :cond_7

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/PersonaHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 224
    :goto_6
    return-void

    .line 222
    :cond_7
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 183
    if-eqz p1, :cond_e

    .line 184
    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/os/PersonaHandle;

    move-object v1, v0

    .line 185
    .local v1, "other":Landroid/os/PersonaHandle;
    iget v3, p0, Landroid/os/PersonaHandle;->mHandle:I

    iget v4, v1, Landroid/os/PersonaHandle;->mHandle:I
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_f

    if-ne v3, v4, :cond_e

    const/4 v2, 0x1

    .line 189
    .end local v1    # "other":Landroid/os/PersonaHandle;
    :cond_e
    :goto_e
    return v2

    .line 187
    :catch_f
    move-exception v3

    goto :goto_e
.end method

.method public getIdentifier()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PersonaHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 205
    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return-void
.end method
