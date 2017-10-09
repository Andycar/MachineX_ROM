.class public Lcom/android/server/enterprise/storage/Column;
.super Ljava/lang/Object;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    }
.end annotation


# instance fields
.field public mColumnName:Ljava/lang/String;

.field public mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public mDefaultValue:Ljava/lang/String;

.field public mIsPrimaryKey:Z

.field public mProperties:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "colName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .param p3, "isKey"    # Z
    .param p4, "props"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 52
    iput-boolean p3, p0, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    .line 53
    iput-object p4, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getSQLDeclaration()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 61
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_29
    iget-object v1, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 65
    const-string v1, "%s DEFAULT %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_3b
    return-object v0
.end method
