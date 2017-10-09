.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$2;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 3045
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->resetToMetadata()V

    .line 3048
    return-void
.end method
