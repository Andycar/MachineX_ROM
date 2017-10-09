.class public Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;
.super Ljava/lang/Object;
.source "SViewCoverMiniView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverRemoteViews"
.end annotation


# instance fields
.field public final remoteViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

.field public final type:Ljava/lang/String;

.field public final visibility:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;Ljava/lang/String;ZLandroid/widget/RemoteViews;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "visibility"    # Z
    .param p4, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;->type:Ljava/lang/String;

    .line 167
    iput-boolean p3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;->visibility:Z

    .line 168
    iput-object p4, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;->remoteViews:Landroid/widget/RemoteViews;

    .line 169
    return-void
.end method
