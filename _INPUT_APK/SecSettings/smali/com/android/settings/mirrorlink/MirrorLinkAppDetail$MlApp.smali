.class Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
.super Ljava/lang/Object;
.source "MirrorLinkAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MlApp"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mEntityName:Ljava/lang/String;

.field public mNonRestricted:Ljava/lang/String;

.field public mRestricted:Ljava/lang/String;

.field public mStatus:Ljava/lang/String;

.field public mValidDate:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method public constructor <init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Ljava/lang/String;)V
    .locals 0
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    .line 104
    return-void
.end method
