.class Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$BackupPINPolicy;
.super Ljava/lang/Object;
.source "KnoxChooseLockBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackupPINPolicy"
.end annotation


# direct methods
.method public static checkPolicy(Ljava/lang/String;)I
    .locals 2
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 331
    const/4 v0, 0x2

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    .line 333
    const/4 v0, 0x3

    goto :goto_0

    .line 335
    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method
