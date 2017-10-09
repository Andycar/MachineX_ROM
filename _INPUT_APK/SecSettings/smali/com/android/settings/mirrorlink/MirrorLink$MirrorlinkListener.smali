.class Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
.super Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorlinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLink;


# direct methods
.method private constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p2, "x1"    # Lcom/android/settings/mirrorlink/MirrorLink$1;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    return-void
.end method


# virtual methods
.method public notifyRevocationCheckResult(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    .line 181
    const-string v0, "MirrorLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorlinkListener: notifyRevocationCheckResult(): result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-nez p2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 187
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method
