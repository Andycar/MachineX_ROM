.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "x3"    # I

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 558
    const-string v0, "CREATE TABLE log (_id INTEGER PRIMARY KEY AUTOINCREMENT,event_user_id INT,event_type INT,event_time_ms INT,key TEXT,pkg TEXT,nid INT,tag TEXT,when_ms INT,defaults INT,flags INT,priority INT,category TEXT,action_count INT,posttime_ms INT,airtime_ms INT,first_expansion_time_ms INT,expansion_airtime_ms INT,expansion_count INT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 583
    const/4 v0, 0x3

    if-gt p2, v0, :cond_b

    .line 585
    const-string v0, "DROP TABLE IF EXISTS log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 588
    :cond_b
    return-void
.end method
