.class Landroid/app/ActivityThread$mRunnable;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mRunnable"
.end annotation


# instance fields
.field actname:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field filename:Ljava/io/File;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "rFile"    # Ljava/io/File;

    .prologue
    .line 2511
    iput-object p1, p0, Landroid/app/ActivityThread$mRunnable;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2512
    iput-object p2, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    .line 2513
    iput-object p3, p0, Landroid/app/ActivityThread$mRunnable;->actname:Ljava/lang/String;

    .line 2514
    iput-object p4, p0, Landroid/app/ActivityThread$mRunnable;->filename:Ljava/io/File;

    .line 2515
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2517
    iget-object v0, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/ActivityThread$mRunnable;->actname:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/ActivityThread$mRunnable;->filename:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->startRC(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 2518
    return-void
.end method
