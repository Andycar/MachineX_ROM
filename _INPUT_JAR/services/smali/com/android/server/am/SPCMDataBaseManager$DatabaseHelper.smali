.class Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SPCMDataBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SPCMDataBaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SPCMDataBaseManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SPCMDataBaseManager;Landroid/content/Context;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;->this$0:Lcom/android/server/am/SPCMDataBaseManager;

    .line 295
    const-string/jumbo v0, "sm.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 296
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 300
    const-string v0, " CREATE TABLE AppFreezer (id INTEGER PRIMARY KEY AUTOINCREMENT,  package_name TEXT NOT NULL,  isDefaultFreezed INTEGER,  isSMFreezed INTEGER,  isUserForceStopped INTEGER,  lastUsedTime INTEGER,  versionMgmt TEXT,  extras TEXT,  resetTime TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 305
    const-string v0, "DROP TABLE IF EXISTS AppFreezer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 307
    return-void
.end method
