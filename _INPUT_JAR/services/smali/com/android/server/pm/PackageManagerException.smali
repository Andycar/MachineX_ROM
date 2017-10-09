.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageManagerException.java"


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 41
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 43
    invoke-static {p3, p1, p2}, Lcom/android/server/pm/PackageManagerException;->setLastScanError(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 48
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 50
    invoke-static {p4, p1, p2}, Lcom/android/server/pm/PackageManagerException;->setLastScanError(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method public static from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;
    .registers 5
    .param p0, "e"    # Landroid/content/pm/PackageParser$PackageParserException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    iget v1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static setLastScanError(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)V
    .registers 3
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "error"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p0, :cond_6

    .line 56
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mLastScanError:I

    .line 57
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mLastScanErrorMessage:Ljava/lang/String;

    .line 59
    :cond_6
    return-void
.end method
