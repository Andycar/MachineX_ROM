.class Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterDetails"
.end annotation


# instance fields
.field mCategory:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mStatus:Z

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/epm/overlay/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/epm/overlay/OverlayManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "status"    # Z

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    .line 315
    iput-object p3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    .line 316
    iput-object p4, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    .line 317
    iput-boolean p5, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mStatus:Z

    .line 318
    return-void
.end method
