.class public final Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppliedPolicies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPoliciesApplied()Z
    .registers 5

    .prologue
    .line 366
    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v0, "policy":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v1, "policy2":Ljava/io/File;
    const/4 v2, 0x0

    .line 370
    .local v2, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_1f
    const/4 v2, 0x1

    .line 372
    :goto_20
    return v2

    .line 370
    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static setPoliciesApplied()Z
    .registers 6

    .prologue
    .line 334
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v1, "policy":Ljava/io/File;
    const/4 v2, 0x1

    .line 337
    .local v2, "result":Z
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 338
    const/4 v2, 0x1

    :goto_11
    move v3, v2

    .line 346
    :goto_12
    return v3

    .line 340
    :cond_13
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 341
    const/16 v3, 0x1a4

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1e} :catch_1f

    goto :goto_11

    .line 343
    :catch_1f
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static setPoliciesRemoved()Z
    .registers 5

    .prologue
    .line 350
    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .local v0, "policy":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .local v1, "policy2":Ljava/io/File;
    const/4 v2, 0x1

    .line 354
    .local v2, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 358
    :cond_1d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 362
    :cond_27
    return v2
.end method
