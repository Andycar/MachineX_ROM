.class Lcom/android/server/pm/Installer$AsyncDexopt;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Lcom/android/server/pm/Installer$AsyncCmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncDexopt"
.end annotation


# instance fields
.field private dexCodeInstructionSet:Ljava/lang/String;

.field private pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .registers 4
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "instSet"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 131
    iput-object p3, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->dexCodeInstructionSet:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public processResult([Ljava/lang/String;)V
    .registers 9
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 136
    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6d

    .line 137
    aget-object v2, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 139
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-ltz v1, :cond_52

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    if-eq v2, v5, :cond_52

    if-eqz v0, :cond_52

    .line 141
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "async dexopt success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    .line 143
    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    if-eqz v2, :cond_4f

    .line 144
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    .line 148
    :goto_45
    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->dexCodeInstructionSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v1    # "ret":I
    :goto_4e
    return-void

    .line 146
    .restart local v1    # "ret":I
    :cond_4f
    iput v6, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    goto :goto_45

    .line 150
    :cond_52
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "async dexopt failed already or just now : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput v5, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    goto :goto_4e

    .line 154
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "ret":I
    :cond_6d
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncDexopt length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 156
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    iput v5, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    goto :goto_4e
.end method
