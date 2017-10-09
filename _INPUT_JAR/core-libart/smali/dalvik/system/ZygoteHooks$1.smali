.class Ldalvik/system/ZygoteHooks$1;
.super Ljava/lang/Object;
.source "ZygoteHooks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldalvik/system/ZygoteHooks;->postForkCommonInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldalvik/system/ZygoteHooks;


# direct methods
.method constructor <init>(Ldalvik/system/ZygoteHooks;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Ldalvik/system/ZygoteHooks$1;->this$0:Ldalvik/system/ZygoteHooks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/Daemons;->start()V

    .line 71
    return-void
.end method
