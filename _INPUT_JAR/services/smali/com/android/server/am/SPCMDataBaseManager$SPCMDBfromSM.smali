.class public Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
.super Ljava/lang/Object;
.source "SPCMDataBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SPCMDataBaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SPCMDBfromSM"
.end annotation


# instance fields
.field public AppFreezeScore:I

.field public bNeedUpdateResetTime:Z

.field public strExtras:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/SPCMDataBaseManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SPCMDataBaseManager;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->this$0:Lcom/android/server/am/SPCMDataBaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
