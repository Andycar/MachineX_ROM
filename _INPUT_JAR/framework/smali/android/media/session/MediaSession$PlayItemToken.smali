.class Landroid/media/session/MediaSession$PlayItemToken;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayItemToken"
.end annotation


# instance fields
.field private mScope:I

.field private mUid:J

.field final synthetic this$0:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;JI)V
    .registers 5
    .param p2, "uid"    # J
    .param p4, "scope"    # I

    .prologue
    .line 600
    iput-object p1, p0, Landroid/media/session/MediaSession$PlayItemToken;->this$0:Landroid/media/session/MediaSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-wide p2, p0, Landroid/media/session/MediaSession$PlayItemToken;->mUid:J

    .line 602
    iput p4, p0, Landroid/media/session/MediaSession$PlayItemToken;->mScope:I

    .line 603
    return-void
.end method


# virtual methods
.method public getScope()I
    .registers 2

    .prologue
    .line 605
    iget v0, p0, Landroid/media/session/MediaSession$PlayItemToken;->mScope:I

    return v0
.end method

.method public getUid()J
    .registers 3

    .prologue
    .line 608
    iget-wide v0, p0, Landroid/media/session/MediaSession$PlayItemToken;->mUid:J

    return-wide v0
.end method
