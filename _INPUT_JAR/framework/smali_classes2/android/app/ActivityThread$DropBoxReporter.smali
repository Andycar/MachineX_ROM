.class Landroid/app/ActivityThread$DropBoxReporter;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Llibcore/io/DropBox$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropBoxReporter"
.end annotation


# instance fields
.field private dropBox:Landroid/os/DropBoxManager;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;)V
    .registers 4

    .prologue
    .line 5773
    iput-object p1, p0, Landroid/app/ActivityThread$DropBoxReporter;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5774
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    .line 5775
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    .prologue
    .line 5779
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 5780
    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 5784
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 5785
    return-void
.end method
