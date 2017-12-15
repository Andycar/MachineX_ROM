.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Landroid/os/UserHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Landroid/os/UserHandle;

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field private static final userHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 53
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 63
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 78
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->userHandles:Landroid/util/SparseArray;

    .line 349
    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "h"    # I

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    .line 372
    return-void
.end method

.method public static formatUid(Ljava/io/PrintWriter;I)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I

    .prologue
    const v3, 0x182b8

    const/16 v2, 0x2710

    .line 232
    if-ge p1, v2, :cond_b

    .line 233
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 249
    :goto_a
    return-void

    .line 235
    :cond_b
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 236
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 237
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 238
    .local v0, "appId":I
    if-lt v0, v3, :cond_2d

    const v1, 0x1869f

    if-gt v0, v1, :cond_2d

    .line 239
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 240
    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_a

    .line 241
    :cond_2d
    if-lt v0, v2, :cond_3a

    .line 242
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 243
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_a

    .line 245
    :cond_3a
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 246
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_a
.end method

.method public static formatUid(Ljava/lang/StringBuilder;I)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "uid"    # I

    .prologue
    const v3, 0x182b8

    const/16 v2, 0x2710

    .line 207
    if-ge p1, v2, :cond_b

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    :goto_a
    return-void

    .line 210
    :cond_b
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 213
    .local v0, "appId":I
    if-lt v0, v3, :cond_2d

    const v1, 0x1869f

    if-gt v0, v1, :cond_2d

    .line 214
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 216
    :cond_2d
    if-lt v0, v2, :cond_3a

    .line 217
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 220
    :cond_3a
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public static final getAppId(I)I
    .registers 2
    .param p0, "uid"    # I

    .prologue
    .line 181
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .registers 3

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 155
    .local v1, "userId":I
    sget-object v2, Landroid/os/UserHandle;->userHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 157
    .local v0, "userHandle":Landroid/os/UserHandle;
    if-nez v0, :cond_1c

    .line 158
    new-instance v0, Landroid/os/UserHandle;

    .end local v0    # "userHandle":Landroid/os/UserHandle;
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 159
    .restart local v0    # "userHandle":Landroid/os/UserHandle;
    sget-object v2, Landroid/os/UserHandle;->userHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    :cond_1c
    return-object v0
.end method

.method public static final getCallingUserId()I
    .registers 1

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static final getSharedAppGid(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 197
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

    .line 170
    mul-int v0, p0, v1

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getUserGid(I)I
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 189
    const/16 v0, 0x270d

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public static final getUserId(I)I
    .registers 2
    .param p0, "uid"    # I

    .prologue
    .line 138
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static isApp(I)Z
    .registers 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    if-lez p0, :cond_10

    .line 124
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 125
    .local v0, "appId":I
    const/16 v2, 0x2710

    if-lt v0, v2, :cond_10

    const/16 v2, 0x4e1f

    if-gt v0, v2, :cond_10

    const/4 v1, 0x1

    .line 127
    .end local v0    # "appId":I
    :cond_10
    return v1
.end method

.method public static final isIsolated(I)Z
    .registers 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 113
    if-lez p0, :cond_12

    .line 114
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 115
    .local v0, "appId":I
    const v2, 0x182b8

    if-lt v0, v2, :cond_12

    const v2, 0x1869f

    if-gt v0, v2, :cond_12

    const/4 v1, 0x1

    .line 117
    .end local v0    # "appId":I
    :cond_12
    return v1
.end method

.method public static final isSameApp(II)Z
    .registers 4
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 108
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final isSameUser(II)Z
    .registers 4
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 96
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final myUserId()I
    .registers 1

    .prologue
    .line 259
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    .local v0, "h":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_e

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "h"    # Landroid/os/UserHandle;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 326
    if-eqz p0, :cond_7

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    :goto_6
    return-void

    .line 329
    :cond_7
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 294
    if-eqz p1, :cond_e

    .line 295
    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/os/UserHandle;

    move-object v1, v0

    .line 296
    .local v1, "other":Landroid/os/UserHandle;
    iget v3, p0, Landroid/os/UserHandle;->mHandle:I

    iget v4, v1, Landroid/os/UserHandle;->mHandle:I
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_f

    if-ne v3, v4, :cond_e

    const/4 v2, 0x1

    .line 300
    .end local v1    # "other":Landroid/os/UserHandle;
    :cond_e
    :goto_e
    return v2

    .line 298
    :catch_f
    move-exception v3

    goto :goto_e
.end method

.method public getIdentifier()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public final isOwner()Z
    .registers 2

    .prologue
    .line 269
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

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
    .line 313
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    return-void
.end method
